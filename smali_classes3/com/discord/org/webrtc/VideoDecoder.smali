.class public interface abstract Lcom/discord/org/webrtc/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/VideoDecoder$Callback;,
        Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;,
        Lcom/discord/org/webrtc/VideoDecoder$Settings;
    }
.end annotation


# virtual methods
.method public createNative(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public abstract decode(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract initDecode(Lcom/discord/org/webrtc/VideoDecoder$Settings;Lcom/discord/org/webrtc/VideoDecoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
.end method

.method public abstract release()Lcom/discord/org/webrtc/VideoCodecStatus;
.end method
