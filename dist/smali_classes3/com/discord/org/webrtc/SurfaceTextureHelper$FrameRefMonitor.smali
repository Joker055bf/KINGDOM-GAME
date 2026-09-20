.class public interface abstract Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameRefMonitor"
.end annotation


# virtual methods
.method public abstract onDestroyBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onNewBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onReleaseBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onRetainBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V
.end method
