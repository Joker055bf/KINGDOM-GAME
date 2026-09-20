.class public Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;
.super Ljava/lang/Object;
.source "DefaultVideoDecoderFactory.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoDecoderFactory;


# instance fields
.field private final hardwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

.field private final platformSoftwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

.field private final softwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    .line 29
    new-instance v0, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/HardwareVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    .line 30
    new-instance v0, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    return-void
.end method

.method constructor <init>(Lcom/discord/org/webrtc/VideoDecoderFactory;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    .line 37
    iput-object p1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    invoke-interface {v1, p1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;

    move-result-object v1

    if-nez v0, :cond_0

    .line 45
    iget-object v2, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v2, p1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 50
    new-instance p1, Lcom/discord/org/webrtc/VideoDecoderFallback;

    invoke-direct {p1, v0, v1}, Lcom/discord/org/webrtc/VideoDecoderFallback;-><init>(Lcom/discord/org/webrtc/VideoDecoder;Lcom/discord/org/webrtc/VideoDecoder;)V

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 2

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v1, p0, Lcom/discord/org/webrtc/DefaultVideoDecoderFactory;->platformSoftwareVideoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoDecoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
