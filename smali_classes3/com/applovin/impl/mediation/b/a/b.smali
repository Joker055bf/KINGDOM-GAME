.class public Lcom/applovin/impl/mediation/b/a/b;
.super Lcom/applovin/impl/mediation/b/d;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 6

    const-string v1, "TaskProcessNimbusAd"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/mediation/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/p;)V

    .line 47
    iput-object p4, p0, Lcom/applovin/impl/mediation/b/a/b;->i:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/applovin/impl/mediation/b/a/b;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 103
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 106
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 110
    iget-object v3, p0, Lcom/applovin/impl/mediation/b/a/b;->d:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/a/b;->d:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/a/b;->g:Ljava/lang/String;

    const-string v5, "Failed to retrieve tracking url with a non-String value."

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Nimbus-Session-Id"

    .line 120
    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a/b;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->m:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a/b;->l:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cache_prefix"

    const-string v2, "nimbus"

    .line 87
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    .line 88
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http_headers_for_postbacks"

    .line 89
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/a/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    const-string v1, "creative_id"

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->setMaxAdValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method

.method public run()V
    .locals 13

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v1, "markup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->k:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/16 v1, 0xcc

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v1, "position"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v3, "placement_id"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v4, "auction_id"

    invoke-static {v3, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/applovin/impl/mediation/b/a/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v4

    const-string v5, "..."

    const-string v6, "TaskProcessNimbusAd"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/a/b;->h:Lcom/applovin/impl/sdk/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Processing Nimbus ad ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for placement: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " with auction id: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v3, "network"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->e:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    const-string v2, "crid"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->n:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->a:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "trackers"

    invoke-static {v1, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_trackers"

    .line 71
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/b/a/b;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/mediation/b/a/b;->m:Lorg/json/JSONObject;

    const-string v2, "impression_trackers"

    .line 72
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/b/a/b;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->l:Lorg/json/JSONObject;

    .line 74
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/a/b;->a()Lorg/json/JSONObject;

    move-result-object v8

    .line 75
    invoke-virtual {p0, v8}, Lcom/applovin/impl/mediation/b/a/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 77
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->h:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting render task for Nimbus ad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    new-instance v0, Lcom/applovin/impl/sdk/e/s;

    sget-object v10, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v11, p0, Lcom/applovin/impl/mediation/b/a/b;->j:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v12, p0, Lcom/applovin/impl/mediation/b/a/b;->d:Lcom/applovin/impl/sdk/p;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/applovin/impl/sdk/e/s;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 80
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a/b;->d:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method
