.class Lcom/discord/org/webrtc/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$mreturnTextureFrame(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    .line 136
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;->onDestroyBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V

    :cond_0
    return-void
.end method

.method public onRelease(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;->onReleaseBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V

    :cond_0
    return-void
.end method

.method public onRetain(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;->onRetainBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V

    :cond_0
    return-void
.end method
