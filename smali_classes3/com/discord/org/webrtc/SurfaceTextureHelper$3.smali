.class Lcom/discord/org/webrtc/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 162
    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetpendingListener(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/VideoSink;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting listener to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureHelper"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgetpendingListener(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/VideoSink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fputlistener(Lcom/discord/org/webrtc/SurfaceTextureHelper;Lcom/discord/org/webrtc/VideoSink;)V

    .line 167
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fputpendingListener(Lcom/discord/org/webrtc/SurfaceTextureHelper;Lcom/discord/org/webrtc/VideoSink;)V

    .line 169
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fgethasPendingTexture(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$mupdateTexImage(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    .line 172
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;->this$0:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->-$$Nest$fputhasPendingTexture(Lcom/discord/org/webrtc/SurfaceTextureHelper;Z)V

    :cond_0
    return-void
.end method
