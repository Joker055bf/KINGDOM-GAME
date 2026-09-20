.class public interface abstract Lcom/discord/org/webrtc/CameraSession$Events;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract onCameraClosed(Lcom/discord/org/webrtc/CameraSession;)V
.end method

.method public abstract onCameraDisconnected(Lcom/discord/org/webrtc/CameraSession;)V
.end method

.method public abstract onCameraError(Lcom/discord/org/webrtc/CameraSession;Ljava/lang/String;)V
.end method

.method public abstract onCameraOpening()V
.end method

.method public abstract onFrameCaptured(Lcom/discord/org/webrtc/CameraSession;Lcom/discord/org/webrtc/VideoFrame;)V
.end method
