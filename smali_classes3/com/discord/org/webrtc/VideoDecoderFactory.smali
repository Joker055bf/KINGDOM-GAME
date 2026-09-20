.class public interface abstract Lcom/discord/org/webrtc/VideoDecoderFactory;
.super Ljava/lang/Object;
.source "VideoDecoderFactory.java"


# virtual methods
.method public abstract createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
.end method

.method public getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/discord/org/webrtc/VideoCodecInfo;

    return-object v0
.end method
