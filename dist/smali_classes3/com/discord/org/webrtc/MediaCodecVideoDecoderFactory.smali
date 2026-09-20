.class Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoderFactory.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoderFactory"


# instance fields
.field private final codecAllowedPredicate:Lcom/discord/org/webrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedContext:Lcom/discord/org/webrtc/EglBase$Context;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/EglBase$Context;",
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    .line 43
    iput-object p2, p0, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->codecAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    return-void
.end method

.method private findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 5

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/discord/org/webrtc/VideoCodecMimeType;->H265:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne p1, v0, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 96
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "MediaCodecVideoDecoderFactory"

    const-string v4, "Cannot retrieve decoder codec info"

    .line 98
    invoke-static {v3, v4, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 105
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private isCodecAllowed(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->codecAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "OMX.Exynos."

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z
    .locals 2

    .line 115
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 119
    :cond_0
    sget-object v0, Lcom/discord/org/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 120
    invoke-virtual {p2}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p2

    .line 119
    invoke-static {v0, p2}, Lcom/discord/org/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->isCodecAllowed(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
    .locals 7

    .line 49
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/discord/org/webrtc/VideoCodecMimeType;->valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/VideoCodecMimeType;

    move-result-object v3

    .line 50
    invoke-direct {p0, v3}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {v3}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 57
    new-instance v6, Lcom/discord/org/webrtc/AndroidVideoDecoder;

    new-instance v1, Lcom/discord/org/webrtc/MediaCodecWrapperFactoryImpl;

    invoke-direct {v1}, Lcom/discord/org/webrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Lcom/discord/org/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 58
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/discord/org/webrtc/AndroidVideoDecoder;-><init>(Lcom/discord/org/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lcom/discord/org/webrtc/VideoCodecMimeType;ILcom/discord/org/webrtc/EglBase$Context;)V

    return-object v6
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 10

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/discord/org/webrtc/VideoCodecMimeType;

    .line 68
    sget-object v3, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP8:Lcom/discord/org/webrtc/VideoCodecMimeType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP9:Lcom/discord/org/webrtc/VideoCodecMimeType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v6, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    sget-object v6, Lcom/discord/org/webrtc/VideoCodecMimeType;->AV1:Lcom/discord/org/webrtc/VideoCodecMimeType;

    aput-object v6, v2, v3

    const/4 v3, 0x4

    sget-object v6, Lcom/discord/org/webrtc/VideoCodecMimeType;->H265:Lcom/discord/org/webrtc/VideoCodecMimeType;

    aput-object v6, v2, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, v2, v3

    .line 70
    invoke-direct {p0, v6}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 72
    invoke-virtual {v6}, Lcom/discord/org/webrtc/VideoCodecMimeType;->name()Ljava/lang/String;

    move-result-object v8

    .line 73
    sget-object v9, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v6, v9, :cond_0

    invoke-direct {p0, v7}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    new-instance v7, Lcom/discord/org/webrtc/VideoCodecInfo;

    .line 75
    invoke-static {v6, v5}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/discord/org/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    new-instance v7, Lcom/discord/org/webrtc/VideoCodecInfo;

    .line 79
    invoke-static {v6, v4}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/discord/org/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
