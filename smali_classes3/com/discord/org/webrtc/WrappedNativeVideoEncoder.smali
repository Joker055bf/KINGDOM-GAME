.class public abstract Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;
.super Ljava/lang/Object;
.source "WrappedNativeVideoEncoder.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createNative(J)J
.end method

.method public final encode(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getImplementationName()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getScalingSettings()Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initEncode(Lcom/discord/org/webrtc/VideoEncoder$Settings;Lcom/discord/org/webrtc/VideoEncoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract isHardwareEncoder()Z
.end method

.method public final release()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRateAllocation(Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
