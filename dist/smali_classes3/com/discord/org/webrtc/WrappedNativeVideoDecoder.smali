.class public abstract Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;
.super Ljava/lang/Object;
.source "WrappedNativeVideoDecoder.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoDecoder;


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

.method public final decode(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getImplementationName()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initDecode(Lcom/discord/org/webrtc/VideoDecoder$Settings;Lcom/discord/org/webrtc/VideoDecoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final release()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
