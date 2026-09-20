.class public interface abstract Lcom/discord/org/webrtc/VideoFrame$Buffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/discord/org/webrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Buffer"
.end annotation


# virtual methods
.method public abstract cropAndScale(IIIIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract retain()V
.end method

.method public abstract toI420()Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
.end method
