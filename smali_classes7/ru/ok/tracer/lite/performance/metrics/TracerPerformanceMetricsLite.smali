.class public final Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;
.super Ljava/lang/Object;
.source "TracerPerformanceMetricsLite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002JO\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2*\u0010\u001d\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\u001f0\u001e\"\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\u001f\u00a2\u0006\u0002\u0010 JO\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00182*\u0010\u001d\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\u001f0\u001e\"\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\u001f\u00a2\u0006\u0002\u0010!J4\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00182\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\"H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;",
        "",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "(Lru/ok/tracer/lite/TracerLite;)V",
        "ioExecutor",
        "Ljava/util/concurrent/Executor;",
        "getIoExecutor",
        "()Ljava/util/concurrent/Executor;",
        "limits",
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "queue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
        "tracerIsDisabled",
        "",
        "uploader",
        "Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;",
        "work",
        "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;",
        "prepareUpload",
        "",
        "sample",
        "name",
        "",
        "value",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "attributes",
        "",
        "Lkotlin/Pair;",
        "(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;[Lkotlin/Pair;)V",
        "(Ljava/lang/String;JLjava/lang/String;[Lkotlin/Pair;)V",
        "",
        "tracer-lite-performance-metrics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
            ">;"
        }
    .end annotation
.end field

.field private final tracer:Lru/ok/tracer/lite/TracerLite;

.field private volatile tracerIsDisabled:Z

.field private final uploader:Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;

.field private final work:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;


# direct methods
.method public static synthetic $r8$lambda$zqOMGhuAXc8AtiEzAR0xOOQqGJ8(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;)V
    .locals 0

    invoke-static {p0}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->prepareUpload$lambda$1(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;)V

    return-void
.end method

.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 13
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    .line 21
    sget-object v0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->Companion:Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/limits/TracerLiteLimits;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    .line 23
    new-instance v0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;

    invoke-direct {v0, p1}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;-><init>(Lru/ok/tracer/lite/TracerLite;)V

    iput-object v0, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->uploader:Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;

    .line 24
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    new-instance p1, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite$work$1;

    invoke-direct {v0, p0}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite$work$1;-><init>(Ljava/lang/Object;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1d

    const/4 v12, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;-><init>(Landroid/os/Looper;JJJJLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->work:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    return-void
.end method

.method public static final synthetic access$prepareUpload(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->prepareUpload()V

    return-void
.end method

.method private final getIoExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 22
    sget-object v0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->Companion:Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0, v1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private final prepareUpload()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite$$ExternalSyntheticLambda0;-><init>(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final prepareUpload$lambda$1(Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    const-string v1, "PERFORMANCE_METRICS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->isLimited(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Tracer"

    if-eqz v0, :cond_0

    const-string p0, "Feature PERFORMANCE_METRICS limited"

    .line 83
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    if-nez v3, :cond_2

    .line 86
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v2}, Lru/ok/tracer/lite/TracerLite;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Tracer is disabled"

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->tracerIsDisabled:Z

    return-void

    .line 96
    :cond_1
    iget-object p0, p0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->uploader:Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;

    invoke-virtual {p0, v0}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->upload(Ljava/util/List;)V

    return-void

    :cond_2
    const-string v4, "queue.poll() ?: break"

    .line 88
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final sample(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 60
    iget-boolean v1, v0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->tracerIsDisabled:Z

    const-string v2, "Tracer"

    if-eqz v1, :cond_0

    const-string v1, "Tracer is disabled"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    iget-object v1, v0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    const-string v3, "PERFORMANCE_METRICS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->isLimited(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Feature PERFORMANCE_METRICS limited"

    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_1
    iget-object v1, v0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    .line 70
    invoke-static {}, Lru/ok/tracer/base/sessionuuuid/SessionUuidUtils;->getCurrentSessionUuid()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {}, Lru/ok/tracer/base/time/PrecisionClock;->currentTimeNanos()J

    move-result-wide v7

    move-object v5, v2

    move-object v9, p1

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 69
    invoke-direct/range {v5 .. v13}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->work:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->schedule$default(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final varargs sample(Ljava/lang/String;JLjava/lang/String;[Lkotlin/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    array-length v0, p5

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lkotlin/Pair;

    invoke-static {p5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 47
    invoke-direct/range {v0 .. v5}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->sample(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final varargs sample(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p4}, Lru/ok/tracer/base/ucum/UcumUtils;->getToUcumString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v5

    .line 38
    array-length p4, p5

    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lkotlin/Pair;

    invoke-static {p4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 35
    invoke-direct/range {v1 .. v6}, Lru/ok/tracer/lite/performance/metrics/TracerPerformanceMetricsLite;->sample(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
