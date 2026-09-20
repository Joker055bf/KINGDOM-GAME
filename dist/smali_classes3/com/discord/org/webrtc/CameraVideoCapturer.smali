.class public interface abstract Lcom/discord/org/webrtc/CameraVideoCapturer;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/CameraVideoCapturer$CameraStatistics;,
        Lcom/discord/org/webrtc/CameraVideoCapturer$MediaRecorderHandler;,
        Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;,
        Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;
    }
.end annotation


# virtual methods
.method public addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lcom/discord/org/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Deprecated and not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeMediaRecorderFromCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated and not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
.end method

.method public abstract switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
.end method
