.class Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;
.super Landroid/os/Handler;
.source "EglThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerWithExceptionCallbacks"
.end annotation


# instance fields
.field private final callbackLock:Ljava/lang/Object;

.field private final exceptionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->callbackLock:Ljava/lang/Object;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->exceptionCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addExceptionCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->callbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->exceptionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 101
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "EglThread"

    const-string v1, "Exception on EglThread"

    .line 103
    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->callbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->exceptionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 106
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p1

    :catchall_0
    move-exception p1

    .line 108
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeExceptionCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->callbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglThread$HandlerWithExceptionCallbacks;->exceptionCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
