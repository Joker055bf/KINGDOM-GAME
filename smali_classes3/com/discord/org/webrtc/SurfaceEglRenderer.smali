.class public Lcom/discord/org/webrtc/SurfaceEglRenderer;
.super Lcom/discord/org/webrtc/EglRenderer;
.source "SurfaceEglRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceEglRenderer"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lcom/discord/org/webrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public static synthetic $r8$lambda$xXX-ywdCqM5leaxXkxy473i7s2A(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceEglRenderer"

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 6

    const-string v0, "Reporting frame resolution changed to "

    .line 130
    iget-object v1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-boolean v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    if-eqz v2, :cond_0

    .line 132
    monitor-exit v1

    return-void

    .line 134
    :cond_0
    iget-boolean v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    const-string v2, "Reporting first rendered frame."

    .line 136
    invoke-direct {p0, v2}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/discord/org/webrtc/RendererCommon$RendererEvents;

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v2}, Lcom/discord/org/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 141
    :cond_1
    iget v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 142
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 143
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    .line 145
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/discord/org/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v4

    .line 147
    invoke-interface {v0, v2, v3, v4}, Lcom/discord/org/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 151
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 152
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 154
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public disableFpsReduction()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    iput-boolean v1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-super {p0}, Lcom/discord/org/webrtc/EglRenderer;->disableFpsReduction()V

    return-void

    :catchall_0
    move-exception v1

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/RendererCommon$RendererEvents;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/discord/org/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 54
    iput-object p2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/discord/org/webrtc/RendererCommon$RendererEvents;

    .line 55
    iget-object p2, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iput-boolean v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    .line 57
    iput v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 58
    iput v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 59
    iput v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 60
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-super {p0, p1, p3, p4}, Lcom/discord/org/webrtc/EglRenderer;->init(Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init(Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->init(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/RendererCommon$RendererEvents;[ILcom/discord/org/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->updateFrameDimensionsAndReportEvents(Lcom/discord/org/webrtc/VideoFrame;)V

    .line 104
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->onFrame(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 95
    :try_start_0
    iput-boolean v1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-super {p0}, Lcom/discord/org/webrtc/EglRenderer;->pauseVideo()V

    return-void

    :catchall_0
    move-exception v1

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFpsReduction(F)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/discord/org/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/discord/org/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "surfaceChanged: format: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 110
    invoke-static {}, Lcom/discord/org/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 111
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->createEglSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/discord/org/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 117
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/discord/org/webrtc/SurfaceEglRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/discord/org/webrtc/SurfaceEglRenderer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Lcom/discord/org/webrtc/SurfaceEglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 119
    invoke-static {p1}, Lcom/discord/org/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
