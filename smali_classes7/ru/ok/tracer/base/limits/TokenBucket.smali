.class public final Lru/ok/tracer/base/limits/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/limits/TokenBucket$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenBucket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenBucket.kt\nru/ok/tracer/base/limits/TokenBucket\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lru/ok/tracer/base/limits/TokenBucket;",
        "",
        "capacity",
        "",
        "period",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "(IJLjava/util/concurrent/TimeUnit;)V",
        "refillIntervalNs",
        "(IJ)V",
        "lastRefillTime",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "tokens",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "addTokens",
        "",
        "amount",
        "allow",
        "",
        "n",
        "refill",
        "Companion",
        "tracer-base_release"
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
.field public static final Companion:Lru/ok/tracer/base/limits/TokenBucket$Companion;


# instance fields
.field private final capacity:I

.field private final lastRefillTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final refillIntervalNs:J

.field private final tokens:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/base/limits/TokenBucket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/base/limits/TokenBucket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/base/limits/TokenBucket;->Companion:Lru/ok/tracer/base/limits/TokenBucket$Companion;

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lru/ok/tracer/base/limits/TokenBucket;->capacity:I

    .line 11
    iput-wide p2, p0, Lru/ok/tracer/base/limits/TokenBucket;->refillIntervalNs:J

    .line 13
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lru/ok/tracer/base/limits/TokenBucket;->tokens:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lru/ok/tracer/base/limits/TokenBucket;->lastRefillTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    int-to-long v0, p1

    div-long/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/base/limits/TokenBucket;-><init>(IJ)V

    .line 21
    iget-wide p1, p0, Lru/ok/tracer/base/limits/TokenBucket;->refillIntervalNs:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "period must be >= capacity to avoid zero refill interval"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/base/limits/TokenBucket;-><init>(IJ)V

    return-void
.end method

.method private final addTokens(I)V
    .locals 3

    .line 74
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/base/limits/TokenBucket;->tokens:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 75
    iget v1, p0, Lru/ok/tracer/base/limits/TokenBucket;->capacity:I

    add-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 76
    iget-object v2, p0, Lru/ok/tracer/base/limits/TokenBucket;->tokens:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static synthetic allow$default(Lru/ok/tracer/base/limits/TokenBucket;IILjava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lru/ok/tracer/base/limits/TokenBucket;->allow(I)Z

    move-result p0

    return p0
.end method

.method private final refill()V
    .locals 9

    .line 51
    iget-wide v0, p0, Lru/ok/tracer/base/limits/TokenBucket;->refillIntervalNs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 56
    :cond_1
    iget-object v2, p0, Lru/ok/tracer/base/limits/TokenBucket;->lastRefillTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 58
    iget-wide v6, p0, Lru/ok/tracer/base/limits/TokenBucket;->refillIntervalNs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return-void

    .line 62
    :cond_2
    div-long/2addr v4, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    .line 65
    iget-object v8, p0, Lru/ok/tracer/base/limits/TokenBucket;->lastRefillTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    .line 66
    invoke-static {v4, v5, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lru/ok/tracer/base/limits/TokenBucket;->addTokens(I)V

    return-void
.end method


# virtual methods
.method public final allow(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 36
    invoke-direct {p0}, Lru/ok/tracer/base/limits/TokenBucket;->refill()V

    .line 39
    :cond_1
    iget-object v2, p0, Lru/ok/tracer/base/limits/TokenBucket;->tokens:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v2, p1, :cond_2

    return v1

    .line 43
    :cond_2
    iget-object v3, p0, Lru/ok/tracer/base/limits/TokenBucket;->tokens:Ljava/util/concurrent/atomic/AtomicInteger;

    sub-int v4, v2, p1

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requested tokens must be positive"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
