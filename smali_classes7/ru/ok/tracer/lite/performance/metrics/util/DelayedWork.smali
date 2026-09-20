.class public final Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;
.super Ljava/lang/Object;
.source "DelayedWork.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;,
        Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;,
        Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelayedWork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelayedWork.kt\nru/ok/tracer/lite/performance/metrics/util/DelayedWork\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0003\u0015\u0016\u0017BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0007R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;",
        "",
        "looper",
        "Landroid/os/Looper;",
        "minDelayMillis",
        "",
        "maxDelayMillis",
        "minAmount",
        "maxAmount",
        "block",
        "Lkotlin/Function0;",
        "",
        "(Landroid/os/Looper;JJJJLkotlin/jvm/functions/Function0;)V",
        "atomicState",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;",
        "handler",
        "Landroid/os/Handler;",
        "schedule",
        "amount",
        "",
        "Companion",
        "State",
        "WorkCallback",
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


# static fields
.field private static final Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$Companion;

.field private static final MSG_RUN:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final atomicState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;",
            ">;"
        }
    .end annotation
.end field

.field private final block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final maxAmount:J

.field private final maxDelayMillis:J

.field private final minAmount:J

.field private final minDelayMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;JJJJLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "JJJJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p2, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->minDelayMillis:J

    .line 13
    iput-wide p4, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->maxDelayMillis:J

    .line 14
    iput-wide p6, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->minAmount:J

    .line 15
    iput-wide p8, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->maxAmount:J

    .line 16
    iput-object p10, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->block:Lkotlin/jvm/functions/Function0;

    const-wide/16 v0, 0x0

    cmp-long p10, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p10, :cond_0

    move p10, v0

    goto :goto_0

    :cond_0
    move p10, v1

    :goto_0
    if-eqz p10, :cond_7

    cmp-long p2, p4, p2

    if-ltz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p2, :cond_6

    const-wide/16 p2, 0x1

    cmp-long p2, p6, p2

    if-ltz p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    if-eqz p2, :cond_5

    cmp-long p2, p8, p6

    if-ltz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 25
    new-instance p2, Landroid/os/Handler;

    new-instance p3, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;

    invoke-direct {p3, p0}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$WorkCallback;-><init>(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)V

    check-cast p3, Landroid/os/Handler$Callback;

    invoke-direct {p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->handler:Landroid/os/Handler;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;

    invoke-virtual {p2}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;->getNONE()Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->atomicState:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxAmount < minAmount"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minAmount < 1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxDelayMillis < minDelayMillis"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minDelayMillis < 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;JJJJLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p11, 0x4

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x1

    move-wide v8, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_3

    move-wide v10, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-wide v4, p2

    move-object/from16 v12, p10

    .line 10
    invoke-direct/range {v2 .. v12}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;-><init>(Landroid/os/Looper;JJJJLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getAtomicState$p(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 10
    iget-object p0, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->atomicState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getBlock$p(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 10
    iget-object p0, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->block:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static synthetic schedule$default(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;IILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->schedule(I)V

    return-void
.end method


# virtual methods
.method public final schedule()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->schedule$default(Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;IILjava/lang/Object;)V

    return-void
.end method

.method public final schedule(I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    if-nez p1, :cond_1

    return-void

    .line 38
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 40
    iget-object v4, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->atomicState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    .line 41
    invoke-virtual {v4}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->getCollectedAmount()I

    move-result v5

    .line 42
    invoke-virtual {v4}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->getDeadlineMillis()J

    move-result-wide v6

    int-to-long v8, v5

    .line 44
    iget-wide v10, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->maxAmount:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    return-void

    :cond_2
    add-int v8, v5, p1

    const-wide v12, 0x7fffffffffffffffL

    if-nez v5, :cond_4

    :cond_3
    move-wide v14, v12

    goto :goto_1

    :cond_4
    cmp-long v5, v6, v12

    if-gez v5, :cond_5

    move-wide v14, v6

    goto :goto_1

    .line 52
    :cond_5
    iget-wide v14, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->maxDelayMillis:J

    cmp-long v5, v14, v12

    if-gez v5, :cond_3

    add-long/2addr v14, v2

    :goto_1
    int-to-long v12, v8

    cmp-long v5, v12, v10

    if-lez v5, :cond_6

    move-wide v6, v2

    goto :goto_2

    .line 57
    :cond_6
    iget-wide v9, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->minAmount:J

    cmp-long v5, v12, v9

    if-ltz v5, :cond_7

    iget-wide v9, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->minDelayMillis:J

    add-long/2addr v9, v2

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 61
    :cond_7
    :goto_2
    new-instance v5, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    invoke-direct {v5, v14, v15, v8}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;-><init>(JI)V

    .line 62
    iget-object v8, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->atomicState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v8, v4, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v6, v4

    if-gez v4, :cond_8

    .line 65
    iget-object v4, v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;->handler:Landroid/os/Handler;

    sub-long/2addr v6, v2

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void

    .line 31
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "amount < 0"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
