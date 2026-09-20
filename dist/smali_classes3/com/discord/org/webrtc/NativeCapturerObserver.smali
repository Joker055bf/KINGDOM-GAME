.class Lcom/discord/org/webrtc/NativeCapturerObserver;
.super Ljava/lang/Object;
.source "NativeCapturerObserver.java"

# interfaces
.implements Lcom/discord/org/webrtc/CapturerObserver;


# instance fields
.field private final nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;-><init>(J)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    return-void
.end method


# virtual methods
.method public onCapturerStarted(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/discord/org/webrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/discord/org/webrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->setState(Z)V

    return-void
.end method

.method public onFrameCaptured(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/discord/org/webrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    .line 40
    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->adaptFrame(Lcom/discord/org/webrtc/VideoFrame;)Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    iget v2, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->cropX:I

    iget v3, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->cropY:I

    iget v4, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->cropWidth:I

    iget v5, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->cropHeight:I

    iget v6, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->scaleWidth:I

    iget v7, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->scaleHeight:I

    invoke-interface/range {v1 .. v7}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->cropAndScale(IIIIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/discord/org/webrtc/NativeCapturerObserver;->nativeAndroidVideoTrackSource:Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;

    new-instance v3, Lcom/discord/org/webrtc/VideoFrame;

    .line 50
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iget-wide v4, v0, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;->timestampNs:J

    invoke-direct {v3, v1, p1, v4, v5}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 49
    invoke-virtual {v2, v3}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->onFrameCaptured(Lcom/discord/org/webrtc/VideoFrame;)V

    .line 51
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method
