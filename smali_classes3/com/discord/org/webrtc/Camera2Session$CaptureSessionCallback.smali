.class Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/Camera2Session;


# direct methods
.method public static synthetic $r8$lambda$jzezdZ4MRKcYgNuQZ7_4hq8gwtw(Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->lambda$onConfigured$0(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method private constructor <init>(Lcom/discord/org/webrtc/Camera2Session;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/Camera2Session;Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;-><init>(Lcom/discord/org/webrtc/Camera2Session;)V

    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraCharacteristics(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 249
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 250
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Camera2Session"

    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 252
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using continuous video auto-focus."

    .line 254
    invoke-static {v3, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Auto-focus is not available."

    .line 258
    invoke-static {v3, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    .line 215
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraCharacteristics(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    const/4 v2, 0x0

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 218
    array-length v6, v0

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v0, v7

    if-ne v8, v4, :cond_0

    .line 220
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 222
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using optical stabilization."

    .line 224
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraCharacteristics(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3

    .line 233
    array-length v6, v0

    :goto_1
    if-ge v2, v6, :cond_3

    aget v7, v0, v2

    if-ne v7, v4, :cond_2

    .line 235
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 237
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using video stabilization."

    .line 239
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "Stabilization not available."

    .line 244
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onConfigured$0(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/Camera2Session;)V

    .line 184
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetstate(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/Camera2Session$SessionState;

    move-result-object v0

    sget-object v1, Lcom/discord/org/webrtc/Camera2Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p1, "Camera2Session"

    const-string v0, "Texture frame captured but camera is no longer running."

    .line 185
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetfirstFrameReported(Lcom/discord/org/webrtc/Camera2Session;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fputfirstFrameReported(Lcom/discord/org/webrtc/Camera2Session;Z)V

    .line 191
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v3}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetconstructionTimeNs(Lcom/discord/org/webrtc/Camera2Session;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 193
    invoke-static {}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$sfgetcamera2StartTimeMsHistogram()Lcom/discord/org/webrtc/Histogram;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/discord/org/webrtc/Histogram;->addSample(I)V

    .line 199
    :cond_1
    new-instance v0, Lcom/discord/org/webrtc/VideoFrame;

    .line 201
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/TextureBufferImpl;

    iget-object v2, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v2}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetisCameraFrontFacing(Lcom/discord/org/webrtc/Camera2Session;)Z

    move-result v2

    iget-object v3, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v3}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraOrientation(Lcom/discord/org/webrtc/Camera2Session;)I

    move-result v3

    neg-int v3, v3

    .line 200
    invoke-static {v1, v2, v3}, Lcom/discord/org/webrtc/CameraSession;->createTextureBufferWithModifiedTransformMatrix(Lcom/discord/org/webrtc/TextureBufferImpl;ZI)Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    .line 204
    invoke-static {v2}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mgetFrameOrientation(Lcom/discord/org/webrtc/Camera2Session;)I

    move-result v2

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 205
    iget-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {p1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetevents(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraSession$Events;

    move-result-object p1

    iget-object v1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-interface {p1, v1, v0}, Lcom/discord/org/webrtc/CameraSession$Events;->onFrameCaptured(Lcom/discord/org/webrtc/CameraSession;Lcom/discord/org/webrtc/VideoFrame;)V

    .line 206
    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/Camera2Session;)V

    .line 144
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 145
    iget-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    const-string v0, "Failed to configure capture session."

    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mreportError(Lcom/discord/org/webrtc/Camera2Session;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/Camera2Session;)V

    const-string v0, "Camera capture session configured."

    const-string v1, "Camera2Session"

    .line 151
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fputcaptureSession(Lcom/discord/org/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraDevice(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x3

    .line 162
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 164
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v4}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcaptureFormat(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget-object v4, v4, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v4, v4, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v5, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v5}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetfpsUnitFactor(Lcom/discord/org/webrtc/Camera2Session;)I

    move-result v5

    div-int/2addr v4, v5

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v5}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcaptureFormat(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget-object v5, v5, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v5, v5, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget-object v6, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v6}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetfpsUnitFactor(Lcom/discord/org/webrtc/Camera2Session;)I

    move-result v6

    div-int/2addr v5, v6

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 167
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 169
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 173
    iget-object v2, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v2}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetsurface(Lcom/discord/org/webrtc/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 175
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcom/discord/org/webrtc/Camera2Session$CameraCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/discord/org/webrtc/Camera2Session$CameraCaptureCallback;-><init>(Lcom/discord/org/webrtc/Camera2Session$CameraCaptureCallback-IA;)V

    iget-object v3, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {v3}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcameraThreadHandler(Lcom/discord/org/webrtc/Camera2Session;)Landroid/os/Handler;

    move-result-object v3

    .line 174
    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    iget-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {p1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetsurfaceTextureHelper(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object p1

    new-instance v0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;)V

    invoke-virtual {p1, v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->startListening(Lcom/discord/org/webrtc/VideoSink;)V

    const-string p1, "Camera device successfully started."

    .line 208
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-static {p1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$fgetcallback(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    invoke-interface {p1, v0}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onDone(Lcom/discord/org/webrtc/CameraSession;)V

    return-void

    :catch_0
    move-exception p1

    .line 177
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lcom/discord/org/webrtc/Camera2Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start capture request. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Camera2Session;->-$$Nest$mreportError(Lcom/discord/org/webrtc/Camera2Session;Ljava/lang/String;)V

    return-void
.end method
