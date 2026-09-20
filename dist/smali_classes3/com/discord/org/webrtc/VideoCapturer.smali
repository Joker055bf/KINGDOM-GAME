.class public interface abstract Lcom/discord/org/webrtc/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# virtual methods
.method public abstract changeCaptureFormat(III)V
.end method

.method public abstract dispose()V
.end method

.method public abstract initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V
.end method

.method public abstract isScreencast()Z
.end method

.method public abstract startCapture(III)V
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
