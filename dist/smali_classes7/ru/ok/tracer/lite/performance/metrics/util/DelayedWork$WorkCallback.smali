.class final Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;
.super Ljava/lang/Object;
.source "DelayedWork.kt"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;",
        "Landroid/os/Handler$Callback;",
        "(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)V",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.field final synthetic this$0:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;


# direct methods
.method public constructor <init>(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;->this$0:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;->this$0:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    invoke-static {p1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->access$getAtomicState$p(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;

    invoke-virtual {v0}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;->getNONE()Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;->this$0:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;

    invoke-static {p1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->access$getBlock$p(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
