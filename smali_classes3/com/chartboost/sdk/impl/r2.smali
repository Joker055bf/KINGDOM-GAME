.class public Lcom/chartboost/sdk/impl/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/impl/r2;->a:I

    const/16 v0, 0x1e

    .line 3
    iput v0, p0, Lcom/chartboost/sdk/impl/r2;->b:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r2;->c:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r2;->d:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r2;->e:Ljava/util/HashSet;

    .line 10
    iput p1, p0, Lcom/chartboost/sdk/impl/r2;->a:I

    .line 11
    iput p2, p0, Lcom/chartboost/sdk/impl/r2;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 2

    add-int/lit8 p2, p2, 0x1

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->d:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public final a(JJ)J
    .locals 0

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    .line 1
    div-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/chartboost/sdk/impl/s5;)J
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->c:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/chartboost/sdk/impl/s5;)Lcom/chartboost/sdk/impl/s5;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->g()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->h()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/r2;->a(Lcom/chartboost/sdk/impl/s5;)J

    move-result-wide v4

    .line 5
    invoke-virtual {p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/r2;->a(Ljava/lang/String;J)V

    .line 6
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/r2;->a(JJ)J

    move-result-wide v4

    .line 7
    iget v6, p0, Lcom/chartboost/sdk/impl/r2;->b:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/chartboost/sdk/impl/r2;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v1, v2, v3}, Lcom/chartboost/sdk/impl/r2;->a(Ljava/lang/String;J)V

    .line 10
    iget-object v2, p0, Lcom/chartboost/sdk/impl/r2;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/r2;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return-object v0

    .line 17
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/r2;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/r2;->a(Ljava/lang/String;I)I

    move-result v0

    .line 18
    iget v2, p0, Lcom/chartboost/sdk/impl/r2;->a:I

    if-le v0, v2, :cond_3

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r2;->e:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Lcom/chartboost/sdk/impl/m3;

    const-string/jumbo v0, "too_many_events"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
