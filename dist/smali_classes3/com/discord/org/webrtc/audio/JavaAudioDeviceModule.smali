.class public Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;
.super Ljava/lang/Object;
.source "JavaAudioDeviceModule.java"

# interfaces
.implements Lcom/discord/org/webrtc/audio/AudioDeviceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioSamples;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;,
        Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JavaAudioDeviceModule"


# instance fields
.field private final audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

.field private final audioManager:Landroid/media/AudioManager;

.field private final audioOutput:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

.field private final context:Landroid/content/Context;

.field private final inputSampleRate:I

.field private nativeAudioDeviceModule:J

.field private final nativeLock:Ljava/lang/Object;

.field private final outputSampleRate:I

.field private final useStereoInput:Z

.field private final useStereoOutput:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZ)V
    .locals 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    .line 378
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->context:Landroid/content/Context;

    .line 379
    iput-object p2, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioManager:Landroid/media/AudioManager;

    .line 380
    iput-object p3, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    .line 381
    iput-object p4, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioOutput:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    .line 382
    iput p5, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->inputSampleRate:I

    .line 383
    iput p6, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->outputSampleRate:I

    .line 384
    iput-boolean p7, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->useStereoInput:Z

    .line 385
    iput-boolean p8, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->useStereoOutput:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZLcom/discord/org/webrtc/audio/JavaAudioDeviceModule-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZ)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 31
    new-instance v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder;-><init>(Landroid/content/Context;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$Builder-IA;)V

    return-object v0
.end method

.method public static isBuiltInAcousticEchoCancelerSupported()Z
    .locals 1

    .line 352
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    return v0
.end method

.method public static isBuiltInNoiseSuppressorSupported()Z
    .locals 1

    .line 360
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateAudioDeviceModule(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZ)J
.end method


# virtual methods
.method public getNativeAudioDeviceModulePointer()J
    .locals 10

    .line 390
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-wide v1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioOutput:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    iget v6, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->inputSampleRate:I

    iget v7, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->outputSampleRate:I

    iget-boolean v8, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->useStereoInput:Z

    iget-boolean v9, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->useStereoOutput:Z

    invoke-static/range {v2 .. v9}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeCreateAudioDeviceModule(Landroid/content/Context;Landroid/media/AudioManager;Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;IIZZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 395
    :cond_0
    iget-wide v1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-wide v1, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 403
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/JniCommon;->nativeReleaseRef(J)V

    .line 404
    iput-wide v3, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 406
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMicrophoneMute(Z)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMicrophoneMute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    return-void
.end method

.method public setNoiseSuppressorEnabled(Z)Z
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNoiseSuppressorEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->setNoiseSuppressorEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setPreferredInputDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreferredInputDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioInput:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public setSpeakerMute(Z)V
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSpeakerMute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaAudioDeviceModule"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;->audioOutput:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->setSpeakerMute(Z)V

    return-void
.end method
