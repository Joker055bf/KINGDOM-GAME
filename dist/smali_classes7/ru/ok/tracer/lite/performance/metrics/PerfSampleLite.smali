.class public final Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;
.super Ljava/lang/Object;
.source "PerfSampleLite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\nH\u00c6\u0003JQ\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
        "",
        "sessionUuid",
        "",
        "timeUnixNano",
        "",
        "name",
        "value",
        "unit",
        "attributes",
        "",
        "(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V",
        "getAttributes",
        "()Ljava/util/Map;",
        "getName",
        "()Ljava/lang/String;",
        "getSessionUuid",
        "getTimeUnixNano",
        "()J",
        "getUnit",
        "getValue",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final sessionUuid:Ljava/lang/String;

.field private final timeUnixNano:J

.field private final unit:Ljava/lang/String;

.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
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

    const-string v0, "sessionUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    .line 6
    iput-object p4, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    .line 8
    iput-object p7, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move-object p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->copy(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;"
        }
    .end annotation

    const-string v0, "sessionUuid"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    move-object v1, v0

    move-wide v3, p2

    move-wide v6, p5

    invoke-direct/range {v1 .. v9}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    iget-object v3, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    iget-wide v5, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    iget-object v3, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    iget-wide v5, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    iget-object v3, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    iget-object p1, p1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionUuid()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeUnixNano()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    return-wide v0
.end method

.method public final getUnit()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfSampleLite(sessionUuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->sessionUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeUnixNano="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->timeUnixNano:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
