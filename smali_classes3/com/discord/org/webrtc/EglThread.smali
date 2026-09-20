.class public Lcom/discord/org/webrtc/EglThread;
.super Ljava/lang/Object;
.source "EglThread.java"

# interfaces
.implements Lcom/discord/org/webrtc/RenderSynchronizer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;,
        Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;,
        Lcom/discord/org/webrtc/EglThread$RenderUpdate;
    }
.end annotation


# instance fields
.field private final eglConnection:Lcom/discord/org/webrtc/EglBase$EglConnection;

.field private final handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

.field private final pendingRenderUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/discord/org/webrtc/EglThread$RenderUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingRenderUpdatesQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/EglThread$RenderUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final releaseMonitor:Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;

.field private final renderSynchronizer:Lcom/discord/org/webrtc/RenderSynchronizer;

.field private renderWindowOpen:Z


# direct methods
.method public static synthetic $r8$lambda$9kYAvJ3doLqfG9RzAJaFfBqEHQI(Lcom/discord/org/webrtc/EglThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglThread;->lambda$onRenderWindowOpen$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rhBZODxsePtLqpUV1MEhU-FmDoQ(Lcom/discord/org/webrtc/EglThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglThread;->lambda$onRenderWindowClose$3()V

    return-void
.end method

.method private constructor <init>(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;Lcom/discord/org/webrtc/EglBase$EglConnection;Lcom/discord/org/webrtc/RenderSynchronizer;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdates:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdatesQueued:Ljava/util/List;

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/discord/org/webrtc/EglThread;->renderWindowOpen:Z

    .line 141
    iput-object p1, p0, Lcom/discord/org/webrtc/EglThread;->releaseMonitor:Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;

    .line 142
    iput-object p2, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    .line 143
    iput-object p3, p0, Lcom/discord/org/webrtc/EglThread;->eglConnection:Lcom/discord/org/webrtc/EglBase$EglConnection;

    .line 144
    iput-object p4, p0, Lcom/discord/org/webrtc/EglThread;->renderSynchronizer:Lcom/discord/org/webrtc/RenderSynchronizer;

    if-eqz p4, :cond_0

    .line 146
    invoke-virtual {p4, p0}, Lcom/discord/org/webrtc/RenderSynchronizer;->registerListener(Lcom/discord/org/webrtc/RenderSynchronizer$Listener;)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglThread;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, p2, v0}, Lcom/discord/org/webrtc/EglThread;->create(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RenderSynchronizer;)Lcom/discord/org/webrtc/EglThread;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglBase$Context;[ILcom/discord/org/webrtc/RenderSynchronizer;)Lcom/discord/org/webrtc/EglThread;
    .locals 2

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EglThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v1, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance v0, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/EglBase$Context;[I)V

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/discord/org/webrtc/EglBase$EglConnection;

    .line 73
    new-instance p2, Lcom/discord/org/webrtc/EglThread;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda1;-><init>()V

    :goto_0
    invoke-direct {p2, p0, v1, p1, p3}, Lcom/discord/org/webrtc/EglThread;-><init>(Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;Lcom/discord/org/webrtc/EglBase$EglConnection;Lcom/discord/org/webrtc/RenderSynchronizer;)V

    return-object p2
.end method

.method static synthetic lambda$create$0(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase$EglConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/discord/org/webrtc/EglBase$EglConnection;->createEgl10([I)Lcom/discord/org/webrtc/EglBase$EglConnection;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/discord/org/webrtc/EglBase$EglConnection;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase$EglConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$create$1(Lcom/discord/org/webrtc/EglThread;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onRenderWindowClose$3()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/discord/org/webrtc/EglThread;->renderWindowOpen:Z

    return-void
.end method

.method private synthetic lambda$onRenderWindowOpen$2()V
    .locals 3

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/discord/org/webrtc/EglThread;->renderWindowOpen:Z

    .line 226
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/EglThread$RenderUpdate;

    .line 227
    invoke-interface {v1, v2}, Lcom/discord/org/webrtc/EglThread$RenderUpdate;->update(Z)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 230
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdatesQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/EglThread$RenderUpdate;

    .line 231
    invoke-interface {v1, v2}, Lcom/discord/org/webrtc/EglThread$RenderUpdate;->update(Z)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdatesQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addExceptionCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->addExceptionCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createEglBaseWithSharedConnection()Lcom/discord/org/webrtc/EglBase;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->eglConnection:Lcom/discord/org/webrtc/EglBase$EglConnection;

    invoke-static {v0}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$EglConnection;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    return-object v0
.end method

.method public onRenderWindowClose()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    new-instance v1, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda4;-><init>(Lcom/discord/org/webrtc/EglThread;)V

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRenderWindowOpen()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    new-instance v1, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda2;-><init>(Lcom/discord/org/webrtc/EglThread;)V

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->releaseMonitor:Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;

    invoke-interface {v0, p0}, Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;->onRelease(Lcom/discord/org/webrtc/EglThread;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->renderSynchronizer:Lcom/discord/org/webrtc/RenderSynchronizer;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0, p0}, Lcom/discord/org/webrtc/RenderSynchronizer;->removeListener(Lcom/discord/org/webrtc/RenderSynchronizer$Listener;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglThread;->eglConnection:Lcom/discord/org/webrtc/EglBase$EglConnection;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda3;-><init>(Lcom/discord/org/webrtc/EglBase$EglConnection;)V

    invoke-virtual {v0, v2}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->post(Ljava/lang/Runnable;)Z

    .line 161
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public removeExceptionCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->handler:Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->removeExceptionCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleRenderUpdate(Lcom/discord/org/webrtc/EglThread$RenderUpdate;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-boolean v0, p0, Lcom/discord/org/webrtc/EglThread;->renderWindowOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-interface {p1, v0}, Lcom/discord/org/webrtc/EglThread$RenderUpdate;->update(Z)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdatesQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public scheduleRenderUpdate(Ljava/util/UUID;Lcom/discord/org/webrtc/EglThread$RenderUpdate;)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/discord/org/webrtc/EglThread;->renderWindowOpen:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 204
    invoke-interface {p2, p1}, Lcom/discord/org/webrtc/EglThread$RenderUpdate;->update(Z)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread;->pendingRenderUpdates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
