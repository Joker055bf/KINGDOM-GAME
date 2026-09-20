.class public Lcom/discord/org/webrtc/LibvpxVp9Decoder;
.super Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;
.source "LibvpxVp9Decoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;-><init>()V

    return-void
.end method

.method static native nativeCreateDecoder()J
.end method

.method static native nativeIsSupported()Z
.end method


# virtual methods
.method public createNative(J)J
    .locals 0

    .line 16
    invoke-static {}, Lcom/discord/org/webrtc/LibvpxVp9Decoder;->nativeCreateDecoder()J

    move-result-wide p1

    return-wide p1
.end method
