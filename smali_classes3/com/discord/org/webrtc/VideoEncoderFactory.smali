.class public interface abstract Lcom/discord/org/webrtc/VideoEncoderFactory;
.super Ljava/lang/Object;
.source "VideoEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/VideoEncoderFactory$VideoEncoderSelector;
    }
.end annotation


# virtual methods
.method public abstract createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;
.end method

.method public getEncoderSelector()Lcom/discord/org/webrtc/VideoEncoderFactory$VideoEncoderSelector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementations()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 1

    .line 61
    invoke-interface {p0}, Lcom/discord/org/webrtc/VideoEncoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
.end method
