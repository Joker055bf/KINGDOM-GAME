.class public Lcom/applovin/impl/mediation/c/h;
.super Lcom/applovin/impl/sdk/e/ab;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/mediation/a/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskValidateMaxReward"

    .line 23
    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/e/ab;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 25
    iput-object p1, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/mvr"

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/e/ab;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const-string p1, "rejected"

    goto :goto_0

    :cond_0
    const-string p1, "network_timeout"

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-static {p1}, Lcom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/a/c;->a(Lcom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/b/c;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/a/c;->a(Lcom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->al()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_data"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->K()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_MCODE"

    :goto_0
    const-string v1, "mcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->J()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "NO_BCODE"

    :goto_1
    const-string v1, "bcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/h;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->L()Z

    move-result v0

    return v0
.end method
