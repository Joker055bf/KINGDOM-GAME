.class Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/HardwareVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BusyCount"
.end annotation


# instance fields
.field private count:I

.field private final countLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;-><init>()V

    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->count:I

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public increment()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->count:I

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForZero()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 82
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->countLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "HardwareVideoEncoder"

    const-string v3, "Interrupted while waiting on busy count"

    .line 86
    invoke-static {v2, v3, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 90
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
