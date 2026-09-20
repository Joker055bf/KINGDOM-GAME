.class public final Lcom/vk/id/tracking/tracer/TrackingDeps;
.super Ljava/lang/Object;
.source "TrackingDeps.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/id/tracking/tracer/TrackingDeps;",
        "",
        "context",
        "Landroid/content/Context;",
        "clientId",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "crashReporterInternal",
        "Lcom/vk/id/tracking/tracer/TracerCrashReporter;",
        "crashReporter",
        "Lcom/vk/id/tracking/core/CrashReporter;",
        "getCrashReporter",
        "()Lcom/vk/id/tracking/core/CrashReporter;",
        "performanceTracker",
        "Lcom/vk/id/tracking/core/PerformanceTracker;",
        "getPerformanceTracker",
        "()Lcom/vk/id/tracking/core/PerformanceTracker;",
        "analyticsTracking",
        "Lcom/vk/id/tracking/core/AnalyticsTracking;",
        "getAnalyticsTracking",
        "()Lcom/vk/id/tracking/core/AnalyticsTracking;",
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
.field private final analyticsTracking:Lcom/vk/id/tracking/core/AnalyticsTracking;

.field private final crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

.field private final crashReporterInternal:Lcom/vk/id/tracking/tracer/TracerCrashReporter;

.field private final performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

.field private final tracer:Lru/ok/tracer/lite/TracerLite;


# direct methods
.method public static synthetic $r8$lambda$dpu_8yjIswI5GUhHS8Hc6czUo-c(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/tracking/tracer/TrackingDeps;->tracer$lambda$1$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lyZdxQT_RuY2eAwOjZoJ5YCyl6o(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/tracking/tracer/TrackingDeps;->tracer$lambda$1(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Lru/ok/tracer/lite/TracerLite;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.vk.id.tracking.tracer"

    .line 20
    sget-object v2, Lru/ok/tracer/lite/TracerLite$Configuration;->Companion:Lru/ok/tracer/lite/TracerLite$Configuration$Companion;

    new-instance v3, Lcom/vk/id/tracking/tracer/TrackingDeps$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/vk/id/tracking/tracer/TrackingDeps$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Lru/ok/tracer/lite/TracerLite$Configuration$Companion;->build(Lkotlin/jvm/functions/Function1;)Lru/ok/tracer/lite/TracerLite$Configuration;

    move-result-object v2

    .line 17
    invoke-direct {v0, p1, v1, v2}, Lru/ok/tracer/lite/TracerLite;-><init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->tracer:Lru/ok/tracer/lite/TracerLite;

    if-eqz v0, :cond_0

    :try_start_1
    const-string p1, "ClientId"

    .line 39
    invoke-virtual {v0, p1, p2}, Lru/ok/tracer/lite/TracerLite;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 40
    :catchall_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    :cond_0
    :goto_1
    new-instance p1, Lcom/vk/id/tracking/tracer/TracerCrashReporter;

    iget-object p2, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-direct {p1, p2}, Lcom/vk/id/tracking/tracer/TracerCrashReporter;-><init>(Lru/ok/tracer/lite/TracerLite;)V

    iput-object p1, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->crashReporterInternal:Lcom/vk/id/tracking/tracer/TracerCrashReporter;

    .line 45
    move-object p2, p1

    check-cast p2, Lcom/vk/id/tracking/core/CrashReporter;

    iput-object p2, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    .line 46
    new-instance p2, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;

    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-direct {p2, v0}, Lcom/vk/id/tracking/tracer/TracerPerformanceTracker;-><init>(Lru/ok/tracer/lite/TracerLite;)V

    check-cast p2, Lcom/vk/id/tracking/core/PerformanceTracker;

    iput-object p2, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    .line 47
    check-cast p1, Lcom/vk/id/tracking/core/AnalyticsTracking;

    iput-object p1, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->analyticsTracking:Lcom/vk/id/tracking/core/AnalyticsTracking;

    return-void
.end method

.method private static final tracer$lambda$1(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$build"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/vk/id/tracking/tracer/TrackingDeps$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/vk/id/tracking/tracer/TrackingDeps$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->setIoExecutor(Ljava/util/concurrent/Executor;)V

    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final tracer$lambda$1$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 22
    new-instance v0, Lcom/vk/id/tracking/tracer/TrackingDeps$tracer$1$1$1;

    invoke-direct {v0, p0}, Lcom/vk/id/tracking/tracer/TrackingDeps$tracer$1$1$1;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsTracking()Lcom/vk/id/tracking/core/AnalyticsTracking;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->analyticsTracking:Lcom/vk/id/tracking/core/AnalyticsTracking;

    return-object v0
.end method

.method public final getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    return-object v0
.end method

.method public final getPerformanceTracker()Lcom/vk/id/tracking/core/PerformanceTracker;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TrackingDeps;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    return-object v0
.end method
