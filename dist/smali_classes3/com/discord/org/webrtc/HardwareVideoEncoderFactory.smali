.class public Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoEncoderFactory.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoderFactory;


# static fields
.field private static final PERIODIC_KEY_FRAME_INTERVAL_S:I = 0xe10

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"


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

.field private final enableH264HighProfile:Z

.field private final enableIntelVp8Encoder:Z

.field private final sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;ZZLcom/discord/org/webrtc/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;ZZLcom/discord/org/webrtc/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/EglBase$Context;",
            "ZZ",
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    instance-of v0, p1, Lcom/discord/org/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/discord/org/webrtc/EglBase14$Context;

    iput-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    goto :goto_0

    :cond_0
    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "No shared EglBase.Context.  Encoders will not use texture mode."

    .line 85
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    .line 88
    :goto_0
    iput-boolean p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 89
    iput-boolean p3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 90
    iput-object p4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1, p2}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;ZZ)V

    return-void
.end method

.method private createBitrateAdjuster(Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/String;)Lcom/discord/org/webrtc/BitrateAdjuster;
    .locals 1

    const-string v0, "OMX.Exynos."

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 277
    sget-object p2, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP8:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne p1, p2, :cond_0

    .line 279
    new-instance p1, Lcom/discord/org/webrtc/DynamicBitrateAdjuster;

    invoke-direct {p1}, Lcom/discord/org/webrtc/DynamicBitrateAdjuster;-><init>()V

    return-object p1

    .line 282
    :cond_0
    new-instance p1, Lcom/discord/org/webrtc/FramerateBitrateAdjuster;

    invoke-direct {p1}, Lcom/discord/org/webrtc/FramerateBitrateAdjuster;-><init>()V

    return-object p1

    .line 286
    :cond_1
    new-instance p1, Lcom/discord/org/webrtc/BaseBitrateAdjuster;

    invoke-direct {p1}, Lcom/discord/org/webrtc/BaseBitrateAdjuster;-><init>()V

    return-object p1
.end method

.method private findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 5

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 174
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "HardwareVideoEncoderFactory"

    const-string v4, "Cannot retrieve encoder codec info"

    .line 176
    invoke-static {v3, v4, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getForcedKeyFrameIntervalMs(Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/String;)I
    .locals 1

    .line 262
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP8:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne p1, v0, :cond_0

    const-string p1, "OMX.qcom."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3a98

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.Exynos."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z
    .locals 2

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p1

    return p1

    .line 211
    :cond_0
    sget-object v0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecMimeType:[I

    invoke-virtual {p2}, Lcom/discord/org/webrtc/VideoCodecMimeType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 219
    :cond_1
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 217
    :cond_2
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 215
    :cond_3
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    .line 213
    :cond_4
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 244
    invoke-static {p1}, Lcom/discord/DiscordMediaCodec;->supportsHardwareEncoding(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method

.method private isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 251
    invoke-static {p1}, Lcom/discord/DiscordMediaCodec;->supportsHardwareEncoding(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos."

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OMX.Intel."

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 237
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 258
    :cond_0
    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z
    .locals 3

    .line 192
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 196
    :cond_0
    sget-object v0, Lcom/discord/org/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 197
    invoke-virtual {p2}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 196
    invoke-static {v0, v2}, Lcom/discord/org/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lcom/discord/org/webrtc/VideoCodecMimeType;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;
    .locals 12

    .line 101
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/org/webrtc/VideoCodecMimeType;->valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/VideoCodecMimeType;

    move-result-object v4

    .line 102
    invoke-direct {p0, v4}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v4}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v2

    .line 110
    sget-object v5, Lcom/discord/org/webrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    .line 111
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    .line 110
    invoke-static {v5, v6}, Lcom/discord/org/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v5

    .line 112
    sget-object v6, Lcom/discord/org/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 113
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 112
    invoke-static {v6, v2}, Lcom/discord/org/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v6

    .line 115
    sget-object v2, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v4, v2, :cond_2

    .line 116
    iget-object v2, p1, Lcom/discord/org/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/4 v7, 0x1

    .line 117
    invoke-static {v4, v7}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v7

    .line 116
    invoke-static {v2, v7}, Lcom/discord/org/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2

    .line 118
    iget-object v7, p1, Lcom/discord/org/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/4 v8, 0x0

    .line 119
    invoke-static {v4, v8}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v8

    .line 118
    invoke-static {v7, v8}, Lcom/discord/org/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v7

    if-nez v2, :cond_1

    if-nez v7, :cond_1

    return-object v1

    :cond_1
    if-eqz v2, :cond_2

    .line 124
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 129
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/String;)I

    move-result v0

    .line 130
    iget-object v1, p1, Lcom/discord/org/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const-string v2, "discord-fki"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    :try_start_0
    iget-object v1, p1, Lcom/discord/org/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    move v9, v0

    .line 138
    new-instance v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;

    new-instance v2, Lcom/discord/org/webrtc/MediaCodecWrapperFactoryImpl;

    invoke-direct {v2}, Lcom/discord/org/webrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    iget-object v7, p1, Lcom/discord/org/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/16 v8, 0xe10

    .line 140
    invoke-direct {p0, v4, v3}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->createBitrateAdjuster(Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/String;)Lcom/discord/org/webrtc/BitrateAdjuster;

    move-result-object v10

    iget-object v11, p0, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/discord/org/webrtc/HardwareVideoEncoder;-><init>(Lcom/discord/org/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILcom/discord/org/webrtc/BitrateAdjuster;Lcom/discord/org/webrtc/EglBase14$Context;)V

    return-object v0
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 10

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/discord/org/webrtc/VideoCodecMimeType;

    .line 150
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

    .line 152
    invoke-direct {p0, v6}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lcom/discord/org/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 154
    invoke-virtual {v6}, Lcom/discord/org/webrtc/VideoCodecMimeType;->name()Ljava/lang/String;

    move-result-object v8

    .line 157
    sget-object v9, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v6, v9, :cond_0

    invoke-direct {p0, v7}, Lcom/discord/org/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    new-instance v7, Lcom/discord/org/webrtc/VideoCodecInfo;

    .line 159
    invoke-static {v6, v5}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/discord/org/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    new-instance v7, Lcom/discord/org/webrtc/VideoCodecInfo;

    .line 163
    invoke-static {v6, v4}, Lcom/discord/org/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/discord/org/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/discord/org/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
