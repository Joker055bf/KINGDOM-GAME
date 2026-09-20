.class public final Lcom/vk/id/analytics/stat/EventCounter;
.super Ljava/lang/Object;
.source "EventCounter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vk/id/analytics/stat/EventCounter;",
        "",
        "<init>",
        "()V",
        "startId",
        "",
        "value",
        "prevEventId",
        "getPrevEventId",
        "()I",
        "eventId",
        "getEventId",
        "increment",
        "",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile eventId:I

.field private volatile prevEventId:I

.field private final startId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->startId:I

    .line 13
    iput v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->eventId:I

    return-void
.end method


# virtual methods
.method public final getEventId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->eventId:I

    return v0
.end method

.method public final getPrevEventId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->prevEventId:I

    return v0
.end method

.method public final declared-synchronized increment()V
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->eventId:I

    iput v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->prevEventId:I

    .line 19
    iget v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->eventId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vk/id/analytics/stat/EventCounter;->eventId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
