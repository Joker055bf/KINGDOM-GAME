.class public abstract Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdParams;

# interfaces
.implements Lcom/openmediation/sdk/mediation/RewardedVideoApi;
.implements Lcom/openmediation/sdk/mediation/InterstitialAdApi;
.implements Lcom/openmediation/sdk/mediation/PromotionAdApi;
.implements Lcom/openmediation/sdk/mediation/BannerAdApi;
.implements Lcom/openmediation/sdk/mediation/NativeAdApi;
.implements Lcom/openmediation/sdk/mediation/SplashAdApi;
.implements Lcom/openmediation/sdk/mediation/BidApi;


# instance fields
.field protected mAppKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdParams;-><init>()V

    return-void
.end method

.method private initData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AppKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->mAppKey:Ljava/lang/String;

    return-void
.end method

.method private isDestroyed(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected check()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app key is empty"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected check(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "activity is null"

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isDestroyed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "activity is destroyed"

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method protected check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->mAppKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "app key is null"

    return-object p1

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "instanceKey is null"

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method protected check(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "app key is null"

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "instanceKey is null"

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 0

    return-void
.end method

.method public destroySplashAd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract getAdNetworkId()I
.end method

.method public abstract getAdapterVersion()Ljava/lang/String;
.end method

.method public getBidResponse(Landroid/content/Context;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BidCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getMediationVersion()Ljava/lang/String;
.end method

.method public hidePromotionAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 0

    return-void
.end method

.method public initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public initBid(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public initPromotionAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/PromotionAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public isBannerAdAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPromotionAdAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isS2S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSplashAdAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public loadPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/PromotionAdCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public loadSplashAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initData(Ljava/util/Map;)V

    return-void
.end method

.method public needPayload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyLose(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyWin(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0

    return-void
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    return-void
.end method

.method public showPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/PromotionAdCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    return-void
.end method
