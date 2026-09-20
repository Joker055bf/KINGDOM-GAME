.class public Lcom/discord/org/webrtc/PeerConnectionFactory;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;,
        Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;,
        Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;,
        Lcom/discord/org/webrtc/PeerConnectionFactory$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeerConnectionFactory"

.field public static final TRIAL_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final VIDEO_CAPTURER_THREAD_NAME:Ljava/lang/String; = "VideoCapturerThread"

.field public static final VIDEO_FRAME_EMIT_TRIAL:Ljava/lang/String; = "VideoFrameEmit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile internalTracerInitialized:Z

.field private static staticNetworkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

.field private static staticSignalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

.field private static staticWorkerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;


# instance fields
.field private nativeFactory:J

.field private volatile networkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

.field private volatile signalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

.field private volatile workerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;


# direct methods
.method static bridge synthetic -$$Nest$smcheckInitializeHasBeenCalled()V
    .locals 0

    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkInitializeHasBeenCalled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCreatePeerConnectionFactory(Landroid/content/Context;Lcom/discord/org/webrtc/PeerConnectionFactory$Options;JJJLcom/discord/org/webrtc/VideoEncoderFactory;Lcom/discord/org/webrtc/VideoDecoderFactory;JJJJJ)Lcom/discord/org/webrtc/PeerConnectionFactory;
    .locals 1

    invoke-static/range {p0 .. p19}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreatePeerConnectionFactory(Landroid/content/Context;Lcom/discord/org/webrtc/PeerConnectionFactory$Options;JJJLcom/discord/org/webrtc/VideoEncoderFactory;Lcom/discord/org/webrtc/VideoDecoderFactory;JJJJJ)Lcom/discord/org/webrtc/PeerConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(J)V
    .locals 2

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkInitializeHasBeenCalled()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 365
    iput-wide p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-void

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize PeerConnectionFactory!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static builder()Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;
    .locals 2

    .line 286
    new-instance v0, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory$Builder;-><init>(Lcom/discord/org/webrtc/PeerConnectionFactory$Builder-IA;)V

    return-object v0
.end method

.method private static checkInitializeHasBeenCalled()V
    .locals 2

    .line 315
    invoke-static {}, Lcom/discord/org/webrtc/NativeLibrary;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/discord/org/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PeerConnectionFactory.initialize was not called before creating a PeerConnectionFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPeerConnectionFactoryExists()V
    .locals 4

    .line 523
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PeerConnectionFactory has been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 348
    invoke-static {}, Lcom/discord/org/webrtc/NativeLibrary;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFindFieldTrialsFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static initialize(Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/discord/org/webrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 296
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/NativeLibrary;->initialize(Lcom/discord/org/webrtc/NativeLibraryLoader;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeInitializeAndroidGlobals()V

    .line 298
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->fieldTrials:Ljava/lang/String;

    invoke-static {v0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeInitializeFieldTrials(Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->enableInternalTracer:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->initializeInternalTracer()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lcom/discord/org/webrtc/Loggable;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lcom/discord/org/webrtc/Loggable;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->injectLoggable(Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;)V

    .line 304
    new-instance v0, Lcom/discord/org/webrtc/JNILogging;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lcom/discord/org/webrtc/Loggable;

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/JNILogging;-><init>(Lcom/discord/org/webrtc/Loggable;)V

    iget-object p0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

    invoke-virtual {p0}, Lcom/discord/org/webrtc/Logging$Severity;->ordinal()I

    move-result p0

    invoke-static {v0, p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeInjectLoggable(Lcom/discord/org/webrtc/JNILogging;I)V

    goto :goto_0

    :cond_1
    const-string p0, "PeerConnectionFactory"

    const-string v0, "PeerConnectionFactory was initialized without an injected Loggable. Any existing Loggable will be deleted."

    .line 306
    invoke-static {p0, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/discord/org/webrtc/Logging;->deleteInjectedLoggable()V

    .line 310
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeDeleteLoggable()V

    :goto_0
    return-void
.end method

.method public static initializeFieldTrials(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-static {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeInitializeFieldTrials(Ljava/lang/String;)V

    return-void
.end method

.method private static initializeInternalTracer()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    sput-boolean v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    .line 324
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeInitializeInternalTracer()V

    return-void
.end method

.method private static native nativeCreateAudioSource(JLcom/discord/org/webrtc/MediaConstraints;)J
.end method

.method private static native nativeCreateAudioTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeCreateLocalMediaStream(JLjava/lang/String;)J
.end method

.method private static native nativeCreatePeerConnection(JLcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;JLcom/discord/org/webrtc/SSLCertificateVerifier;)J
.end method

.method private static native nativeCreatePeerConnectionFactory(Landroid/content/Context;Lcom/discord/org/webrtc/PeerConnectionFactory$Options;JJJLcom/discord/org/webrtc/VideoEncoderFactory;Lcom/discord/org/webrtc/VideoDecoderFactory;JJJJJ)Lcom/discord/org/webrtc/PeerConnectionFactory;
.end method

.method private static native nativeCreateVideoSource(JZZ)J
.end method

.method private static native nativeCreateVideoTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeDeleteLoggable()V
.end method

.method private static native nativeFindFieldTrialsFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeFreeFactory(J)V
.end method

.method private static native nativeGetNativePeerConnectionFactory(J)J
.end method

.method private static native nativeGetRtpReceiverCapabilities(JLcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;
.end method

.method private static native nativeGetRtpSenderCapabilities(JLcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;
.end method

.method private static native nativeInitializeAndroidGlobals()V
.end method

.method private static native nativeInitializeFieldTrials(Ljava/lang/String;)V
.end method

.method private static native nativeInitializeInternalTracer()V
.end method

.method private static native nativeInjectLoggable(Lcom/discord/org/webrtc/JNILogging;I)V
.end method

.method private static native nativePrintStackTrace(I)V
.end method

.method private static native nativeShutdownInternalTracer()V
.end method

.method private static native nativeStartAecDump(JII)Z
.end method

.method private static native nativeStartInternalTracingCapture(Ljava/lang/String;)Z
.end method

.method private static native nativeStopAecDump(J)V
.end method

.method private static native nativeStopInternalTracingCapture()V
.end method

.method private onNetworkThreadReady()V
    .locals 2

    .line 574
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->networkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 575
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->networkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticNetworkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string v0, "PeerConnectionFactory"

    const-string v1, "onNetworkThreadReady"

    .line 576
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSignalingThreadReady()V
    .locals 2

    .line 588
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->signalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 589
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->signalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticSignalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string v0, "PeerConnectionFactory"

    const-string v1, "onSignalingThreadReady"

    .line 590
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onWorkerThreadReady()V
    .locals 2

    .line 581
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->workerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 582
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->workerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticWorkerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string v0, "PeerConnectionFactory"

    const-string v1, "onWorkerThreadReady"

    .line 583
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 536
    array-length v2, v1

    const-string v3, "PeerConnectionFactory"

    if-lez v2, :cond_1

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " stacktrace:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 539
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

    .line 545
    invoke-static {v3, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iget v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->tid:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pid: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", tid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  >>> WebRTC <<<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-static {v3, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget p0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;->tid:I

    invoke-static {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativePrintStackTrace(I)V

    :cond_2
    return-void
.end method

.method public static printStackTraces()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    sget-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticNetworkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    .line 557
    sget-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticWorkerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    .line 558
    sget-object v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->staticSignalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    return-void
.end method

.method public static shutdownInternalTracer()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    sput-boolean v0, Lcom/discord/org/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    .line 329
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeShutdownInternalTracer()V

    return-void
.end method

.method public static startInternalTracingCapture(Ljava/lang/String;)Z
    .locals 0

    .line 352
    invoke-static {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeStartInternalTracingCapture(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static stopInternalTracingCapture()V
    .locals 0

    .line 356
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeStopInternalTracingCapture()V

    return-void
.end method


# virtual methods
.method public createAudioSource(Lcom/discord/org/webrtc/MediaConstraints;)Lcom/discord/org/webrtc/AudioSource;
    .locals 3

    .line 467
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 468
    new-instance v0, Lcom/discord/org/webrtc/AudioSource;

    iget-wide v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreateAudioSource(JLcom/discord/org/webrtc/MediaConstraints;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/AudioSource;-><init>(J)V

    return-object v0
.end method

.method public createAudioTrack(Ljava/lang/String;Lcom/discord/org/webrtc/AudioSource;)Lcom/discord/org/webrtc/AudioTrack;
    .locals 5

    .line 472
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 473
    new-instance v0, Lcom/discord/org/webrtc/AudioTrack;

    iget-wide v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-virtual {p2}, Lcom/discord/org/webrtc/AudioSource;->getNativeAudioSource()J

    move-result-wide v3

    invoke-static {v1, v2, p1, v3, v4}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreateAudioTrack(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/AudioTrack;-><init>(J)V

    return-object v0
.end method

.method public createLocalMediaStream(Ljava/lang/String;)Lcom/discord/org/webrtc/MediaStream;
    .locals 3

    .line 435
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 436
    new-instance v0, Lcom/discord/org/webrtc/MediaStream;

    iget-wide v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreateLocalMediaStream(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/MediaStream;-><init>(J)V

    return-object v0
.end method

.method public createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createPeerConnectionInternal(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;)Lcom/discord/org/webrtc/PeerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 1

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, p1, v0, p2}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/PeerConnectionDependencies;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 2

    .line 431
    invoke-virtual {p2}, Lcom/discord/org/webrtc/PeerConnectionDependencies;->getObserver()Lcom/discord/org/webrtc/PeerConnection$Observer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/discord/org/webrtc/PeerConnectionDependencies;->getSSLCertificateVerifier()Lcom/discord/org/webrtc/SSLCertificateVerifier;

    move-result-object p2

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createPeerConnectionInternal(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;)Lcom/discord/org/webrtc/PeerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createPeerConnection(Ljava/util/List;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer;",
            ">;",
            "Lcom/discord/org/webrtc/MediaConstraints;",
            "Lcom/discord/org/webrtc/PeerConnection$Observer;",
            ")",
            "Lcom/discord/org/webrtc/PeerConnection;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 409
    sget-object p1, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    iput-object p1, v0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    .line 410
    invoke-virtual {p0, v0, p2, p3}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createPeerConnection(Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer;",
            ">;",
            "Lcom/discord/org/webrtc/PeerConnection$Observer;",
            ")",
            "Lcom/discord/org/webrtc/PeerConnection;"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 417
    sget-object p1, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    iput-object p1, v0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    .line 418
    invoke-virtual {p0, v0, p2}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createPeerConnection(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnection;

    move-result-object p1

    return-object p1
.end method

.method createPeerConnectionInternal(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;)Lcom/discord/org/webrtc/PeerConnection;
    .locals 10

    .line 375
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 376
    invoke-static {p3}, Lcom/discord/org/webrtc/PeerConnection;->createNativePeerConnectionObserver(Lcom/discord/org/webrtc/PeerConnection$Observer;)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long p3, v4, v7

    const/4 v9, 0x0

    if-nez p3, :cond_0

    return-object v9

    .line 380
    :cond_0
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreatePeerConnection(JLcom/discord/org/webrtc/PeerConnection$RTCConfiguration;Lcom/discord/org/webrtc/MediaConstraints;JLcom/discord/org/webrtc/SSLCertificateVerifier;)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-nez p3, :cond_1

    return-object v9

    .line 385
    :cond_1
    new-instance p3, Lcom/discord/org/webrtc/PeerConnection;

    invoke-direct {p3, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;-><init>(J)V

    return-object p3
.end method

.method public createVideoSource(Z)Lcom/discord/org/webrtc/VideoSource;
    .locals 1

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0, p1, v0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->createVideoSource(ZZ)Lcom/discord/org/webrtc/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public createVideoSource(ZZ)Lcom/discord/org/webrtc/VideoSource;
    .locals 3

    .line 447
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 448
    new-instance v0, Lcom/discord/org/webrtc/VideoSource;

    iget-wide v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1, p2}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreateVideoSource(JZZ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/VideoSource;-><init>(J)V

    return-object v0
.end method

.method public createVideoTrack(Ljava/lang/String;Lcom/discord/org/webrtc/VideoSource;)Lcom/discord/org/webrtc/VideoTrack;
    .locals 5

    .line 461
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 462
    new-instance v0, Lcom/discord/org/webrtc/VideoTrack;

    iget-wide v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 463
    invoke-virtual {p2}, Lcom/discord/org/webrtc/VideoSource;->getNativeVideoTrackSource()J

    move-result-wide v3

    invoke-static {v1, v2, p1, v3, v4}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeCreateVideoTrack(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/VideoTrack;-><init>(J)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 503
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFreeFactory(J)V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->networkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 505
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->workerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 506
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->signalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    const-wide/16 v0, 0x0

    .line 507
    iput-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-void
.end method

.method public getNativeOwnedFactoryAndThreads()J
    .locals 2

    .line 518
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 519
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-wide v0
.end method

.method public getNativePeerConnectionFactory()J
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 513
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeGetNativePeerConnectionFactory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRtpReceiverCapabilities(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;
    .locals 2

    .line 477
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 478
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeGetRtpReceiverCapabilities(JLcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public getRtpSenderCapabilities(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;
    .locals 2

    .line 482
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 483
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeGetRtpSenderCapabilities(JLcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public printInternalStackTraces(Z)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->signalingThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    .line 568
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->workerThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    .line 569
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->networkThread:Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->printStackTrace(Lcom/discord/org/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    return-void
.end method

.method public startAecDump(II)Z
    .locals 2

    .line 490
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 491
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1, p1, p2}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeStartAecDump(JII)Z

    move-result p1

    return p1
.end method

.method public stopAecDump()V
    .locals 2

    .line 497
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 498
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnectionFactory;->nativeStopAecDump(J)V

    return-void
.end method
