.class interface abstract Lcom/discord/org/webrtc/FileVideoCapturer$VideoReader;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VideoReader"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getNextFrame()Lcom/discord/org/webrtc/VideoFrame;
.end method
