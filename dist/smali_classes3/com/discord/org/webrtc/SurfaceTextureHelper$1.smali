.class Lcom/discord/org/webrtc/SurfaceTextureHelper$1;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/discord/org/webrtc/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$alignTimestamps:Z

.field final synthetic val$frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;

.field final synthetic val$yuvConverter:Lcom/discord/org/webrtc/YuvConverter;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    iput-object p2, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$alignTimestamps:Z

    iput-object p4, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    iput-object p5, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    iput-object p6, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 8

    .line 75
    :try_start_0
    new-instance v7, Lcom/discord/org/webrtc/SurfaceTextureHelper;

    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    iget-object v2, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$alignTimestamps:Z

    iget-object v4, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    iget-object v5, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/discord/org/webrtc/SurfaceTextureHelper;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;Lcom/discord/org/webrtc/SurfaceTextureHelper-IA;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceTextureHelper"

    invoke-static {v2, v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;->call()Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method
