.class public Lcom/discord/org/webrtc/AudioTrack;
.super Lcom/discord/org/webrtc/MediaStreamTrack;
.source "AudioTrack.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/MediaStreamTrack;-><init>(J)V

    return-void
.end method

.method private static native nativeSetVolume(JD)V
.end method


# virtual methods
.method getNativeAudioTrack()J
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/discord/org/webrtc/AudioTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    return-wide v0
.end method

.method public setVolume(D)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/discord/org/webrtc/AudioTrack;->getNativeAudioTrack()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/discord/org/webrtc/AudioTrack;->nativeSetVolume(JD)V

    return-void
.end method
