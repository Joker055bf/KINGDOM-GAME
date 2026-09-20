.class abstract Lcom/discord/org/webrtc/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/discord/org/webrtc/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lcom/discord/org/webrtc/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lcom/discord/org/webrtc/CameraSession$Events;

.field private cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

.field private final createSessionCallback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

.field private currentSession:Lcom/discord/org/webrtc/CameraSession;

.field private final eventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private pendingCameraName:Ljava/lang/String;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

.field private switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field private switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method static bridge synthetic -$$Nest$fgetapplicationContext(Lcom/discord/org/webrtc/CameraCapturer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraEnumerator(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraEnumerator;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraEnumerator:Lcom/discord/org/webrtc/CameraEnumerator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraName(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraSessionEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraSession$Events;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lcom/discord/org/webrtc/CameraSession$Events;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraStatistics(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcapturerObserver(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CapturerObserver;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateSessionCallback(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->createSessionCallback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSession(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraSession;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->eventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstFrameObserved(Lcom/discord/org/webrtc/CameraCapturer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->firstFrameObserved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetframerate(Lcom/discord/org/webrtc/CameraCapturer;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->framerate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetheight(Lcom/discord/org/webrtc/CameraCapturer;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->height:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenAttemptsRemaining(Lcom/discord/org/webrtc/CameraCapturer;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenCameraTimeoutRunnable(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingCameraName(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstateLock(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceHelper(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->surfaceHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchState(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiThreadHandler(Lcom/discord/org/webrtc/CameraCapturer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwidth(Lcom/discord/org/webrtc/CameraCapturer;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/CameraCapturer;->width:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcameraStatistics(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentSession(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraSession;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameObserved(Lcom/discord/org/webrtc/CameraCapturer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->firstFrameObserved:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputopenAttemptsRemaining(Lcom/discord/org/webrtc/CameraCapturer;I)V
    .locals 0

    iput p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingCameraName(Lcom/discord/org/webrtc/CameraCapturer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsessionOpening(Lcom/discord/org/webrtc/CameraCapturer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchState(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraCapturer$SwitchState;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/CameraCapturer;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionInternal(Lcom/discord/org/webrtc/CameraCapturer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/CameraCapturer;->createSessionInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportCameraSwitchError(Lcom/discord/org/webrtc/CameraCapturer;Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchCameraInternal(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/CameraCapturer;->switchCameraInternal(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;Lcom/discord/org/webrtc/CameraEnumerator;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$1;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/CameraCapturer$1;-><init>(Lcom/discord/org/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->createSessionCallback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    .line 102
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$2;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/CameraCapturer$2;-><init>(Lcom/discord/org/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lcom/discord/org/webrtc/CameraSession$Events;

    .line 172
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$3;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/CameraCapturer$3;-><init>(Lcom/discord/org/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    iput-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    if-nez p2, :cond_0

    .line 204
    new-instance p2, Lcom/discord/org/webrtc/CameraCapturer$4;

    invoke-direct {p2, p0}, Lcom/discord/org/webrtc/CameraCapturer$4;-><init>(Lcom/discord/org/webrtc/CameraCapturer;)V

    .line 220
    :cond_0
    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->eventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 221
    iput-object p3, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraEnumerator:Lcom/discord/org/webrtc/CameraEnumerator;

    .line 222
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 223
    invoke-interface {p3}, Lcom/discord/org/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 224
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 229
    iget-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Camera name "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not match any known camera device."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No cameras attached."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraCapturer"

    const-string v1, "Check is on camera thread failed."

    .line 443
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on camera thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSessionInternal(I)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 v2, p1, 0x2710

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/CameraCapturer$5;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/CameraCapturer$5;-><init>(Lcom/discord/org/webrtc/CameraCapturer;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1

    const-string v0, "CameraCapturer"

    .line 384
    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 386
    invoke-interface {p2, p1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CameraCapturer"

    const-string/jumbo v1, "switchCamera internal"

    .line 392
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraEnumerator:Lcom/discord/org/webrtc/CameraEnumerator;

    invoke-interface {v0}, Lcom/discord/org/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 395
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to switch to unknown camera device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/discord/org/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    sget-object v2, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    if-eq v1, v2, :cond_1

    const-string p2, "Camera switch already in progress."

    .line 403
    invoke-direct {p0, p2, p1}, Lcom/discord/org/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 404
    monitor-exit v0

    return-void

    .line 406
    :cond_1
    iget-boolean v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    if-nez v2, :cond_2

    const-string/jumbo p2, "switchCamera: camera is not running."

    .line 407
    invoke-direct {p0, p2, p1}, Lcom/discord/org/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 408
    monitor-exit v0

    return-void

    .line 411
    :cond_2
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    if-eqz v1, :cond_3

    .line 413
    sget-object p1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->PENDING:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    .line 414
    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    .line 415
    monitor-exit v0

    return-void

    .line 417
    :cond_3
    sget-object p1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->switchState:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const-string p1, "CameraCapturer"

    const-string/jumbo v1, "switchCamera: Stopping session"

    .line 420
    invoke-static {p1, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 423
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    .line 424
    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/discord/org/webrtc/CameraCapturer$9;

    invoke-direct {v3, p0, v1}, Lcom/discord/org/webrtc/CameraCapturer$9;-><init>(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    .line 432
    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 434
    iput-boolean p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    .line 435
    iput p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 436
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraCapturer"

    const-string/jumbo p2, "switchCamera done"

    .line 438
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 437
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 3

    const-string v0, "CameraCapturer"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeCaptureFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/discord/org/webrtc/CameraCapturer;->stopCapture()V

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->startCapture(III)V

    .line 321
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract createCameraSession(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "dispose"

    .line 326
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/discord/org/webrtc/CameraCapturer;->stopCapture()V

    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V
    .locals 0

    .line 238
    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 239
    iput-object p3, p0, Lcom/discord/org/webrtc/CameraCapturer;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    .line 240
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->surfaceHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 241
    invoke-virtual {p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public isScreencast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 373
    array-length v1, v0

    if-lez v1, :cond_1

    const-string v1, "CameraCapturer stack trace:"

    const-string v2, "CameraCapturer"

    .line 374
    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 376
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startCapture(III)V
    .locals 3

    const-string v0, "CameraCapturer"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iput p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->width:I

    .line 258
    iput p2, p0, Lcom/discord/org/webrtc/CameraCapturer;->height:I

    .line 259
    iput p3, p0, Lcom/discord/org/webrtc/CameraCapturer;->framerate:I

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    const/4 p1, 0x3

    .line 262
    iput p1, p0, Lcom/discord/org/webrtc/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 264
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const-string p1, "CameraCapturer"

    const-string p2, "Session already open"

    .line 253
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 248
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "CameraCapturer must be initialized before calling startCapture."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopCapture()V
    .locals 5

    const-string v0, "CameraCapturer"

    const-string v1, "Stop capture"

    .line 280
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: Waiting for session to open"

    .line 284
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture interrupted while waiting for the session to open."

    .line 288
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 290
    monitor-exit v0

    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    if-eqz v1, :cond_1

    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: Nulling session"

    .line 295
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    const/4 v1, 0x0

    .line 297
    iput-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraStatistics:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 298
    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    .line 299
    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/discord/org/webrtc/CameraCapturer$6;

    invoke-direct {v4, p0, v2}, Lcom/discord/org/webrtc/CameraCapturer$6;-><init>(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    iput-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->currentSession:Lcom/discord/org/webrtc/CameraSession;

    .line 306
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    invoke-interface {v1}, Lcom/discord/org/webrtc/CapturerObserver;->onCapturerStopped()V

    goto :goto_1

    :cond_1
    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: No session open"

    .line 308
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "Stop capture done"

    .line 312
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 310
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string/jumbo v1, "switchCamera"

    .line 332
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/CameraCapturer$7;

    invoke-direct {v1, p0, p1}, Lcom/discord/org/webrtc/CameraCapturer$7;-><init>(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string/jumbo v1, "switchCamera"

    .line 352
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/CameraCapturer$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/discord/org/webrtc/CameraCapturer$8;-><init>(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
