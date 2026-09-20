.class public interface abstract Lcom/discord/org/webrtc/VideoEncoderFactory$VideoEncoderSelector;
.super Ljava/lang/Object;
.source "VideoEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoEncoderSelector"
.end annotation


# virtual methods
.method public abstract onAvailableBitrate(I)Lcom/discord/org/webrtc/VideoCodecInfo;
.end method

.method public abstract onCurrentEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)V
.end method

.method public abstract onEncoderBroken()Lcom/discord/org/webrtc/VideoCodecInfo;
.end method

.method public onResolutionChange(II)Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
