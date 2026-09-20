.class public Lcom/discord/org/webrtc/LibvpxVp8Encoder;
.super Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;
.source "LibvpxVp8Encoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;-><init>()V

    return-void
.end method

.method static native nativeCreate(J)J
.end method


# virtual methods
.method public createNative(J)J
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/LibvpxVp8Encoder;->nativeCreate(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public isHardwareEncoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
