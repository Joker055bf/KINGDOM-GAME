.class Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field final synthetic this$0:Lcom/discord/org/webrtc/EglRenderer;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/EglRenderer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lcom/discord/org/webrtc/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    const-string v0, "Invalid surface: "

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v1}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v1}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/discord/org/webrtc/EglBase;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    instance-of v2, v1, Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/discord/org/webrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 84
    :cond_0
    instance-of v1, v1, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/discord/org/webrtc/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V

    const/16 v0, 0xcf5

    const/4 v1, 0x1

    .line 91
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_1

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
