.class public interface abstract Lcom/discord/org/webrtc/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;,
        Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;,
        Lcom/discord/org/webrtc/VideoEncoder$ResolutionBitrateLimits;,
        Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;,
        Lcom/discord/org/webrtc/VideoEncoder$Callback;,
        Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;,
        Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfoAV1;,
        Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfoH264;,
        Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfoVP9;,
        Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfoVP8;,
        Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;,
        Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;,
        Lcom/discord/org/webrtc/VideoEncoder$Capabilities;,
        Lcom/discord/org/webrtc/VideoEncoder$Settings;
    }
.end annotation


# virtual methods
.method public createNative(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public abstract encode(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public getEncoderInfo()Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;
    .locals 3

    .line 382
    new-instance v0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;-><init>(IZ)V

    return-object v0
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public getResolutionBitrateLimits()[Lcom/discord/org/webrtc/VideoEncoder$ResolutionBitrateLimits;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/discord/org/webrtc/VideoEncoder$ResolutionBitrateLimits;

    return-object v0
.end method

.method public abstract getScalingSettings()Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;
.end method

.method public abstract initEncode(Lcom/discord/org/webrtc/VideoEncoder$Settings;Lcom/discord/org/webrtc/VideoEncoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public isHardwareEncoder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract release()Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public abstract setRateAllocation(Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public setRates(Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 2

    .line 359
    iget-wide v0, p1, Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 360
    iget-object p1, p1, Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;->bitrate:Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;

    invoke-interface {p0, p1, v0}, Lcom/discord/org/webrtc/VideoEncoder;->setRateAllocation(Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method
