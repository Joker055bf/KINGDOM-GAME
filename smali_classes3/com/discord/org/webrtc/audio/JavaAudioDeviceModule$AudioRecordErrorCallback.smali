.class public interface abstract Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;
.super Ljava/lang/Object;
.source "JavaAudioDeviceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRecordErrorCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioRecordError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordStartError(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;Ljava/lang/String;)V
.end method
