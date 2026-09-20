.class public Lcom/discord/org/webrtc/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;,
        Lcom/discord/org/webrtc/EglRenderer$FrameListener;,
        Lcom/discord/org/webrtc/EglRenderer$RenderListener;,
        Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;,
        Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

.field private eglBase:Lcom/discord/org/webrtc/EglBase;

.field private final eglExceptionCallback:Ljava/lang/Runnable;

.field private final eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

.field private eglThread:Lcom/discord/org/webrtc/EglThread;

.field private volatile errorCallback:Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private id:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirrorHorizontally:Z

.field private mirrorVertically:Z

.field protected final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

.field private final renderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/discord/org/webrtc/EglRenderer$RenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderSwapBufferTimeNs:J

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private final threadLock:Ljava/lang/Object;

.field private usePresentationTimeStamp:Z


# direct methods
.method public static synthetic $r8$lambda$1Oxo9FJ52ocM5qi6Jg7rQn5gRLA(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->lambda$addFrameListener$1(Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVjXDp2oprUJPTbWdv_nYShVSfU(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->lambda$release$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HK2dYui7BQa144-Wv22_0qlpa1A(Lcom/discord/org/webrtc/EglRenderer;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->lambda$clearImage$5(FFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdKV8d6_pmC6nb4VRIj2r0w6jxE(Lcom/discord/org/webrtc/EglRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$RiRjEhcDqsYm6Cio1MiDAwN7rg8(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$FrameListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/EglRenderer;->lambda$removeFrameListener$2(Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$FrameListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zs_ok4P8B2OXs7KuDBBVc7okXhI(Lcom/discord/org/webrtc/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->lambda$releaseEglSurface$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aY92OGVCbWYq3gMRKqc6mgcHVSg(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/VideoFrame;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->lambda$swapBuffersOnRenderThread$6(Lcom/discord/org/webrtc/VideoFrame;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCcZW4hwVtOKI9erUbbuqN_MKsI(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/EglRenderer;->lambda$removeRenderListener$3(Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeteglBase(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglBase;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteglThread(Lcom/discord/org/webrtc/EglRenderer;)Lcom/discord/org/webrtc/EglThread;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlogStatisticsRunnable(Lcom/discord/org/webrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthreadLock(Lcom/discord/org/webrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputeglThread(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/EglThread;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogStatistics(Lcom/discord/org/webrtc/EglRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglRenderer;->logStatistics()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/discord/org/webrtc/EglRenderer;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/VideoFrameDrawer;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->id:Ljava/util/Optional;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/discord/org/webrtc/EglRenderer$1;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/EglRenderer$1;-><init>(Lcom/discord/org/webrtc/EglRenderer;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglExceptionCallback:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->renderListeners:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    .line 169
    new-instance v0, Lcom/discord/org/webrtc/EglRenderer$2;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/EglRenderer$2;-><init>(Lcom/discord/org/webrtc/EglRenderer;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation-IA;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    .line 194
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->name:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    return-void
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 3

    if-gtz p3, :cond_0

    const-string p1, "NA"

    goto :goto_0

    .line 825
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p3

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " us"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearSurface"

    .line 608
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V

    .line 610
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 611
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 612
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {p1}, Lcom/discord/org/webrtc/EglBase;->swapBuffers()V

    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$addFrameListener$1(Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 463
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;-><init>(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$clearImage$5(FFFF)V
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method private synthetic lambda$release$0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 298
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 299
    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/discord/org/webrtc/RendererCommon$GlDrawer;->release()V

    .line 303
    iput-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;->release()V

    .line 306
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->release()V

    .line 308
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    if-eqz v0, :cond_1

    const-string v0, "eglBase detach and release."

    .line 309
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->detachCurrent()V

    .line 311
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->release()V

    .line 312
    iput-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->renderListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    .line 300
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$releaseEglSurface$4(Ljava/lang/Runnable;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->detachCurrent()V

    .line 585
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->releaseSurface()V

    .line 587
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$removeFrameListener$2(Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$FrameListener;)V
    .locals 1

    .line 496
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 497
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 498
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v0, v0, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    if-ne v0, p2, :cond_0

    .line 500
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$removeRenderListener$3(Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V
    .locals 1

    .line 526
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 527
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->renderListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 528
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 530
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$swapBuffersOnRenderThread$6(Lcom/discord/org/webrtc/VideoFrame;JZ)V
    .locals 4

    if-nez p4, :cond_2

    .line 643
    iget-object p4, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/discord/org/webrtc/EglBase;->hasSurface()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    iget-object p4, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {p4}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    :goto_1
    iget-boolean p4, p0, Lcom/discord/org/webrtc/EglRenderer;->usePresentationTimeStamp:Z

    if-eqz p4, :cond_3

    .line 650
    iget-object p4, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Lcom/discord/org/webrtc/EglBase;->swapBuffers(J)V

    goto :goto_2

    .line 652
    :cond_3
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {p1}, Lcom/discord/org/webrtc/EglBase;->swapBuffers()V

    .line 655
    :goto_2
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->renderListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/discord/org/webrtc/EglRenderer$RenderListener;

    .line 656
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Lcom/discord/org/webrtc/EglRenderer$RenderListener;->onRender(J)V

    goto :goto_3

    .line 659
    :cond_4
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 660
    :try_start_0
    iget-wide v0, p0, Lcom/discord/org/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/discord/org/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 661
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private logStatistics()V
    .locals 14

    const-string v0, "Duration: "

    .line 829
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 831
    iget-object v4, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 832
    :try_start_0
    iget-wide v5, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsStartTimeNs:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 833
    iget-wide v7, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget v7, p0, Lcom/discord/org/webrtc/EglRenderer;->framesReceived:I

    if-nez v7, :cond_0

    goto/16 :goto_0

    .line 836
    :cond_0
    iget v7, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    mul-long/2addr v7, v9

    long-to-float v7, v7

    long-to-float v8, v5

    div-float/2addr v7, v8

    .line 837
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iget v8, p0, Lcom/discord/org/webrtc/EglRenderer;->framesReceived:I

    iget v9, p0, Lcom/discord/org/webrtc/EglRenderer;->framesDropped:I

    iget v10, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    float-to-double v11, v7

    .line 841
    invoke-virtual {v1, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v11, p0, Lcom/discord/org/webrtc/EglRenderer;->renderTimeNs:J

    iget v7, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    .line 842
    invoke-direct {p0, v11, v12, v7}, Lcom/discord/org/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    iget-wide v11, p0, Lcom/discord/org/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    iget v13, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    .line 844
    invoke-direct {p0, v11, v12, v13}, Lcom/discord/org/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ms. Frames received: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Dropped: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Rendered: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Render fps: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Average render time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Average swapBuffer time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 845
    invoke-direct {p0, v2, v3}, Lcom/discord/org/webrtc/EglRenderer;->resetStatistics(J)V

    .line 846
    monitor-exit v4

    return-void

    .line 834
    :cond_1
    :goto_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    .line 846
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logW(Ljava/lang/String;)V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCallbacks(Lcom/discord/org/webrtc/VideoFrame;Z)V
    .locals 15

    move-object v0, p0

    .line 774
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 777
    :cond_0
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 778
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 779
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, v0, Lcom/discord/org/webrtc/EglRenderer;->mirrorHorizontally:Z

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-boolean v5, v0, Lcom/discord/org/webrtc/EglRenderer;->mirrorVertically:Z

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 780
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 781
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 783
    iget-object v1, v0, Lcom/discord/org/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 784
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 785
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;

    if-nez p2, :cond_3

    .line 786
    iget-boolean v3, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-eqz v3, :cond_3

    goto :goto_2

    .line 789
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 791
    iget v3, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 792
    iget v4, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v12, v4

    if-eqz v3, :cond_5

    if-nez v12, :cond_4

    goto :goto_3

    .line 799
    :cond_4
    iget-object v4, v0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4, v3, v12}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 801
    iget-object v4, v0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v4

    const v13, 0x8d40

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 802
    iget-object v4, v0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    .line 803
    invoke-virtual {v4}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v4

    const v5, 0x8ce0

    const/16 v6, 0xde1

    const/4 v14, 0x0

    .line 802
    invoke-static {v13, v5, v6, v4, v14}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v4, 0x0

    .line 805
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    .line 806
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 807
    iget-object v4, v0, Lcom/discord/org/webrtc/EglRenderer;->frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    iget-object v6, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    iget-object v7, v0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawFrame(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    mul-int v4, v3, v12

    mul-int/lit8 v4, v4, 0x4

    .line 810
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 811
    invoke-static {v14, v14, v3, v12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v6, v3

    move v7, v12

    move-object v10, v11

    .line 812
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 815
    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v4, "EglRenderer.notifyCallbacks"

    .line 816
    invoke-static {v4}, Lcom/discord/org/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 818
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 819
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 820
    iget-object v2, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    invoke-interface {v2, v3}, Lcom/discord/org/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 795
    :cond_5
    :goto_3
    iget-object v2, v2, Lcom/discord/org/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/discord/org/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private renderFrameOnRenderThread()V
    .locals 14

    .line 677
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v9, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    if-nez v9, :cond_0

    .line 679
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 682
    iput-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    .line 683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 684
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V

    .line 693
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_1
    iget-wide v1, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-nez v3, :cond_2

    :goto_0
    move v11, v4

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_3

    :goto_1
    move v11, v10

    goto :goto_2

    .line 701
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 702
    iget-wide v5, p0, Lcom/discord/org/webrtc/EglRenderer;->nextFrameTimeNs:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_4

    const-string v1, "Skipping frame rendering - fps reduction is active."

    .line 703
    invoke-direct {p0, v1}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_4
    iget-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/discord/org/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 708
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/discord/org/webrtc/EglRenderer;->nextFrameTimeNs:J

    goto :goto_1

    .line 712
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 714
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 716
    invoke-virtual {v9}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 718
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_2
    iget v2, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, v0

    .line 720
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpl-float v1, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_6

    div-float/2addr v2, v0

    move v0, v4

    goto :goto_4

    :cond_6
    div-float/2addr v0, v2

    move v2, v4

    .line 733
    :goto_4
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 734
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 735
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    iget-boolean v5, p0, Lcom/discord/org/webrtc/EglRenderer;->mirrorHorizontally:Z

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_5

    :cond_7
    move v5, v4

    :goto_5
    iget-boolean v7, p0, Lcom/discord/org/webrtc/EglRenderer;->mirrorVertically:Z

    if-eqz v7, :cond_8

    move v4, v6

    :cond_8
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 736
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 737
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v11, :cond_9

    .line 741
    :try_start_3
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 742
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 743
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    iget-object v4, p0, Lcom/discord/org/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    .line 744
    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->surfaceWidth()I

    move-result v7

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->surfaceHeight()I

    move-result v8

    move-object v2, v9

    .line 743
    invoke-virtual/range {v1 .. v8}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawFrame(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 746
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 747
    invoke-direct {p0, v9, v0, v1}, Lcom/discord/org/webrtc/EglRenderer;->swapBuffersOnRenderThread(Lcom/discord/org/webrtc/VideoFrame;J)V

    .line 749
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Lcom/discord/org/webrtc/GlUtil$GlOutOfMemoryException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 750
    :try_start_4
    iget v3, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    add-int/2addr v3, v10

    iput v3, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    .line 751
    iget-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->renderTimeNs:J

    sub-long/2addr v0, v12

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->renderTimeNs:J

    .line 752
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 755
    :cond_9
    :goto_6
    invoke-direct {p0, v9, v11}, Lcom/discord/org/webrtc/EglRenderer;->notifyCallbacks(Lcom/discord/org/webrtc/VideoFrame;Z)V
    :try_end_5
    .catch Lcom/discord/org/webrtc/GlUtil$GlOutOfMemoryException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 769
    :goto_7
    invoke-virtual {v9}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "Error while drawing frame"

    .line 757
    invoke-direct {p0, v1, v0}, Lcom/discord/org/webrtc/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->errorCallback:Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;

    if-eqz v0, :cond_a

    .line 760
    invoke-interface {v0}, Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;->onGlOutOfMemory()V

    .line 763
    :cond_a
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/RendererCommon$GlDrawer;->release()V

    .line 764
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;->release()V

    .line 765
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :goto_8
    return-void

    .line 769
    :goto_9
    invoke-virtual {v9}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    .line 770
    throw v0

    :catchall_2
    move-exception v0

    .line 720
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 712
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :cond_b
    :goto_a
    const-string v0, "Dropping frame - No surface"

    .line 685
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v9}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    return-void

    :catchall_4
    move-exception v1

    .line 683
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method private resetStatistics(J)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iput-wide p1, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsStartTimeNs:J

    const/4 p1, 0x0

    .line 341
    iput p1, p0, Lcom/discord/org/webrtc/EglRenderer;->framesReceived:I

    .line 342
    iput p1, p0, Lcom/discord/org/webrtc/EglRenderer;->framesDropped:I

    .line 343
    iput p1, p0, Lcom/discord/org/webrtc/EglRenderer;->framesRendered:I

    const-wide/16 p1, 0x0

    .line 344
    iput-wide p1, p0, Lcom/discord/org/webrtc/EglRenderer;->renderTimeNs:J

    .line 345
    iput-wide p1, p0, Lcom/discord/org/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 346
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private swapBuffersOnRenderThread(Lcom/discord/org/webrtc/VideoFrame;J)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v1, :cond_0

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_0
    new-instance v1, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;-><init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/VideoFrame;J)V

    .line 663
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->id:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    iget-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->id:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p1, p2, v1}, Lcom/discord/org/webrtc/EglThread;->scheduleRenderUpdate(Ljava/util/UUID;Lcom/discord/org/webrtc/EglThread$RenderUpdate;)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {p1, v1}, Lcom/discord/org/webrtc/EglThread;->scheduleRenderUpdate(Lcom/discord/org/webrtc/EglThread$RenderUpdate;)V

    .line 668
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/discord/org/webrtc/EglRenderer;->addFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/EglRenderer;->addFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;FLcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 7

    .line 462
    new-instance v6, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lcom/discord/org/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRenderListener(Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->renderListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/discord/org/webrtc/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 627
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v1, :cond_0

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :cond_0
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/discord/org/webrtc/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 415
    invoke-virtual {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public init(Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/EglRenderer;->init(Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-static {v0, p1, p2}, Lcom/discord/org/webrtc/EglThread;->create(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglThread;

    move-result-object p1

    .line 252
    invoke-virtual {p0, p1, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->init(Lcom/discord/org/webrtc/EglThread;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Lcom/discord/org/webrtc/EglThread;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v1, :cond_0

    const-string v1, "Initializing EglRenderer"

    .line 205
    invoke-direct {p0, v1}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    .line 207
    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->drawer:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    .line 208
    iput-boolean p3, p0, Lcom/discord/org/webrtc/EglRenderer;->usePresentationTimeStamp:Z

    .line 210
    iget-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglExceptionCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/discord/org/webrtc/EglThread;->addExceptionCallback(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglThread;->createEglBaseWithSharedConnection()Lcom/discord/org/webrtc/EglBase;

    move-result-object p2

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    .line 213
    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    .line 216
    invoke-direct {p0, p2, p3}, Lcom/discord/org/webrtc/EglRenderer;->resetStatistics(J)V

    .line 218
    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    .line 219
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 218
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    monitor-exit v0

    return-void

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lcom/discord/org/webrtc/EglRenderer;->name:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init(Lcom/discord/org/webrtc/EglThread;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;ZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 235
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    iput-object p4, p0, Lcom/discord/org/webrtc/EglRenderer;->id:Ljava/util/Optional;

    .line 237
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/discord/org/webrtc/EglRenderer;->init(Lcom/discord/org/webrtc/EglThread;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/EglRenderer;->framesReceived:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/discord/org/webrtc/EglRenderer;->framesReceived:I

    .line 548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 550
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v0, :cond_0

    const-string p1, "Dropping frame - Not initialized or already released."

    .line 552
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 553
    monitor-exit v1

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 556
    :try_start_2
    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 558
    invoke-virtual {v3}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    .line 560
    :cond_2
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    .line 561
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->retain()V

    .line 562
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda6;-><init>(Lcom/discord/org/webrtc/EglRenderer;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    .line 566
    iget-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 567
    :try_start_4
    iget v0, p0, Lcom/discord/org/webrtc/EglRenderer;->framesDropped:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/discord/org/webrtc/EglRenderer;->framesDropped:I

    .line 568
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 563
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :catchall_2
    move-exception p1

    .line 564
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 548
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 355
    array-length v2, v1

    if-lez v2, :cond_1

    const-string v2, "EglRenderer stack trace:"

    .line 356
    invoke-direct {p0, v2}, Lcom/discord/org/webrtc/EglRenderer;->logW(Ljava/lang/String;)V

    .line 357
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 358
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/discord/org/webrtc/EglRenderer;->logW(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 362
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    const-string v0, "Releasing."

    .line 285
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v2, :cond_0

    const-string v0, "Already released"

    .line 289
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 290
    monitor-exit v1

    return-void

    .line 292
    :cond_0
    invoke-virtual {v2}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->eglExceptionCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/discord/org/webrtc/EglThread;->removeExceptionCallback(Ljava/lang/Runnable;)V

    .line 296
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 321
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/EglThread;->release()V

    const/4 v2, 0x0

    .line 322
    iput-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    invoke-static {v0}, Lcom/discord/org/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 326
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_1
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v1}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    .line 329
    iput-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->pendingFrame:Lcom/discord/org/webrtc/VideoFrame;

    .line 331
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Releasing done."

    .line 332
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 331
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 323
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/discord/org/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;-><init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 591
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeFrameListener(Lcom/discord/org/webrtc/EglRenderer$FrameListener;)V
    .locals 4

    .line 487
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 488
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v2, :cond_0

    .line 490
    monitor-exit v1

    return-void

    .line 492
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 495
    new-instance v2, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda7;-><init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$FrameListener;)V

    invoke-direct {p0, v2}, Lcom/discord/org/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 504
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {v0}, Lcom/discord/org/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 493
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeFrameListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 504
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeRenderListener(Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V
    .locals 4

    .line 516
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 517
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer;->threadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    if-nez v2, :cond_0

    .line 519
    monitor-exit v1

    return-void

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/discord/org/webrtc/EglRenderer;->eglThread:Lcom/discord/org/webrtc/EglThread;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/EglThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 524
    new-instance v2, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V

    invoke-direct {p0, v2}, Lcom/discord/org/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-static {v0}, Lcom/discord/org/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 522
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeRenderListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 534
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setErrorCallback(Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer;->errorCallback:Lcom/discord/org/webrtc/EglRenderer$ErrorCallback;

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-wide v1, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    .line 403
    iput-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 405
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, p1

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 407
    :goto_0
    iget-wide v3, p0, Lcom/discord/org/webrtc/EglRenderer;->minRenderPeriodNs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 409
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/discord/org/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 411
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iput p1, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutAspectRatio:F

    .line 390
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirror(Z)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iput-boolean p1, p0, Lcom/discord/org/webrtc/EglRenderer;->mirrorHorizontally:Z

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirrorVertically(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iput-boolean p1, p0, Lcom/discord/org/webrtc/EglRenderer;->mirrorVertically:Z

    .line 380
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
