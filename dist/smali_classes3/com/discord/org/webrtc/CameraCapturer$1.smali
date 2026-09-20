.class Lcom/discord/org/webrtc/CameraCapturer$1;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/CameraCapturer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/discord/org/webrtc/CameraSession;)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/CameraCapturer;)V

    const-string v0, "CameraCapturer"

    .line 43
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchState(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create session done. Switch state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetuiThreadHandler(Lcom/discord/org/webrtc/CameraCapturer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetopenCameraTimeoutRunnable(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetstateLock(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcapturerObserver(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CapturerObserver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/discord/org/webrtc/CapturerObserver;->onCapturerStarted(Z)V

    .line 47
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputsessionOpening(Lcom/discord/org/webrtc/CameraCapturer;Z)V

    .line 48
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1, p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputcurrentSession(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraSession;)V

    .line 49
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    new-instance v1, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;

    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetsurfaceHelper(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v4}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgeteventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;)V

    invoke-static {p1, v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputcameraStatistics(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;)V

    .line 50
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputfirstFrameObserved(Lcom/discord/org/webrtc/CameraCapturer;Z)V

    .line 51
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetstateLock(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchState(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    move-result-object p1

    sget-object v1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    sget-object v1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    invoke-static {p1, v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputswitchState(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraCapturer$SwitchState;)V

    .line 55
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcameraEnumerator(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraEnumerator;

    move-result-object v1

    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcameraName(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/discord/org/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchDone(Z)V

    .line 57
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchState(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    move-result-object p1

    sget-object v1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->PENDING:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    if-ne p1, v1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetpendingCameraName(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputpendingCameraName(Lcom/discord/org/webrtc/CameraCapturer;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    sget-object v2, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputswitchState(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraCapturer$SwitchState;)V

    .line 63
    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$mswitchCameraInternal(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Opening camera failed, passing: "

    const-string v1, "Opening camera failed, retry: "

    .line 70
    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/CameraCapturer;)V

    .line 71
    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetuiThreadHandler(Lcom/discord/org/webrtc/CameraCapturer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetopenCameraTimeoutRunnable(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetstateLock(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcapturerObserver(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CapturerObserver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/discord/org/webrtc/CapturerObserver;->onCapturerStarted(Z)V

    .line 74
    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetopenAttemptsRemaining(Lcom/discord/org/webrtc/CameraCapturer;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputopenAttemptsRemaining(Lcom/discord/org/webrtc/CameraCapturer;I)V

    .line 76
    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetopenAttemptsRemaining(Lcom/discord/org/webrtc/CameraCapturer;)I

    move-result v3

    if-gtz v3, :cond_3

    const-string v1, "CameraCapturer"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0, v4}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputsessionOpening(Lcom/discord/org/webrtc/CameraCapturer;Z)V

    .line 79
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetstateLock(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 81
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchState(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    move-result-object v0

    sget-object v1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputswitchEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    sget-object v1, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fputswitchState(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraCapturer$SwitchState;)V

    .line 89
    :cond_1
    sget-object v0, Lcom/discord/org/webrtc/CameraSession$FailureType;->DISCONNECTED:Lcom/discord/org/webrtc/CameraSession$FailureType;

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgeteventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected()V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {p1}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgeteventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "CameraCapturer"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$1;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    const/16 p2, 0x1f4

    invoke-static {p1, p2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$mcreateSessionInternal(Lcom/discord/org/webrtc/CameraCapturer;I)V

    .line 98
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
