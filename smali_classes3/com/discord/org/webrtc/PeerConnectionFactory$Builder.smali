.class public Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioDecoderFactoryFactory:Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;

.field private audioDeviceModule:Lcom/discord/org/webrtc/audio/AudioDeviceModule;

.field private audioEncoderFactoryFactory:Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;

.field private audioProcessingFactory:Lcom/discord/org/webrtc/AudioProcessingFactory;

.field private fecControllerFactoryFactory:Lcom/discord/org/webrtc/FecControllerFactoryFactoryInterface;

.field private neteqFactoryFactory:Lcom/discord/org/webrtc/NetEqFactoryFactory;

.field private networkControllerFactoryFactory:Lcom/discord/org/webrtc/NetworkControllerFactoryFactory;

.field private networkStatePredictorFactoryFactory:Lcom/discord/org/webrtc/NetworkStatePredictorFactoryFactory;

.field private options:Lcom/discord/org/webrtc/PeerConnectionFactory$Options;

.field private videoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

.field private videoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/discord/org/webrtc/BuiltinAudioEncoderFactoryFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/BuiltinAudioEncoderFactoryFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioEncoderFactoryFactory:Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;

    .line 172
    new-instance v0, Lcom/discord/org/webrtc/BuiltinAudioDecoderFactoryFactory;

    invoke-direct {v0}, Lcom/discord/org/webrtc/BuiltinAudioDecoderFactoryFactory;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDecoderFactoryFactory:Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/PeerConnectionFactory$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public createPeerConnectionFactory()Lcom/discord/org/webrtc/PeerConnectionFactory;
    .locals 24

    move-object/from16 v0, p0

    .line 263
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->-$$Nest$smcheckInitializeHasBeenCalled()V

    .line 264
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDeviceModule:Lcom/discord/org/webrtc/audio/AudioDeviceModule;

    if-nez v1, :cond_0

    .line 265
    invoke-static {}, Lcom/discord/org/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->builder(Landroid/content/Context;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->createAudioDeviceModule()Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;

    move-result-object v1

    iput-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDeviceModule:Lcom/discord/org/webrtc/audio/AudioDeviceModule;

    .line 268
    :cond_0
    invoke-static {}, Lcom/discord/org/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->options:Lcom/discord/org/webrtc/PeerConnectionFactory$Options;

    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDeviceModule:Lcom/discord/org/webrtc/audio/AudioDeviceModule;

    .line 269
    invoke-interface {v1}, Lcom/discord/org/webrtc/audio/AudioDeviceModule;->getNativeAudioDeviceModulePointer()J

    move-result-wide v4

    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioEncoderFactoryFactory:Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;

    .line 270
    invoke-interface {v1}, Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;->createNativeAudioEncoderFactory()J

    move-result-wide v6

    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDecoderFactoryFactory:Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;

    .line 271
    invoke-interface {v1}, Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;->createNativeAudioDecoderFactory()J

    move-result-wide v8

    iget-object v10, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->videoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    iget-object v11, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->videoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    .line 273
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioProcessingFactory:Lcom/discord/org/webrtc/AudioProcessingFactory;

    const-wide/16 v12, 0x0

    if-nez v1, :cond_1

    move-wide v14, v12

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/discord/org/webrtc/AudioProcessingFactory;->createNative()J

    move-result-wide v14

    .line 274
    :goto_0
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->fecControllerFactoryFactory:Lcom/discord/org/webrtc/FecControllerFactoryFactoryInterface;

    if-nez v1, :cond_2

    move-wide/from16 v16, v12

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/discord/org/webrtc/FecControllerFactoryFactoryInterface;->createNative()J

    move-result-wide v16

    .line 275
    :goto_1
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->networkControllerFactoryFactory:Lcom/discord/org/webrtc/NetworkControllerFactoryFactory;

    if-nez v1, :cond_3

    move-wide/from16 v18, v12

    goto :goto_2

    .line 277
    :cond_3
    invoke-interface {v1}, Lcom/discord/org/webrtc/NetworkControllerFactoryFactory;->createNativeNetworkControllerFactory()J

    move-result-wide v18

    .line 278
    :goto_2
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->networkStatePredictorFactoryFactory:Lcom/discord/org/webrtc/NetworkStatePredictorFactoryFactory;

    if-nez v1, :cond_4

    move-wide/from16 v20, v12

    goto :goto_3

    .line 280
    :cond_4
    invoke-interface {v1}, Lcom/discord/org/webrtc/NetworkStatePredictorFactoryFactory;->createNativeNetworkStatePredictorFactory()J

    move-result-wide v20

    .line 281
    :goto_3
    iget-object v1, v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->neteqFactoryFactory:Lcom/discord/org/webrtc/NetEqFactoryFactory;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Lcom/discord/org/webrtc/NetEqFactoryFactory;->createNativeNetEqFactory()J

    move-result-wide v12

    :goto_4
    move-wide/from16 v22, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    .line 268
    invoke-static/range {v2 .. v21}, Lcom/discord/org/webrtc/PeerConnectionFactory;->-$$Nest$smnativeCreatePeerConnectionFactory(Landroid/content/Context;Lcom/discord/org/webrtc/PeerConnectionFactory$Options;JJJLcom/discord/org/webrtc/VideoEncoderFactory;Lcom/discord/org/webrtc/VideoDecoderFactory;JJJJJ)Lcom/discord/org/webrtc/PeerConnectionFactory;

    move-result-object v1

    return-object v1
.end method

.method public setAudioDecoderFactoryFactory(Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDecoderFactoryFactory:Lcom/discord/org/webrtc/AudioDecoderFactoryFactory;

    return-object p0

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PeerConnectionFactory.Builder does not accept a null AudioDecoderFactoryFactory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioDeviceModule(Lcom/discord/org/webrtc/audio/AudioDeviceModule;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioDeviceModule:Lcom/discord/org/webrtc/audio/AudioDeviceModule;

    return-object p0
.end method

.method public setAudioEncoderFactoryFactory(Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 200
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioEncoderFactoryFactory:Lcom/discord/org/webrtc/AudioEncoderFactoryFactory;

    return-object p0

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PeerConnectionFactory.Builder does not accept a null AudioEncoderFactoryFactory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioProcessingFactory(Lcom/discord/org/webrtc/AudioProcessingFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->audioProcessingFactory:Lcom/discord/org/webrtc/AudioProcessingFactory;

    return-object p0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "PeerConnectionFactory builder does not accept a null AudioProcessingFactory."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFecControllerFactoryFactoryInterface(Lcom/discord/org/webrtc/FecControllerFactoryFactoryInterface;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->fecControllerFactoryFactory:Lcom/discord/org/webrtc/FecControllerFactoryFactoryInterface;

    return-object p0
.end method

.method public setNetEqFactoryFactory(Lcom/discord/org/webrtc/NetEqFactoryFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->neteqFactoryFactory:Lcom/discord/org/webrtc/NetEqFactoryFactory;

    return-object p0
.end method

.method public setNetworkControllerFactoryFactory(Lcom/discord/org/webrtc/NetworkControllerFactoryFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->networkControllerFactoryFactory:Lcom/discord/org/webrtc/NetworkControllerFactoryFactory;

    return-object p0
.end method

.method public setNetworkStatePredictorFactoryFactory(Lcom/discord/org/webrtc/NetworkStatePredictorFactoryFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->networkStatePredictorFactoryFactory:Lcom/discord/org/webrtc/NetworkStatePredictorFactoryFactory;

    return-object p0
.end method

.method public setOptions(Lcom/discord/org/webrtc/PeerConnectionFactory$Options;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->options:Lcom/discord/org/webrtc/PeerConnectionFactory$Options;

    return-object p0
.end method

.method public setVideoDecoderFactory(Lcom/discord/org/webrtc/VideoDecoderFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->videoDecoderFactory:Lcom/discord/org/webrtc/VideoDecoderFactory;

    return-object p0
.end method

.method public setVideoEncoderFactory(Lcom/discord/org/webrtc/VideoEncoderFactory;)Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;->videoEncoderFactory:Lcom/discord/org/webrtc/VideoEncoderFactory;

    return-object p0
.end method
