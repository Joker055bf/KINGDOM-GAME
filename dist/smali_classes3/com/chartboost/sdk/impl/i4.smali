.class public Lcom/chartboost/sdk/impl/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/o4;

.field public final b:Lcom/chartboost/sdk/impl/b3;

.field public final c:Lcom/chartboost/sdk/impl/r4;

.field public final d:Lcom/chartboost/sdk/impl/c3;

.field public final e:Lcom/chartboost/sdk/impl/d3;

.field public f:Lcom/chartboost/sdk/impl/c5$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o4;Lcom/chartboost/sdk/impl/b3;Lcom/chartboost/sdk/impl/r4;Lcom/chartboost/sdk/impl/c3;Lcom/chartboost/sdk/impl/d3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i4;->a:Lcom/chartboost/sdk/impl/o4;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i4;->b:Lcom/chartboost/sdk/impl/b3;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/i4;->c:Lcom/chartboost/sdk/impl/r4;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/i4;->d:Lcom/chartboost/sdk/impl/c3;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/i4;->e:Lcom/chartboost/sdk/impl/d3;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-virtual {v1}, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i4;->b:Lcom/chartboost/sdk/impl/b3;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/b3;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/impl/c5$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i4;->f:Lcom/chartboost/sdk/impl/c5$b;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i4;->a:Lcom/chartboost/sdk/impl/o4;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/o4;->a(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    const-string v0, "coppa"

    .line 3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/i4;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/privacy/model/COPPA;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/chartboost/sdk/privacy/model/COPPA;->getConsent()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i4;->c:Lcom/chartboost/sdk/impl/r4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/r4;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i4;->b:Lcom/chartboost/sdk/impl/b3;

    const-string v1, "gdpr"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/b3;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i4;->d:Lcom/chartboost/sdk/impl/c3;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/c3;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i4;->e:Lcom/chartboost/sdk/impl/d3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i4;->f:Lcom/chartboost/sdk/impl/c5$b;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/d3;->a(Lcom/chartboost/sdk/impl/c5$b;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/impl/j4;
    .locals 8

    .line 1
    new-instance v7, Lcom/chartboost/sdk/impl/j4;

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->f()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->b()Ljava/lang/Integer;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->e()Lorg/json/JSONObject;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i4;->d()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/j4;-><init>(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v7
.end method
