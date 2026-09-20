.class public final Lru/ok/tracer/base/time/PrecisionClock;
.super Ljava/lang/Object;
.source "PrecisionClock.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrecisionClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrecisionClock.kt\nru/ok/tracer/base/time/PrecisionClock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n1#2:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lru/ok/tracer/base/time/PrecisionClock;",
        "",
        "()V",
        "epochNanos",
        "",
        "nanoTime",
        "currentTimeNanos",
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
.field public static final INSTANCE:Lru/ok/tracer/base/time/PrecisionClock;

.field private static final epochNanos:J

.field private static final nanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/ok/tracer/base/time/PrecisionClock;

    invoke-direct {v0}, Lru/ok/tracer/base/time/PrecisionClock;-><init>()V

    sput-object v0, Lru/ok/tracer/base/time/PrecisionClock;->INSTANCE:Lru/ok/tracer/base/time/PrecisionClock;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lru/ok/tracer/base/time/PrecisionClock;->epochNanos:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sput-wide v0, Lru/ok/tracer/base/time/PrecisionClock;->nanoTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final currentTimeNanos()J
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 11
    sget-wide v0, Lru/ok/tracer/base/time/PrecisionClock;->epochNanos:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-wide v2, Lru/ok/tracer/base/time/PrecisionClock;->nanoTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
