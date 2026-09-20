.class final Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;
.super Ljava/lang/Object;
.source "DelayedWork.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/performance/metrics/util/DelayedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;",
        "",
        "deadlineMillis",
        "",
        "collectedAmount",
        "",
        "(JI)V",
        "getCollectedAmount",
        "()I",
        "getDeadlineMillis",
        "()J",
        "Companion",
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
.field public static final Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;

.field private static final NONE:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;


# instance fields
.field private final collectedAmount:I

.field private final deadlineMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->Companion:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State$Companion;

    .line 77
    new-instance v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;-><init>(JI)V

    sput-object v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->NONE:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->deadlineMillis:J

    .line 74
    iput p3, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->collectedAmount:I

    return-void
.end method

.method public static final synthetic access$getNONE$cp()Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;
    .locals 1

    .line 72
    sget-object v0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->NONE:Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;

    return-object v0
.end method


# virtual methods
.method public final getCollectedAmount()I
    .locals 1

    .line 74
    iget v0, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->collectedAmount:I

    return v0
.end method

.method public final getDeadlineMillis()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lru/ok/tracer/lite/performance/metrics/util/DelayedWork$State;->deadlineMillis:J

    return-wide v0
.end method
