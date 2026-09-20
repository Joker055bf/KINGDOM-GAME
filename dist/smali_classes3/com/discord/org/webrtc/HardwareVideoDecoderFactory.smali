.class public Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;
.super Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;
.source "HardwareVideoDecoderFactory.java"


# static fields
.field private static final defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory$1;

    invoke-direct {v0}, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/EglBase$Context;",
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 54
    sget-object p2, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    invoke-interface {p2, v0}, Lcom/discord/org/webrtc/Predicate;->and(Lcom/discord/org/webrtc/Predicate;)Lcom/discord/org/webrtc/Predicate;

    move-result-object p2

    .line 53
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/Predicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 1

    .line 18
    invoke-super {p0}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v0

    return-object v0
.end method
