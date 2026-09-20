.class public Lcom/discord/org/webrtc/Camera2Capturer;
.super Lcom/discord/org/webrtc/CameraCapturer;
.source "Camera2Capturer.java"


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/Camera2Enumerator;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/discord/org/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;Lcom/discord/org/webrtc/CameraEnumerator;)V

    .line 24
    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Capturer;->context:Landroid/content/Context;

    const-string p2, "camera"

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->changeCaptureFormat(III)V

    return-void
.end method

.method protected createCameraSession(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 10

    move-object v0, p0

    .line 33
    iget-object v4, v0, Lcom/discord/org/webrtc/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/discord/org/webrtc/Camera2Session;->create(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->dispose()V

    return-void
.end method

.method public bridge synthetic initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V

    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->isScreencast()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->startCapture(III)V

    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->stopCapture()V

    return-void
.end method

.method public bridge synthetic switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/CameraCapturer;->switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method public bridge synthetic switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lcom/discord/org/webrtc/CameraCapturer;->switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method
