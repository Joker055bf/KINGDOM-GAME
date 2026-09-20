.class public Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

# interfaces
.implements Lcom/crosspromotion/sdk/video/RewardedVideoListener;
.implements Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;
.implements Lcom/crosspromotion/sdk/promotion/PromotionAdListener;


# static fields
.field private static final PAY_LOAD:Ljava/lang/String; = "pay_load"

.field private static final TAG:Ljava/lang/String; = "CrossPromotionAdapter"


# instance fields
.field private final mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/PromotionAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private loadIsAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Interstitial"

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "pay_load"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "CrossPromotionAdapter"

    const-string v0, "InterstitialAd load failed: payload is empty"

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "payload is empty"

    invoke-static {v2, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p1, p0}, Lcom/crosspromotion/sdk/interstitial/InterstitialAd;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V

    invoke-static {p1, v0, p2}, Lcom/crosspromotion/sdk/interstitial/InterstitialAd;->loadAdWithPayload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private loadRewardedVideoAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Rewarded Video"

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "pay_load"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "CrossPromotionAdapter"

    const-string v0, "RewardedVideoAd load failed: payload is empty"

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "payload is empty"

    invoke-static {v2, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p1, p0}, Lcom/crosspromotion/sdk/video/RewardedVideo;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V

    invoke-static {p1, v0, p2}, Lcom/crosspromotion/sdk/video/RewardedVideo;->loadAdWithPayload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->destroyAd(Ljava/lang/String;)V

    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->destroyAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/CrossPromotionAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/crosspromotion/sdk/bid/BidderTokenProvider;->getBidderToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/CrossPromotionAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hidePromotionAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->hidePromotionAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "CrossPromotionAdapter"

    const-string v0, "HidePromotionAd Failed: AdUnitId is empty"

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    invoke-static {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->hideAd(Ljava/lang/String;)V

    return-void
.end method

.method public initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Banner"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->init(Landroid/content/Context;)Z

    move-result p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "InitBannerAd failed"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Interstitial"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->init(Landroid/content/Context;)Z

    move-result p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "InitInterstitialAd failed"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Native"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->init(Landroid/content/Context;)Z

    move-result p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "InitNativeAd failed"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initPromotionAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initPromotionAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Promotion"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->init(Landroid/content/Context;)Z

    move-result p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdInitSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "InitPromotionAd failed"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "Rewarded Video"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->init(Landroid/content/Context;)Z

    move-result p1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "InitRewardedVideo failed"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isBannerAdAvailable(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->isAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/crosspromotion/sdk/interstitial/InterstitialAd;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPromotionAdAvailable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/crosspromotion/sdk/video/RewardedVideo;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isS2S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p3, "Banner"

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->loadAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->loadIsAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-void
.end method

.method public loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p3, "Native"

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->loadAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    return-void
.end method

.method public loadPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 1
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p3, "Promotion"

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2, p0}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    invoke-static {p2, p3}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->loadAd(Ljava/lang/String;Ljava/util/Map;)V

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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->loadRewardedVideoAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-void
.end method

.method public needPayload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onInterstitialAdEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    const-string v0, "Interstitial"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    const-string v0, "Interstitial"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onPromotionAdClicked(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdClicked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onPromotionAdHidden(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onPromotionAdLoadFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "Promotion"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onPromotionAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onPromotionAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "Promotion"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onPromotionAdShowed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/PromotionAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdShowSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdEnded(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    const-string v0, "Rewarded Video"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    const-string v0, "Rewarded Video"

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowed(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdStarted(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onVideoAdEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;->registerNativeView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mInterstitialListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2, p0}, Lcom/crosspromotion/sdk/interstitial/InterstitialAd;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V

    invoke-static {p2}, Lcom/crosspromotion/sdk/interstitial/InterstitialAd;->showAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "No interstitial ad or not ready"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V
    .locals 3
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Promotion"

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->isPromotionAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mPromotionListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2, p0}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    invoke-static {p3}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getAdRect(Ljava/util/Map;)Lcom/crosspromotion/sdk/promotion/PromotionAdRect;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/crosspromotion/sdk/promotion/PromotionAd;->showAd(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "PromotionAd not ready"

    invoke-static {v2, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/PromotionAdCallback;->onPromotionAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionAdapter;->mVideoListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p2, p0}, Lcom/crosspromotion/sdk/video/RewardedVideo;->setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V

    invoke-static {p2}, Lcom/crosspromotion/sdk/video/RewardedVideo;->showAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const-string p2, "No reward ad or not ready"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method
