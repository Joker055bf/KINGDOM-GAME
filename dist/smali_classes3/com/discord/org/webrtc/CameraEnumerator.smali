.class public interface abstract Lcom/discord/org/webrtc/CameraEnumerator;
.super Ljava/lang/Object;
.source "CameraEnumerator.java"


# virtual methods
.method public abstract createCapturer(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lcom/discord/org/webrtc/CameraVideoCapturer;
.end method

.method public abstract getDeviceNames()[Ljava/lang/String;
.end method

.method public abstract getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBackFacing(Ljava/lang/String;)Z
.end method

.method public abstract isFrontFacing(Ljava/lang/String;)Z
.end method
