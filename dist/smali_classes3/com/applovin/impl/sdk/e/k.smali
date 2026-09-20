.class public Lcom/applovin/impl/sdk/e/k;
.super Lcom/applovin/impl/sdk/e/h;
.source "SourceFile"


# instance fields
.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskFetchNextAd"

    .line 26
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/sdk/e/k;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p3, p4}, Lcom/applovin/impl/sdk/e/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 33
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/k;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/e/a;
    .locals 7

    .line 51
    new-instance v6, Lcom/applovin/impl/sdk/e/p;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/k;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/k;->h()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/k;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/k;->f:Lcom/applovin/impl/sdk/p;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/p;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    return-object v6
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/e/h;->a(ILjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/k;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/i;

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/k;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lcom/applovin/impl/sdk/ad/i;

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/ad/i;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :goto_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/k;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->h(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/k;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->i(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
