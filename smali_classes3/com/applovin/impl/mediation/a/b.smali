.class public Lcom/applovin/impl/mediation/a/b;
.super Lcom/applovin/impl/mediation/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/e;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/mediation/a/b;Lcom/applovin/impl/mediation/g;)V
    .locals 7

    .line 45
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->B()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->af()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->V()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->U()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, p1, Lcom/applovin/impl/mediation/a/b;->b:Lcom/applovin/impl/sdk/p;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/e;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method


# virtual methods
.method public C()I
    .locals 2

    const-string v0, "ad_view_width"

    const/4 v1, -0x2

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/b;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v0

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ad format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public D()I
    .locals 2

    const-string v0, "ad_view_height"

    const/4 v1, -0x2

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/b;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result v0

    return v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ad format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public E()J
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->bW:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "viewability_imp_delay_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public F()Z
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/b;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ad_refresh_ms"

    .line 112
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    return-wide v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->l:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->J:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "proe"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()J
    .locals 2

    const-string v0, "bg_color"

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->parseColor(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/a/a;
    .locals 1

    .line 51
    new-instance v0, Lcom/applovin/impl/mediation/a/b;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/a/b;-><init>(Lcom/applovin/impl/mediation/a/b;Lcom/applovin/impl/mediation/g;)V

    return-object v0
.end method
