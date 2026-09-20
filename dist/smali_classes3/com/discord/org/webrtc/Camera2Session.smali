.class Lcom/discord/org/webrtc/Camera2Session;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lcom/discord/org/webrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/Camera2Session$SessionState;,
        Lcom/discord/org/webrtc/Camera2Session$CameraStateCallback;,
        Lcom/discord/org/webrtc/Camera2Session$CameraCaptureCallback;,
        Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2Session"

.field private static final camera2ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

.field private static final camera2StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

.field private static final camera2StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cameraOrientation:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final constructionTimeNs:J

.field private final events:Lcom/discord/org/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private fpsUnitFactor:I

.field private final framerate:I

.field private final height:I

.field private isCameraFrontFacing:Z

.field private state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

.field private surface:Landroid/view/Surface;

.field private final surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

.field private final width:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->callback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraCharacteristics(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraDevice(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraOrientation(Lcom/discord/org/webrtc/Camera2Session;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraThreadHandler(Lcom/discord/org/webrtc/Camera2Session;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptureFormat(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptureSession(Lcom/discord/org/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconstructionTimeNs(Lcom/discord/org/webrtc/Camera2Session;)J
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/Camera2Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetevents(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/CameraSession$Events;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstFrameReported(Lcom/discord/org/webrtc/Camera2Session;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/Camera2Session;->firstFrameReported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfpsUnitFactor(Lcom/discord/org/webrtc/Camera2Session;)I
    .locals 0

    iget p0, p0, Lcom/discord/org/webrtc/Camera2Session;->fpsUnitFactor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCameraFrontFacing(Lcom/discord/org/webrtc/Camera2Session;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/Camera2Session;->isCameraFrontFacing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/Camera2Session$SessionState;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurface(Lcom/discord/org/webrtc/Camera2Session;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceTextureHelper(Lcom/discord/org/webrtc/Camera2Session;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera2Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcameraDevice(Lcom/discord/org/webrtc/Camera2Session;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcaptureSession(Lcom/discord/org/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameReported(Lcom/discord/org/webrtc/Camera2Session;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/discord/org/webrtc/Camera2Session;->firstFrameReported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstate(Lcom/discord/org/webrtc/Camera2Session;Lcom/discord/org/webrtc/Camera2Session$SessionState;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurface(Lcom/discord/org/webrtc/Camera2Session;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/Camera2Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFrameOrientation(Lcom/discord/org/webrtc/Camera2Session;)I
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreportError(Lcom/discord/org/webrtc/Camera2Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopInternal(Lcom/discord/org/webrtc/Camera2Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->stopInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetcamera2StartTimeMsHistogram()Lcom/discord/org/webrtc/Histogram;
    .locals 1

    sget-object v0, Lcom/discord/org/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "WebRTC.Android.Camera2.StartTimeMs"

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const/16 v3, 0x32

    .line 35
    invoke-static {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera2Session;->camera2StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    const-string v0, "WebRTC.Android.Camera2.StopTimeMs"

    .line 37
    invoke-static {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    .line 38
    sget-object v0, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WebRTC.Android.Camera2.Resolution"

    .line 38
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera2Session;->camera2ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 2

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/discord/org/webrtc/Camera2Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create new camera2 session on camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/discord/org/webrtc/Camera2Session;->constructionTimeNs:J

    .line 285
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 286
    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session;->callback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    .line 287
    iput-object p2, p0, Lcom/discord/org/webrtc/Camera2Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    .line 288
    iput-object p3, p0, Lcom/discord/org/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 289
    iput-object p4, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 290
    iput-object p5, p0, Lcom/discord/org/webrtc/Camera2Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 291
    iput-object p6, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 292
    iput p7, p0, Lcom/discord/org/webrtc/Camera2Session;->width:I

    .line 293
    iput p8, p0, Lcom/discord/org/webrtc/Camera2Session;->height:I

    .line 294
    iput p9, p0, Lcom/discord/org/webrtc/Camera2Session;->framerate:I

    .line 296
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->start()V

    return-void
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 10

    .line 274
    new-instance v0, Lcom/discord/org/webrtc/Camera2Session;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/discord/org/webrtc/Camera2Session;-><init>(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method

.method private findCaptureFormat()V
    .locals 5

    .line 324
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 326
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 327
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 328
    invoke-static {v0}, Lcom/discord/org/webrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v1

    iput v1, p0, Lcom/discord/org/webrtc/Camera2Session;->fpsUnitFactor:I

    .line 330
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcom/discord/org/webrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Available preview sizes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera2Session"

    invoke-static {v3, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Available fps ranges: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget v2, p0, Lcom/discord/org/webrtc/Camera2Session;->framerate:I

    .line 341
    invoke-static {v0, v2}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v0

    .line 343
    iget v2, p0, Lcom/discord/org/webrtc/Camera2Session;->width:I

    iget v4, p0, Lcom/discord/org/webrtc/Camera2Session;->height:I

    invoke-static {v1, v2, v4}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/discord/org/webrtc/Size;

    move-result-object v1

    .line 344
    sget-object v2, Lcom/discord/org/webrtc/Camera2Session;->camera2ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

    invoke-static {v2, v1}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lcom/discord/org/webrtc/Histogram;Lcom/discord/org/webrtc/Size;)V

    .line 346
    new-instance v2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v4, v1, Lcom/discord/org/webrtc/Size;->width:I

    iget v1, v1, Lcom/discord/org/webrtc/Size;->height:I

    invoke-direct {v2, v4, v1, v0}, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    iput-object v2, p0, Lcom/discord/org/webrtc/Camera2Session;->captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using capture format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "No supported capture formats."

    .line 336
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraSession;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 415
    iget-boolean v1, p0, Lcom/discord/org/webrtc/Camera2Session;->isCameraFrontFacing:Z

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 418
    :cond_0
    iget v1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera()V
    .locals 4

    .line 351
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 353
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    invoke-interface {v0}, Lcom/discord/org/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v2, Lcom/discord/org/webrtc/Camera2Session$CameraStateCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/discord/org/webrtc/Camera2Session$CameraStateCallback;-><init>(Lcom/discord/org/webrtc/Camera2Session;Lcom/discord/org/webrtc/Camera2Session$CameraStateCallback-IA;)V

    iget-object v3, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 359
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open camera: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 2

    .line 400
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    sget-object v1, Lcom/discord/org/webrtc/Camera2Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    sget-object v1, Lcom/discord/org/webrtc/Camera2Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    iput-object v1, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    .line 405
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->stopInternal()V

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->callback:Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    sget-object v1, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-interface {v0, v1, p1}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    invoke-interface {v0, p0, p1}, Lcom/discord/org/webrtc/CameraSession$Events;->onCameraError(Lcom/discord/org/webrtc/CameraSession;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private start()V
    .locals 3

    .line 300
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    const-string v0, "Camera2Session"

    const-string/jumbo v1, "start"

    .line 301
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraOrientation:I

    .line 310
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/discord/org/webrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 313
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->findCaptureFormat()V

    .line 315
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    if-nez v0, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->openCamera()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 306
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraCharacteristics(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method private stopInternal()V
    .locals 3

    const-string v0, "Stop internal"

    const-string v1, "Camera2Session"

    .line 378
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 381
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 383
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 385
    iput-object v2, p0, Lcom/discord/org/webrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 389
    iput-object v2, p0, Lcom/discord/org/webrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 393
    iput-object v2, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    const-string v0, "Stop done"

    .line 396
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop camera2 session on camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 368
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    sget-object v1, Lcom/discord/org/webrtc/Camera2Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    .line 369
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 370
    sget-object v2, Lcom/discord/org/webrtc/Camera2Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    iput-object v2, p0, Lcom/discord/org/webrtc/Camera2Session;->state:Lcom/discord/org/webrtc/Camera2Session$SessionState;

    .line 371
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera2Session;->stopInternal()V

    .line 372
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 373
    sget-object v1, Lcom/discord/org/webrtc/Camera2Session;->camera2StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    invoke-virtual {v1, v0}, Lcom/discord/org/webrtc/Histogram;->addSample(I)V

    :cond_0
    return-void
.end method
