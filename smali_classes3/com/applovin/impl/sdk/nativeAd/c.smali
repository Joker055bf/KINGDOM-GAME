.class public Lcom/applovin/impl/sdk/nativeAd/c;
.super Lcom/applovin/impl/sdk/e/h;
.source "SourceFile"


# instance fields
.field private final b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/impl/sdk/e/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 24
    iput-object p3, p0, Lcom/applovin/impl/sdk/nativeAd/c;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/e/a;
    .locals 3

    .line 42
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/d;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/c;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/c;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .line 48
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/e/h;->a(ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/c;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinError;

    invoke-direct {v1, p1, p2}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoadFailed(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/c;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->j(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/c;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->k(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
