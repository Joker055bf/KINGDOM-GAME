.class public Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
.super Ljava/lang/Object;
.source "JavaAudioDeviceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroid/media/AudioAttributes;

.field private audioFormat:I

.field private final audioManager:Landroid/media/AudioManager;

.field private audioRecordErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

.field private audioRecordStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

.field private audioSource:I

.field private audioTrackErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

.field private audioTrackStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

.field private final context:Landroid/content/Context;

.field private enableVolumeLogger:Z

.field private inputSampleRate:I

.field private outputSampleRate:I

.field private samplesReadyCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private useHardwareAcousticEchoCanceler:Z

.field private useHardwareNoiseSuppressor:Z

.field private useLowLatency:Z

.field private useStereoInput:Z

.field private useStereoOutput:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 40
    iput v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    .line 47
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    .line 48
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    .line 56
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    .line 58
    invoke-static {p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioManager;->getSampleRate(Landroid/media/AudioManager;)I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 59
    invoke-static {p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioManager;->getSampleRate(Landroid/media/AudioManager;)I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->enableVolumeLogger:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createAudioDeviceModule()Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "createAudioDeviceModule"

    const-string v2, "JavaAudioDeviceModule"

    .line 229
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-boolean v1, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    if-eqz v1, :cond_0

    const-string v1, "HW NS will be used."

    .line 231
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Overriding default behavior; now using WebRTC NS!"

    .line 234
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "HW NS will not be used."

    .line 236
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    iget-boolean v1, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    if-eqz v1, :cond_2

    const-string v1, "HW AEC will be used."

    .line 239
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_2
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Overriding default behavior; now using WebRTC AEC!"

    .line 242
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "HW AEC will not be used."

    .line 244
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_1
    iget-boolean v1, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_4

    const-string v1, "Low latency mode will be used."

    .line 250
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_4
    iget-object v1, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_5

    .line 254
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->newDefaultScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    :cond_5
    move-object v4, v1

    .line 256
    new-instance v1, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    iget-object v3, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    iget v6, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    iget v7, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    iget-object v8, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    iget-object v9, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    iget-object v10, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->samplesReadyCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    iget-boolean v11, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    iget-boolean v12, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Landroid/media/AudioManager;IILcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;ZZ)V

    .line 259
    new-instance v9, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    iget-object v14, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    iget-object v15, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioAttributes:Landroid/media/AudioAttributes;

    iget-object v3, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    iget-object v4, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    iget-boolean v5, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    iget-boolean v6, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->enableVolumeLogger:Z

    move-object v13, v9

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-direct/range {v13 .. v20}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;ZZ)V

    .line 262
    new-instance v2, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;

    iget-object v6, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    iget v10, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    iget v11, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    iget-boolean v12, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useStereoInput:Z

    iget-boolean v13, v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useStereoOutput:Z

    const/4 v14, 0x0

    move-object v5, v2

    move-object v8, v1

    invoke-direct/range {v5 .. v14}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZLcom/discord/org/webrtc/audio/JavaAudioDeviceModule-IA;)V

    return-object v2
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setAudioFormat(I)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 115
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    return-object p0
.end method

.method public setAudioRecordErrorCallback(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    return-object p0
.end method

.method public setAudioRecordStateCallback(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    return-object p0
.end method

.method public setAudioSource(I)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 104
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    return-object p0
.end method

.method public setAudioTrackErrorCallback(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackErrorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    return-object p0
.end method

.method public setAudioTrackStateCallback(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackStateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    return-object p0
.end method

.method public setEnableVolumeLogger(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->enableVolumeLogger:Z

    return-object p0
.end method

.method public setInputSampleRate(I)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input sample rate overridden to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    return-object p0
.end method

.method public setOutputSampleRate(I)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output sample rate overridden to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    return-object p0
.end method

.method public setSampleRate(I)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input/Output sample rate overridden to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 77
    iput p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    return-object p0
.end method

.method public setSamplesReadyCallback(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->samplesReadyCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    return-object p0
.end method

.method public setScheduler(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public setUseHardwareAcousticEchoCanceler(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "JavaAudioDeviceModule"

    const-string v0, "HW AEC not supported"

    .line 179
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 182
    :cond_0
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    return-object p0
.end method

.method public setUseHardwareNoiseSuppressor(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "JavaAudioDeviceModule"

    const-string v0, "HW NS not supported"

    .line 165
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 168
    :cond_0
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    return-object p0
.end method

.method public setUseLowLatency(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    return-object p0
.end method

.method public setUseStereoInput(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useStereoInput:Z

    return-object p0
.end method

.method public setUseStereoOutput(Z)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;->useStereoOutput:Z

    return-object p0
.end method
