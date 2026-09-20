.class public Lcom/discord/org/webrtc/Camera1Capturer;
.super Lcom/discord/org/webrtc/CameraCapturer;
.source "Camera1Capturer.java"


# instance fields
.field private final captureToTexture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;Z)V
    .locals 1

    .line 20
    new-instance v0, Lcom/discord/org/webrtc/Camera1Enumerator;

    invoke-direct {v0, p3}, Lcom/discord/org/webrtc/Camera1Enumerator;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/discord/org/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;Lcom/discord/org/webrtc/CameraEnumerator;)V

    .line 22
    iput-boolean p3, p0, Lcom/discord/org/webrtc/Camera1Capturer;->captureToTexture:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->changeCaptureFormat(III)V

    return-void
.end method

.method protected createCameraSession(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 10

    move-object v0, p0

    .line 30
    iget-boolean v3, v0, Lcom/discord/org/webrtc/Camera1Capturer;->captureToTexture:Z

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/discord/org/webrtc/Camera1Session;->create(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;ZLandroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->dispose()V

    return-void
.end method

.method public bridge synthetic initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V

    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->isScreencast()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/discord/org/webrtc/CameraCapturer;->startCapture(III)V

    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/discord/org/webrtc/CameraCapturer;->stopCapture()V

    return-void
.end method

.method public bridge synthetic switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/CameraCapturer;->switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method public bridge synthetic switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/discord/org/webrtc/CameraCapturer;->switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method
