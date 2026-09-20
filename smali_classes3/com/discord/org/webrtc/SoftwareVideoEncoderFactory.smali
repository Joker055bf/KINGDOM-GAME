.class public Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SoftwareVideoEncoderFactory.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareVideoEncoderFactory"


# instance fields
.field private final nativeFactory:J


# direct methods
.method static bridge synthetic -$$Nest$fgetnativeFactory(Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;)J
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeFactory:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreate(JJLcom/discord/org/webrtc/VideoCodecInfo;)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeCreate(JJLcom/discord/org/webrtc/VideoCodecInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeCreateFactory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeFactory:J

    return-void
.end method

.method private static native nativeCreate(JJLcom/discord/org/webrtc/VideoCodecInfo;)J
.end method

.method private static native nativeCreateFactory()J
.end method

.method private static native nativeGetSupportedCodecs(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/VideoCodecInfo;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeIsSupported(JLcom/discord/org/webrtc/VideoCodecInfo;)Z
.end method


# virtual methods
.method public createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeFactory:J

    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeIsSupported(JLcom/discord/org/webrtc/VideoCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to create encoder for unsupported format. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoftwareVideoEncoderFactory"

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;-><init>(Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;Lcom/discord/org/webrtc/VideoCodecInfo;)V

    return-object v0
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->nativeGetSupportedCodecs(J)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
