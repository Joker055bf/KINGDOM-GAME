.class public Lcom/applovin/impl/sdk/e/s;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final d:Lcom/applovin/impl/sdk/ad/b;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskRenderAppLovinAd"

    .line 29
    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 31
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/s;->a:Lorg/json/JSONObject;

    .line 32
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/s;->b:Lorg/json/JSONObject;

    .line 33
    iput-object p3, p0, Lcom/applovin/impl/sdk/e/s;->d:Lcom/applovin/impl/sdk/ad/b;

    .line 34
    iput-object p4, p0, Lcom/applovin/impl/sdk/e/s;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/s;->g:Ljava/lang/String;

    const-string v2, "Rendering ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/ad/a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/s;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/s;->b:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/s;->d:Lcom/applovin/impl/sdk/ad/b;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/s;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/ad/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/p;)V

    .line 45
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/s;->a:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gs_load_immediately"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/s;->a:Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "vs_load_immediately"

    invoke-static {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 48
    new-instance v3, Lcom/applovin/impl/sdk/e/d;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/s;->f:Lcom/applovin/impl/sdk/p;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/s;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v3, v0, v4, v5}, Lcom/applovin/impl/sdk/e/d;-><init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 49
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/e/d;->b(Z)V

    .line 50
    invoke-virtual {v3, v1}, Lcom/applovin/impl/sdk/e/d;->c(Z)V

    .line 52
    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->i:Lcom/applovin/impl/sdk/e/o$a;

    .line 53
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/s;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->bv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v2, v4, :cond_1

    .line 57
    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->f:Lcom/applovin/impl/sdk/e/o$a;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v2, v4, :cond_2

    .line 61
    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->g:Lcom/applovin/impl/sdk/e/o$a;

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->NATIVE:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v2, :cond_3

    .line 65
    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->h:Lcom/applovin/impl/sdk/e/o$a;

    .line 69
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/s;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method
