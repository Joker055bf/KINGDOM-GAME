.class public Lcom/discord/org/webrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lcom/discord/org/webrtc/EglBase;

.field private final frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

.field private frameRotation:I

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lcom/discord/org/webrtc/VideoSink;

.field private final oesTextureId:I

.field private pendingListener:Lcom/discord/org/webrtc/VideoSink;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHeight:I

.field private final textureRefCountMonitor:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

.field private textureWidth:I

.field private final timestampAligner:Lcom/discord/org/webrtc/TimestampAligner;

.field private final yuvConverter:Lcom/discord/org/webrtc/YuvConverter;


# direct methods
.method public static synthetic $r8$lambda$5Uf_GZQo2JCX9_ZhHN8pndS0-lY(Lcom/discord/org/webrtc/SurfaceTextureHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$setFrameRotation$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6q7n5TvbSyjNlS2c2mBhlGpkUcg(Lcom/discord/org/webrtc/SurfaceTextureHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$setTextureSize$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$S7eQnM0LNJVegtu2TTMn_nbhnzw(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$forceFrame$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$bHJ7_NEWlyW44wxVwyZF1SwuVME(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$dispose$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$o3Z_UFW6XMfhQe3PHLqk9iFZE1Q(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$stopListening$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$o5hcUm7_Dy0YDpOYvPgGpiSMhd8(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$new$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWpIwyXVgWlISUifi4Jmx-G9q0E(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->lambda$returnTextureFrame$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetframeRefMonitor(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasPendingTexture(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingListener(Lcom/discord/org/webrtc/SurfaceTextureHelper;)Lcom/discord/org/webrtc/VideoSink;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/discord/org/webrtc/VideoSink;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasPendingTexture(Lcom/discord/org/webrtc/SurfaceTextureHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistener(Lcom/discord/org/webrtc/SurfaceTextureHelper;Lcom/discord/org/webrtc/VideoSink;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->listener:Lcom/discord/org/webrtc/VideoSink;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingListener(Lcom/discord/org/webrtc/SurfaceTextureHelper;Lcom/discord/org/webrtc/VideoSink;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/discord/org/webrtc/VideoSink;

    return-void
.end method

.method static bridge synthetic -$$Nest$mreturnTextureFrame(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTexImage(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method private constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$2;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    .line 162
    new-instance v0, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$3;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 179
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 182
    iput-object p2, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 183
    new-instance p3, Lcom/discord/org/webrtc/TimestampAligner;

    invoke-direct {p3}, Lcom/discord/org/webrtc/TimestampAligner;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/discord/org/webrtc/TimestampAligner;

    .line 184
    iput-object p4, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    .line 185
    iput-object p5, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 187
    sget-object p3, Lcom/discord/org/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, p3}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->eglBase:Lcom/discord/org/webrtc/EglBase;

    .line 190
    :try_start_0
    invoke-interface {p1}, Lcom/discord/org/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 191
    invoke-interface {p1}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 199
    invoke-static {p1}, Lcom/discord/org/webrtc/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 200
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    new-instance p1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda6;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 194
    iget-object p3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {p3}, Lcom/discord/org/webrtc/EglBase;->release()V

    .line 195
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 196
    throw p1

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;Lcom/discord/org/webrtc/SurfaceTextureHelper-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/discord/org/webrtc/SurfaceTextureHelper;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 3

    .line 92
    new-instance v0, Lcom/discord/org/webrtc/YuvConverter;

    invoke-direct {v0}, Lcom/discord/org/webrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;Z)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 2

    .line 103
    new-instance v0, Lcom/discord/org/webrtc/YuvConverter;

    invoke-direct {v0}, Lcom/discord/org/webrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 9

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v8

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/discord/org/webrtc/SurfaceTextureHelper$1;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method private synthetic lambda$dispose$6()V
    .locals 1

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 313
    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->release()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$forceFrame$3()V
    .locals 1

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 263
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 202
    iget-boolean p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz p1, :cond_0

    const-string p1, "SurfaceTextureHelper"

    const-string v0, "A frame is already pending, dropping frame."

    .line 203
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 207
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method private synthetic lambda$returnTextureFrame$5()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 292
    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->release()V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFrameRotation$4(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->frameRotation:I

    return-void
.end method

.method private synthetic lambda$setTextureSize$2(II)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureWidth:I

    .line 251
    iput p2, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureHeight:I

    .line 252
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method private synthetic lambda$stopListening$1()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->listener:Lcom/discord/org/webrtc/VideoSink;

    .line 232
    iput-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/discord/org/webrtc/VideoSink;

    return-void
.end method

.method private release()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 378
    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/YuvConverter;->release()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 382
    iget v2, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->oesTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 383
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 384
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->release()V

    .line 385
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 386
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/discord/org/webrtc/TimestampAligner;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/discord/org/webrtc/TimestampAligner;->dispose()V

    :cond_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private returnTextureFrame()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 13

    .line 339
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 342
    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->listener:Lcom/discord/org/webrtc/VideoSink;

    if-nez v0, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    iget v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureHeight:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 354
    invoke-direct {p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->updateTexImage()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 357
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 358
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    .line 359
    iget-object v3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/discord/org/webrtc/TimestampAligner;

    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {v3, v1, v2}, Lcom/discord/org/webrtc/TimestampAligner;->translateTimestamp(J)J

    move-result-wide v1

    .line 362
    :cond_2
    new-instance v12, Lcom/discord/org/webrtc/TextureBufferImpl;

    iget v4, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureWidth:I

    iget v5, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureHeight:I

    sget-object v6, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lcom/discord/org/webrtc/VideoFrame$TextureBuffer$Type;

    iget v7, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 364
    invoke-static {v0}, Lcom/discord/org/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    iget-object v11, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/discord/org/webrtc/TextureBufferImpl;-><init>(IILcom/discord/org/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/discord/org/webrtc/YuvConverter;Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;)V

    .line 366
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    if-eqz v0, :cond_3

    .line 367
    invoke-interface {v0, v12}, Lcom/discord/org/webrtc/SurfaceTextureHelper$FrameRefMonitor;->onNewBuffer(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)V

    .line 369
    :cond_3
    new-instance v0, Lcom/discord/org/webrtc/VideoFrame;

    iget v3, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->frameRotation:I

    invoke-direct {v0, v12, v3, v1, v2}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 370
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->listener:Lcom/discord/org/webrtc/VideoSink;

    invoke-interface {v1, v0}, Lcom/discord/org/webrtc/VideoSink;->onFrame(Lcom/discord/org/webrtc/VideoFrame;)V

    .line 371
    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    return-void

    :cond_4
    :goto_0
    const-string v0, "SurfaceTextureHelper"

    const-string v1, "Texture size has not been set."

    .line 348
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 340
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateTexImage()V
    .locals 2

    .line 333
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "dispose()"

    .line 310
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceFrame()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public setFrameRotation(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 249
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda5;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture height must be positive, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture width must be positive, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public startListening(Lcom/discord/org/webrtc/VideoSink;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->listener:Lcom/discord/org/webrtc/VideoSink;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/discord/org/webrtc/VideoSink;

    if-nez v0, :cond_0

    .line 219
    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/discord/org/webrtc/VideoSink;

    .line 220
    iget-object p1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTextureHelper listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopListening()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string/jumbo v1, "stopListening()"

    .line 228
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda3;-><init>(Lcom/discord/org/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public textureToYuv(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->toI420()Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method
