.class public Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;
.super Ljava/lang/Object;
.source "DefaultVideoEncoderFactory.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoderFactory;


# instance fields
.field private final hardwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

.field private final softwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;ZZ)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    .line 25
    new-instance v0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;ZZ)V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    return-void
.end method

.method constructor <init>(Lcom/discord/org/webrtc/VideoEncoderFactory;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    .line 31
    iput-object p1, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    return-void
.end method


# virtual methods
.method public createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/VideoEncoderFactory;->createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    invoke-interface {v1, p1}, Lcom/discord/org/webrtc/VideoEncoderFactory;->createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/discord/org/webrtc/VideoEncoderFallback;

    invoke-direct {v1, v0, p1}, Lcom/discord/org/webrtc/VideoEncoderFallback;-><init>(Lcom/discord/org/webrtc/VideoEncoder;Lcom/discord/org/webrtc/VideoEncoder;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 2

    .line 49
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoEncoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoEncoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
