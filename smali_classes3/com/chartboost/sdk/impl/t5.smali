.class public Lcom/chartboost/sdk/impl/t5;
.super Lcom/chartboost/sdk/impl/i1;
.source "SourceFile"


# instance fields
.field public final p:Lcom/chartboost/sdk/impl/s5;

.field public final q:Lcom/chartboost/sdk/impl/p2;

.field public final r:Lcom/chartboost/sdk/impl/q5;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/s5;Lcom/chartboost/sdk/impl/p2;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/chartboost/sdk/internal/Networking/NetworkHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/chartboost/sdk/internal/Networking/NetworkHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/chartboost/sdk/impl/q5;

    invoke-direct {v6}, Lcom/chartboost/sdk/impl/q5;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/t5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/i1$a;Lcom/chartboost/sdk/impl/s5;Lcom/chartboost/sdk/impl/p2;Lcom/chartboost/sdk/impl/q5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/i1$a;Lcom/chartboost/sdk/impl/s5;Lcom/chartboost/sdk/impl/p2;Lcom/chartboost/sdk/impl/q5;)V
    .locals 6

    .line 2
    sget-object v4, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/i1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Lcom/chartboost/sdk/impl/i1$a;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i1;->n:Z

    .line 4
    iput-object p4, p0, Lcom/chartboost/sdk/impl/t5;->p:Lcom/chartboost/sdk/impl/s5;

    .line 5
    iput-object p5, p0, Lcom/chartboost/sdk/impl/t5;->q:Lcom/chartboost/sdk/impl/p2;

    .line 6
    iput-object p6, p0, Lcom/chartboost/sdk/impl/t5;->r:Lcom/chartboost/sdk/impl/q5;

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t5;->g()V

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/d1;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t5;->r:Lcom/chartboost/sdk/impl/q5;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t5;->p:Lcom/chartboost/sdk/impl/s5;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/t5;->q:Lcom/chartboost/sdk/impl/p2;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/q5;->a(Lcom/chartboost/sdk/impl/s5;Lcom/chartboost/sdk/impl/p2;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "X-Chartboost-Client"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-Chartboost-API"

    const-string v4, "9.2.0"

    .line 5
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/chartboost/sdk/impl/d1;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v1, v0, v3}, Lcom/chartboost/sdk/impl/d1;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v2
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t5;->p:Lcom/chartboost/sdk/impl/s5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s5;->e()Lcom/chartboost/sdk/Mediation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/Mediation;->toMediationBodyFields()Lcom/chartboost/sdk/impl/t3;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Mediation;->toMediationBodyFields()Lcom/chartboost/sdk/impl/t3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_version"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adapter_version"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
