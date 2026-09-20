.class Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;
.super Ljava/lang/Object;
.source "NativeAndroidVideoTrackSource.java"


# instance fields
.field private final nativeAndroidVideoTrackSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    return-void
.end method

.method static createFrameAdaptationParameters(IIIIIIJZ)Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;
    .locals 11

    .line 83
    new-instance v10, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;-><init>(IIIIIIJZ)V

    return-object v10
.end method

.method private static native nativeAdaptFrame(JIIIJ)Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;
.end method

.method private static native nativeAdaptOutputFormat(JIILjava/lang/Integer;IILjava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method private static native nativeOnFrameCaptured(JIJLcom/discord/org/webrtc/VideoFrame$Buffer;)V
.end method

.method private static native nativeSetIsScreencast(JZ)V
.end method

.method private static native nativeSetState(JZ)V
.end method


# virtual methods
.method public adaptFrame(Lcom/discord/org/webrtc/VideoFrame;)Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;
    .locals 7

    .line 49
    iget-wide v0, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    .line 50
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v4

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v5

    .line 49
    invoke-static/range {v0 .. v6}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAdaptFrame(JIIIJ)Lcom/discord/org/webrtc/VideoProcessor$FrameAdaptationParameters;

    move-result-object p1

    return-object p1
.end method

.method public adaptOutputFormat(Lcom/discord/org/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lcom/discord/org/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9

    .line 70
    iget-wide v0, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    iget v2, p1, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->width:I

    iget v3, p1, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->height:I

    iget v5, p3, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->width:I

    iget v6, p3, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->height:I

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAdaptOutputFormat(JIILjava/lang/Integer;IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onFrameCaptured(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 6

    .line 58
    iget-wide v0, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v5

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeOnFrameCaptured(JIJLcom/discord/org/webrtc/VideoFrame$Buffer;)V

    return-void
.end method

.method public setIsScreencast(Z)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeSetIsScreencast(JZ)V

    return-void
.end method

.method public setState(Z)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeAndroidVideoTrackSource:J

    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/NativeAndroidVideoTrackSource;->nativeSetState(JZ)V

    return-void
.end method
