.class public final Lcom/chartboost/sdk/impl/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u0005\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/r3;",
        "",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/chartboost/sdk/impl/k;",
        "adUnit",
        "Lcom/chartboost/sdk/impl/k;",
        "a",
        "()Lcom/chartboost/sdk/impl/k;",
        "Lcom/chartboost/sdk/internal/Model/CBError;",
        "error",
        "Lcom/chartboost/sdk/internal/Model/CBError;",
        "b",
        "()Lcom/chartboost/sdk/internal/Model/CBError;",
        "Lcom/chartboost/sdk/impl/h0;",
        "appRequest",
        "",
        "requestResponseCodeNs",
        "readDataNs",
        "<init>",
        "(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJ)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/h0;

.field public final b:Lcom/chartboost/sdk/impl/k;

.field public final c:Lcom/chartboost/sdk/internal/Model/CBError;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJ)V
    .locals 1

    const-string v0, "appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/r3;->a:Lcom/chartboost/sdk/impl/h0;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    .line 5
    iput-wide p4, p0, Lcom/chartboost/sdk/impl/r3;->d:J

    .line 6
    iput-wide p6, p0, Lcom/chartboost/sdk/impl/r3;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x8

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    move-wide v5, v3

    goto :goto_2

    :cond_2
    move-wide v5, p4

    :goto_2
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-wide v3, p6

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-wide p6, v5

    move-wide p8, v3

    .line 7
    invoke-direct/range {p2 .. p9}, Lcom/chartboost/sdk/impl/r3;-><init>(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/internal/Model/CBError;JJ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    return-object v0
.end method

.method public final b()Lcom/chartboost/sdk/internal/Model/CBError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/sdk/impl/r3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/sdk/impl/r3;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->a:Lcom/chartboost/sdk/impl/h0;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/r3;->a:Lcom/chartboost/sdk/impl/h0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/chartboost/sdk/impl/r3;->d:J

    iget-wide v5, p1, Lcom/chartboost/sdk/impl/r3;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/chartboost/sdk/impl/r3;->e:J

    iget-wide v5, p1, Lcom/chartboost/sdk/impl/r3;->e:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/r3;->a:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/r3;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/r3;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadResult(appRequest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->a:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->b:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r3;->c:Lcom/chartboost/sdk/internal/Model/CBError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestResponseCodeNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/r3;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readDataNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/r3;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
