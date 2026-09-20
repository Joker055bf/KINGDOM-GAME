.class public final Lru/ok/tracer/base/drop/DropRecord;
.super Ljava/lang/Object;
.source "DropRecord.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\u0003H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lru/ok/tracer/base/drop/DropRecord;",
        "",
        "event",
        "",
        "reason",
        "count",
        "",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "getCount$tracer_base_release",
        "()I",
        "getEvent$tracer_base_release",
        "()Ljava/lang/String;",
        "getReason$tracer_base_release",
        "copyIncrementCount",
        "plusCount",
        "copyIncrementCount$tracer_base_release",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final count:I

.field private final event:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    .line 6
    iput p3, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    return-void
.end method


# virtual methods
.method public final copyIncrementCount$tracer_base_release(I)Lru/ok/tracer/base/drop/DropRecord;
    .locals 4

    .line 8
    new-instance v0, Lru/ok/tracer/base/drop/DropRecord;

    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    iget-object v2, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    iget v3, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lru/ok/tracer/base/drop/DropRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    instance-of v1, p1, Lru/ok/tracer/base/drop/DropRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    check-cast p1, Lru/ok/tracer/base/drop/DropRecord;

    iget-object v3, p1, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    iget-object v3, p1, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget v1, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    iget p1, p1, Lru/ok/tracer/base/drop/DropRecord;->count:I

    if-eq v1, p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final getCount$tracer_base_release()I
    .locals 1

    .line 6
    iget v0, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    return v0
.end method

.method public final getEvent$tracer_base_release()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason$tracer_base_release()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 20
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DropRecord(event=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/ok/tracer/base/drop/DropRecord;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lru/ok/tracer/base/drop/DropRecord;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
