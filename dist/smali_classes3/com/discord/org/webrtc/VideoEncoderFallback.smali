.class public Lcom/discord/org/webrtc/VideoEncoderFallback;
.super Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;
.source "VideoEncoderFallback.java"


# instance fields
.field private final fallback:Lcom/discord/org/webrtc/VideoEncoder;

.field private final primary:Lcom/discord/org/webrtc/VideoEncoder;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/VideoEncoder;Lcom/discord/org/webrtc/VideoEncoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoderFallback;->fallback:Lcom/discord/org/webrtc/VideoEncoder;

    .line 22
    iput-object p2, p0, Lcom/discord/org/webrtc/VideoEncoderFallback;->primary:Lcom/discord/org/webrtc/VideoEncoder;

    return-void
.end method

.method private static native nativeCreate(JLcom/discord/org/webrtc/VideoEncoder;Lcom/discord/org/webrtc/VideoEncoder;)J
.end method


# virtual methods
.method public createNative(J)J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoEncoderFallback;->fallback:Lcom/discord/org/webrtc/VideoEncoder;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoEncoderFallback;->primary:Lcom/discord/org/webrtc/VideoEncoder;

    invoke-static {p1, p2, v0, v1}, Lcom/discord/org/webrtc/VideoEncoderFallback;->nativeCreate(JLcom/discord/org/webrtc/VideoEncoder;Lcom/discord/org/webrtc/VideoEncoder;)J

    move-result-wide p1

    return-wide p1
.end method

.method public isHardwareEncoder()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoEncoderFallback;->primary:Lcom/discord/org/webrtc/VideoEncoder;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoEncoder;->isHardwareEncoder()Z

    move-result v0

    return v0
.end method
