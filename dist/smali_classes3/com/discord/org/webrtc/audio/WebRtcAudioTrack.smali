.class Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_START:I = 0x0

.field private static final AUDIO_TRACK_STOP:I = 0x1

.field private static final AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEFAULT_USAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrackExternal"


# instance fields
.field private final audioAttributes:Landroid/media/AudioAttributes;

.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private emptyBytes:[B

.field private final errorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

.field private initialBufferSizeInFrames:I

.field private nativeAudioTrack:J

.field private volatile speakerMute:Z

.field private final stateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

.field private final threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private useLowLatency:Z

.field private final volumeLogger:Lcom/discord/org/webrtc/audio/VolumeLogger;


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyBytes(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)[B
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnativeAudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)J
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetspeakerMute(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseLowLatency(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoAudioTrackStateCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportWebRtcAudioTrackError(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smassertTrue(Z)V
    .locals 0

    invoke-static {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeGetPlayoutData(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->nativeGetPlayoutData(JI)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;ZZ)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    .line 174
    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 175
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 177
    iput-object p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 178
    iput-object p4, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 179
    iput-object p5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->stateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    if-eqz p7, :cond_0

    .line 180
    new-instance p1, Lcom/discord/org/webrtc/audio/VolumeLogger;

    invoke-direct {p1, p2}, Lcom/discord/org/webrtc/audio/VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lcom/discord/org/webrtc/audio/VolumeLogger;

    .line 181
    iput-boolean p6, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 182
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ctor"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebRtcAudioTrackExternal"

    invoke-static {p2, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Z)V
    .locals 8

    .line 166
    invoke-static {p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->computeAttributes(Z)Landroid/media/AudioAttributes;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;ZZ)V

    return-void
.end method

.method private GetPlayoutUnderrunCount()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 510
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 564
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private static computeAttributes(Z)Landroid/media/AudioAttributes;
    .locals 1

    if-eqz p0, :cond_0

    .line 156
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x2

    .line 157
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 159
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createAudioTrackBeforeOreo(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 8

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "createAudioTrackBeforeOreo"

    .line 468
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {p0, p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(ILandroid/media/AudioAttributes;)V

    .line 472
    new-instance v0, Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    move-result-object v3

    new-instance p3, Landroid/media/AudioFormat$Builder;

    invoke-direct {p3}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 474
    invoke-virtual {p3, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 475
    invoke-virtual {p3, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private static createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "createAudioTrackOnOreoOrHigher"

    .line 489
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {p0, p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(ILandroid/media/AudioAttributes;)V

    .line 493
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 494
    invoke-static {p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 496
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 499
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    .line 495
    invoke-virtual {p3, p0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p0, p2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 501
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 502
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 503
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 504
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private doAudioTrackStateCallback(I)V
    .locals 3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doAudioTrackStateCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->stateCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 621
    invoke-interface {v0}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStart()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 623
    invoke-interface {v0}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStop()V

    goto :goto_0

    :cond_1
    const-string p1, "Invalid audio state"

    .line 625
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 3

    .line 441
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    .line 443
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 447
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 450
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 454
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 456
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 457
    invoke-static {v0, p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 460
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method private getAudioManagerStreamType()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioManagerStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getAudioManagerStreamType(Landroid/media/AudioAttributes;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getBufferSizeInFrames()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    return v0
.end method

.method private getInitialBufferSizeInFrames()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    return v0
.end method

.method private getStreamMaxVolume()I
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "getStreamMaxVolume"

    .line 366
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioManagerStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private getStreamVolume()I
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "getStreamVolume"

    .line 387
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioManagerStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private initPlayout(IID)I
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initPlayout(sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferSizeFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, p2, 0x2

    .line 197
    div-int/lit8 v2, p1, 0x64

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byteBuffer.capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    .line 203
    iget-wide v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3, v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V

    .line 208
    invoke-direct {p0, p2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    move-result p2

    const/4 v0, 0x2

    .line 209
    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, p3

    double-to-int v0, v2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minBufferSizeInBytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    const-string p1, "AudioTrack.getMinBufferSize returns an invalid value."

    .line 219
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v2

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p3, v3

    if-lez p3, :cond_1

    const/4 p3, 0x0

    .line 227
    iput-boolean p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 232
    :cond_1
    iget-object p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p3, :cond_2

    const-string p1, "Conflict with existing AudioTrack."

    .line 233
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v2

    .line 240
    :cond_2
    :try_start_0
    iget-boolean p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    if-eqz p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1a

    if-lt p3, p4, :cond_3

    .line 242
    iget-object p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1, p2, v0, p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 250
    :cond_3
    iget-object p3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1, p2, v0, p3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->createAudioTrackBeforeOreo(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    .line 272
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logMainParameters()V

    .line 273
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logMainParametersExtended()V

    return v0

    :cond_5
    :goto_1
    const-string p1, "Initialization of audio track failed."

    .line 263
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method

.method private logBufferCapacityInFrames()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 540
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack: buffer capacity in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    .line 537
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logBufferSizeInFrames()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 518
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrack: buffer size in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    .line 515
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParameters()V
    .locals 6

    .line 405
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 407
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iget-object v1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 408
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v1

    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 409
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    .line 412
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrack: session ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", channels: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    .line 405
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 0

    .line 545
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logBufferSizeInFrames()V

    .line 546
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logBufferCapacityInFrames()V

    return-void
.end method

.method private static logNativeOutputSampleRate(ILandroid/media/AudioAttributes;)V
    .locals 2

    .line 433
    invoke-static {p1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioManagerStreamType(Landroid/media/AudioAttributes;)I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result p1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nativeOutputSampleRate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p0, p1, :cond_0

    const-string p0, "Unable to use fast mode since requested sample rate is not native"

    .line 436
    invoke-static {v1, p0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logUnderrunCount()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "underrun count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V
.end method

.method private static native nativeGetPlayoutData(JI)V
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "releaseAudioResources"

    .line 585
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run-time playback error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 612
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 3

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init playout error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 595
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 596
    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 3

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start playout error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 604
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0, p1, p2}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackStartError(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStreamVolume("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "The device implements a fixed volume policy."

    .line 376
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->getAudioManagerStreamType()I

    move-result v1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p1, 0x1

    return p1
.end method

.method private startPlayout()Z
    .locals 6

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "AudioTrack.play failed - incorrect state :"

    const-string v2, "AudioTrack.play failed: "

    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 282
    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lcom/discord/org/webrtc/audio/VolumeLogger;

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v3}, Lcom/discord/org/webrtc/audio/VolumeLogger;->start()V

    :cond_0
    const-string/jumbo v3, "startPlayout"

    .line 285
    invoke-static {v0, v3}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 288
    :try_start_1
    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :try_start_3
    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 309
    :try_start_4
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 310
    sget-object v2, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 311
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-direct {p0, v2, v1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v5

    .line 319
    :cond_3
    new-instance v1, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const-string v2, "AudioTrackJavaThread"

    invoke-direct {v1, p0, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;-><init>(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 320
    invoke-virtual {v1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->start()V

    return v4

    :catch_0
    move-exception v1

    .line 304
    sget-object v3, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    .line 305
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-direct {p0, v3, v1}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v5

    :catchall_0
    move-exception v1

    const-string/jumbo v2, "startPlayout: audioThread != null!"

    .line 296
    invoke-static {v0, v2, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    throw v1

    :catchall_1
    move-exception v1

    const-string/jumbo v2, "startPlayout: audioTrack == null!"

    .line 290
    invoke-static {v0, v2, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    const-string v2, "WebRtcAudioTrack.startPlayout fail hard!"

    .line 324
    invoke-static {v0, v2, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    throw v1
.end method

.method private stopPlayout()Z
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 332
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lcom/discord/org/webrtc/audio/VolumeLogger;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/discord/org/webrtc/audio/VolumeLogger;->stop()V

    :cond_0
    const-string/jumbo v0, "stopPlayout"

    const-string v1, "WebRtcAudioTrackExternal"

    .line 335
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    .line 337
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->logUnderrunCount()V

    .line 338
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->stopThread()V

    const-string v0, "Stopping the AudioTrackThread..."

    .line 340
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->interrupt()V

    .line 342
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v3, v4}, Lcom/discord/org/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Join of AudioTrackThread timed out."

    .line 343
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0, v3}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    :cond_2
    const-string v0, "AudioTrackThread has now been stopped."

    .line 346
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioThread:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 348
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    const-string v0, "Calling AudioTrack.stop..."

    .line 349
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const-string v0, "AudioTrack.stop is done."

    .line 352
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack.stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method


# virtual methods
.method public setNativeAudioTrack(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    return-void
.end method

.method public setSpeakerMute(Z)V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSpeakerMute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    return-void
.end method
