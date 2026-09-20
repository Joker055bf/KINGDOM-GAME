.class Lcom/discord/org/webrtc/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lcom/discord/org/webrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

.field private static final camera1StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

.field private static final camera1StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lcom/discord/org/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;


# direct methods
.method public static synthetic $r8$lambda$ZxwYHAt5-Awt7kwpW_IYlYygYdc(Lcom/discord/org/webrtc/Camera1Session;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/Camera1Session;->lambda$listenForTextureFrames$0(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcamera(Lcom/discord/org/webrtc/Camera1Session;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraThreadHandler(Lcom/discord/org/webrtc/Camera1Session;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaptureFormat(Lcom/discord/org/webrtc/Camera1Session;)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera1Session;->captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconstructionTimeNs(Lcom/discord/org/webrtc/Camera1Session;)J
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/Camera1Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetevents(Lcom/discord/org/webrtc/Camera1Session;)Lcom/discord/org/webrtc/CameraSession$Events;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera1Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstFrameReported(Lcom/discord/org/webrtc/Camera1Session;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/Camera1Session;->firstFrameReported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/discord/org/webrtc/Camera1Session;)Lcom/discord/org/webrtc/Camera1Session$SessionState;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfirstFrameReported(Lcom/discord/org/webrtc/Camera1Session;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/discord/org/webrtc/Camera1Session;->firstFrameReported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIsOnCameraThread(Lcom/discord/org/webrtc/Camera1Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFrameOrientation(Lcom/discord/org/webrtc/Camera1Session;)I
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopInternal(Lcom/discord/org/webrtc/Camera1Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->stopInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetcamera1StartTimeMsHistogram()Lcom/discord/org/webrtc/Histogram;
    .locals 1

    sget-object v0, Lcom/discord/org/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "WebRTC.Android.Camera1.StartTimeMs"

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const/16 v3, 0x32

    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    const-string v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    .line 32
    sget-object v0, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WebRTC.Android.Camera1.Resolution"

    .line 32
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lcom/discord/org/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session;->camera1ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lcom/discord/org/webrtc/CameraSession$Events;ZLandroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create new camera1 session on camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 184
    iput-object p1, p0, Lcom/discord/org/webrtc/Camera1Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    .line 185
    iput-boolean p2, p0, Lcom/discord/org/webrtc/Camera1Session;->captureToTexture:Z

    .line 186
    iput-object p3, p0, Lcom/discord/org/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 187
    iput-object p4, p0, Lcom/discord/org/webrtc/Camera1Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 188
    iput p5, p0, Lcom/discord/org/webrtc/Camera1Session;->cameraId:I

    .line 189
    iput-object p6, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 190
    iput-object p7, p0, Lcom/discord/org/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 191
    iput-object p8, p0, Lcom/discord/org/webrtc/Camera1Session;->captureFormat:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 192
    iput-wide p9, p0, Lcom/discord/org/webrtc/Camera1Session;->constructionTimeNs:J

    .line 194
    iget p1, p8, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget p2, p8, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p4, p1, p2}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 196
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->startCapturing()V

    return-void
.end method

.method private static cameraReleaseSafe(Landroid/hardware/Camera;)V
    .locals 0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;ZLandroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 14

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v2, p6

    move/from16 v3, p7

    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Open camera "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Camera1Session"

    invoke-static {v6, v4}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lcom/discord/org/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 64
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/discord/org/webrtc/Camera1Enumerator;->getCameraIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    .line 72
    :try_start_1
    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v8, :cond_0

    .line 79
    sget-object v0, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera.open returned null for camera id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v9}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 93
    invoke-static {v7, v9}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 97
    :try_start_3
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move/from16 v5, p8

    .line 98
    invoke-static {v4, v2, v3, v5}, Lcom/discord/org/webrtc/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v10

    .line 99
    invoke-static {v4, v2, v3}, Lcom/discord/org/webrtc/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lcom/discord/org/webrtc/Size;

    move-result-object v2

    .line 100
    invoke-static {v8, v4, v10, v2, v0}, Lcom/discord/org/webrtc/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;Lcom/discord/org/webrtc/Size;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {v10}, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 110
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_1
    :try_start_4
    invoke-virtual {v8, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    new-instance v13, Lcom/discord/org/webrtc/Camera1Session;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v12}, Lcom/discord/org/webrtc/Camera1Session;-><init>(Lcom/discord/org/webrtc/CameraSession$Events;ZLandroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V

    invoke-interface {p0, v13}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onDone(Lcom/discord/org/webrtc/CameraSession;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 119
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 120
    sget-object v0, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 102
    invoke-static {v8}, Lcom/discord/org/webrtc/Camera1Session;->cameraReleaseSafe(Landroid/hardware/Camera;)V

    .line 103
    sget-object v2, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 87
    :goto_1
    invoke-static {v8}, Lcom/discord/org/webrtc/Camera1Session;->cameraReleaseSafe(Landroid/hardware/Camera;)V

    .line 88
    sget-object v2, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 74
    sget-object v0, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 66
    sget-object v0, Lcom/discord/org/webrtc/CameraSession$FailureType;->ERROR:Lcom/discord/org/webrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lcom/discord/org/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 3

    .line 160
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Available fps ranges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera1Session"

    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v0, p3}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object p3

    .line 167
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/discord/org/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-static {p0, p1, p2}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/discord/org/webrtc/Size;

    move-result-object p0

    .line 168
    sget-object p1, Lcom/discord/org/webrtc/Camera1Session;->camera1ResolutionHistogram:Lcom/discord/org/webrtc/Histogram;

    invoke-static {p1, p0}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lcom/discord/org/webrtc/Histogram;Lcom/discord/org/webrtc/Size;)V

    .line 170
    new-instance p1, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget p2, p0, Lcom/discord/org/webrtc/Size;->width:I

    iget p0, p0, Lcom/discord/org/webrtc/Size;->height:I

    invoke-direct {p1, p2, p0, p3}, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    return-object p1
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lcom/discord/org/webrtc/Size;
    .locals 0

    .line 175
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/discord/org/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 174
    invoke-static {p0, p1, p2}, Lcom/discord/org/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/discord/org/webrtc/Size;

    move-result-object p0

    return-object p0
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraSession;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/discord/org/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/discord/org/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private synthetic lambda$listenForTextureFrames$0(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 6

    .line 270
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 272
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    sget-object v1, Lcom/discord/org/webrtc/Camera1Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p1, "Camera1Session"

    const-string v0, "Texture frame captured but camera is no longer running."

    .line 273
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/discord/org/webrtc/Camera1Session;->firstFrameReported:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 278
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 279
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/discord/org/webrtc/Camera1Session;->constructionTimeNs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 280
    sget-object v2, Lcom/discord/org/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    invoke-virtual {v2, v0}, Lcom/discord/org/webrtc/Histogram;->addSample(I)V

    .line 281
    iput-boolean v1, p0, Lcom/discord/org/webrtc/Camera1Session;->firstFrameReported:Z

    .line 286
    :cond_1
    new-instance v0, Lcom/discord/org/webrtc/VideoFrame;

    .line 288
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v2

    check-cast v2, Lcom/discord/org/webrtc/TextureBufferImpl;

    iget-object v3, p0, Lcom/discord/org/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 287
    :goto_0
    invoke-static {v2, v1, v4}, Lcom/discord/org/webrtc/CameraSession;->createTextureBufferWithModifiedTransformMatrix(Lcom/discord/org/webrtc/TextureBufferImpl;ZI)Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    .line 291
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->getFrameOrientation()I

    move-result v2

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 292
    iget-object p1, p0, Lcom/discord/org/webrtc/Camera1Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    invoke-interface {p1, p0, v0}, Lcom/discord/org/webrtc/CameraSession$Events;->onFrameCaptured(Lcom/discord/org/webrtc/CameraSession;Lcom/discord/org/webrtc/VideoFrame;)V

    .line 293
    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    return-void
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/discord/org/webrtc/Camera1Session$2;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/Camera1Session$2;-><init>(Lcom/discord/org/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    new-instance v1, Lcom/discord/org/webrtc/Camera1Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/Camera1Session$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->startListening(Lcom/discord/org/webrtc/VideoSink;)V

    return-void
.end method

.method private startCapturing()V
    .locals 2

    const-string v0, "Camera1Session"

    const-string v1, "Start capturing"

    .line 212
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 215
    sget-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    .line 217
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/discord/org/webrtc/Camera1Session$1;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/Camera1Session$1;-><init>(Lcom/discord/org/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 236
    iget-boolean v0, p0, Lcom/discord/org/webrtc/Camera1Session;->captureToTexture:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->listenForTextureFrames()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->listenForBytebufferFrames()V

    .line 242
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->stopInternal()V

    .line 245
    iget-object v1, p0, Lcom/discord/org/webrtc/Camera1Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/discord/org/webrtc/CameraSession$Events;->onCameraError(Lcom/discord/org/webrtc/CameraSession;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private stopInternal()V
    .locals 3

    const-string v0, "Stop internal"

    const-string v1, "Camera1Session"

    .line 250
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 252
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    sget-object v2, Lcom/discord/org/webrtc/Camera1Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    if-ne v0, v2, :cond_0

    const-string v0, "Camera is already stopped"

    .line 253
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    iput-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    .line 258
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 262
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 263
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/discord/org/webrtc/Camera1Session;->cameraReleaseSafe(Landroid/hardware/Camera;)V

    .line 264
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->events:Lcom/discord/org/webrtc/CameraSession$Events;

    invoke-interface {v0, p0}, Lcom/discord/org/webrtc/CameraSession$Events;->onCameraClosed(Lcom/discord/org/webrtc/CameraSession;)V

    const-string v0, "Stop done"

    .line 265
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;Lcom/discord/org/webrtc/Size;Z)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 140
    iget-object v1, p2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v2, p2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 141
    iget v1, p2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p2, Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 142
    iget v1, p3, Lcom/discord/org/webrtc/Size;->width:I

    iget p3, p3, Lcom/discord/org/webrtc/Size;->height:I

    invoke-virtual {p1, v1, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    if-nez p4, :cond_0

    .line 144
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 148
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_1
    if-eqz v0, :cond_2

    const-string p2, "continuous-video"

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 151
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 5

    .line 201
    iget v0, p0, Lcom/discord/org/webrtc/Camera1Session;->cameraId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop camera1 session on camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 203
    iget-object v0, p0, Lcom/discord/org/webrtc/Camera1Session;->state:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    sget-object v1, Lcom/discord/org/webrtc/Camera1Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 205
    invoke-direct {p0}, Lcom/discord/org/webrtc/Camera1Session;->stopInternal()V

    .line 206
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 207
    sget-object v1, Lcom/discord/org/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lcom/discord/org/webrtc/Histogram;

    invoke-virtual {v1, v0}, Lcom/discord/org/webrtc/Histogram;->addSample(I)V

    :cond_0
    return-void
.end method
