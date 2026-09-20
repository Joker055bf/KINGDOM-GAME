.class public Lcom/discord/org/webrtc/VideoDecoderFallback;
.super Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;
.source "VideoDecoderFallback.java"


# instance fields
.field private final fallback:Lcom/discord/org/webrtc/VideoDecoder;

.field private final primary:Lcom/discord/org/webrtc/VideoDecoder;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/VideoDecoder;Lcom/discord/org/webrtc/VideoDecoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoDecoderFallback;->fallback:Lcom/discord/org/webrtc/VideoDecoder;

    .line 22
    iput-object p2, p0, Lcom/discord/org/webrtc/VideoDecoderFallback;->primary:Lcom/discord/org/webrtc/VideoDecoder;

    return-void
.end method

.method private static native nativeCreate(JLcom/discord/org/webrtc/VideoDecoder;Lcom/discord/org/webrtc/VideoDecoder;)J
.end method


# virtual methods
.method public createNative(J)J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoDecoderFallback;->fallback:Lcom/discord/org/webrtc/VideoDecoder;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoDecoderFallback;->primary:Lcom/discord/org/webrtc/VideoDecoder;

    invoke-static {p1, p2, v0, v1}, Lcom/discord/org/webrtc/VideoDecoderFallback;->nativeCreate(JLcom/discord/org/webrtc/VideoDecoder;Lcom/discord/org/webrtc/VideoDecoder;)J

    move-result-wide p1

    return-wide p1
.end method
