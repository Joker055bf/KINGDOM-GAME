.class public final Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;
.super Ljava/lang/Object;
.source "TracerPerformanceTracker.kt"

# interfaces
.implements Lcom/vk/id/tracking/core/PerformanceTracker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracerPerformanceTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TracerPerformanceTracker.kt\ncom/vk/id/tracking/tracer/TracerPerformanceTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0013\u0008\u0016\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0005H\u0016J4\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u001c\u0010\u0014\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016H\u0096@\u00a2\u0006\u0002\u0010\u0019R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;",
        "Lcom/vk/id/tracking/core/PerformanceTracker;",
        "reporter",
        "Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;",
        "systemClockProvider",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;Lkotlin/jvm/functions/Function0;)V",
        "tracerLite",
        "Lru/ok/tracer/lite/TracerLite;",
        "(Lru/ok/tracer/lite/TracerLite;)V",
        "startTimes",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "startTracking",
        "",
        "key",
        "endTracking",
        "runTracking",
        "action",
        "runTrackingSuspend",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tracking-tracer_release"
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
.field private final reporter:Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;

.field private final startTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final systemClockProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9RchIy_nLLDBFlctmKzE9cdTAl4()J
    .locals 2

    invoke-static {}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 22
    :try_start_0
    new-instance v1, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;

    invoke-direct {v1, p1}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;-><init>(Lru/ok/tracer/lite/TracerLite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v1, v0

    :goto_0
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, v1, v0, p1, v0}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;-><init>(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "systemClockProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->reporter:Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;

    .line 15
    iput-object p2, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->systemClockProvider:Lkotlin/jvm/functions/Function0;

    .line 28
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->startTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 15
    new-instance p2, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;-><init>(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .locals 2

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized endTracking(Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->startTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->systemClockProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long v6, v2, v0

    .line 40
    :try_start_1
    iget-object v4, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->reporter:Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;

    if-eqz v4, :cond_0

    .line 43
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v0, 0x0

    new-array v9, v0, [Lkotlin/Pair;

    move-object v5, p1

    .line 40
    invoke-virtual/range {v4 .. v9}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->sample(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;[Lkotlin/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public runTracking(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->startTracking(Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, p1}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->endTracking(Ljava/lang/String;)V

    return-void
.end method

.method public runTrackingSuspend(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;

    iget v1, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;

    invoke-direct {v0, p0, p3}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;-><init>(Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->startTracking(Ljava/lang/String;)V

    .line 57
    iput-object p0, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker$runTrackingSuspend$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    .line 58
    :goto_1
    invoke-virtual {p2, p1}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->endTracking(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public declared-synchronized startTracking(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->startTimes:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;->systemClockProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
