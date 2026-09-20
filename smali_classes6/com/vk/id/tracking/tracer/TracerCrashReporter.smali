.class public final Lcom/vk/id/tracking/tracer/TracerCrashReporter;
.super Ljava/lang/Object;
.source "TracerCrashReporter.kt"

# interfaces
.implements Lcom/vk/id/tracking/core/CrashReporter;
.implements Lcom/vk/id/tracking/core/AnalyticsTracking;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracerCrashReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TracerCrashReporter.kt\ncom/vk/id/tracking/tracer/TracerCrashReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016JD\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112!\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u0002H\u00110\u00132\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019Je\u0010\u001a\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u001121\u0010\u0012\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001b2\u001c\u0010\u0017\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0013H\u0096@\u00a2\u0006\u0002\u0010\u001eR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vk/id/tracking/tracer/TracerCrashReporter;",
        "Lcom/vk/id/tracking/core/CrashReporter;",
        "Lcom/vk/id/tracking/core/AnalyticsTracking;",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "<init>",
        "(Lru/ok/tracer/lite/TracerLite;)V",
        "crashReporter",
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;",
        "log",
        "",
        "message",
        "",
        "report",
        "crash",
        "",
        "runReportingCrashes",
        "T",
        "errorValueProvider",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "error",
        "action",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "runReportingCrashesSuspend",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final crashReporter:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;


# direct methods
.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 20
    :try_start_0
    new-instance v1, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;

    invoke-direct {v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;-><init>()V

    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->setObfuscatedNonFatalsEnabled(Z)V

    .line 22
    invoke-virtual {v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->build()Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    move-result-object v1

    .line 18
    new-instance v2, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;

    invoke-direct {v2, p1, v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;-><init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 16
    :catchall_0
    :cond_0
    iput-object v0, p0, Lcom/vk/id/tracking/tracer/TracerCrashReporter;->crashReporter:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TracerCrashReporter;->crashReporter:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public report(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "crash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/vk/id/tracking/tracer/TracerCrashReporter;->crashReporter:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public runReportingCrashes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "errorValueProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 50
    invoke-virtual {p0, p2}, Lcom/vk/id/tracking/tracer/TracerCrashReporter;->report(Ljava/lang/Throwable;)V

    .line 51
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;

    iget v1, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;

    invoke-direct {v0, p0, p3}, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;-><init>(Lcom/vk/id/tracking/tracer/TracerCrashReporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object p2, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/vk/id/tracking/tracer/TracerCrashReporter;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    :try_start_1
    iput-object p0, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p3

    :catchall_1
    move-exception p3

    move-object p2, p0

    .line 64
    :goto_2
    invoke-virtual {p2, p3}, Lcom/vk/id/tracking/tracer/TracerCrashReporter;->report(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 65
    iput-object p2, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/tracking/tracer/TracerCrashReporter$runReportingCrashesSuspend$1;->label:I

    invoke-interface {p1, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    return-object p3

    :catch_0
    move-exception p1

    .line 62
    throw p1
.end method
