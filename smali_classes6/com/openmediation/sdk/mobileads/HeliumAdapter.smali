.class public Lcom/openmediation/sdk/mobileads/HeliumAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "HeliumAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;
.implements Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "AppKey"


# instance fields
.field private final mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;
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

    .line 31
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->setCustomParam()V

    return-void
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->executeBid(Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method

.method private executeBid(Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BidCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "ad_type"

    .line 404
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "placement_id"

    .line 405
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 407
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1, v2, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->loadInterstitial(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 409
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1, v2, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->loadRewardedVideo(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Helium unSupport bid type"

    .line 412
    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Helium Bid Failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private realLoadIsAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 4

    const-string v0, "Interstitial"

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    .line 233
    invoke-interface {p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->loadInterstitial(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 240
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private realLoadRvAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 4

    const-string v0, "Rewarded Video"

    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->loadRewardedVideo(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 141
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCustomParam()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mUserConsent:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mUserConsent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->setGDPRConsent(Landroid/content/Context;Z)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAgeRestricted:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAgeRestricted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public didInterstitialClicked(Ljava/lang/String;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 364
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public didInterstitialClosed(Ljava/lang/String;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public didInterstitialShowFailed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    .line 349
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Interstitial"

    .line 348
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public didInterstitialShowed(Ljava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-nez p1, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V

    return-void
.end method

.method public didRewardedClicked(Ljava/lang/String;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 329
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method public didRewardedClosed(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 312
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public didRewardedRewarded(Ljava/lang/String;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 320
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V

    .line 321
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    :cond_0
    return-void
.end method

.method public didRewardedShowFailed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    .line 305
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Rewarded Video"

    .line 304
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public didRewardedShowed(Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    .line 295
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.3"

    return-object v0
.end method

.method public getBidResponse(Landroid/content/Context;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 3
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

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getBidResponse(Landroid/content/Context;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    const-string p1, "app_key"

    .line 384
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 387
    :goto_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumAdapter$3;-><init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/HeliumInitCallback;)V

    return-void
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/chartboost/heliumsdk/HeliumSdk;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initBid(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
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

    .line 53
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBid(Landroid/content/Context;Ljava/util/Map;)V

    .line 54
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInitState()Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    move-result-object p1

    .line 58
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    if-ne p1, v0, :cond_1

    .line 59
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/HeliumInitCallback;)V

    :cond_1
    return-void
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 2
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

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 191
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "pid"

    .line 193
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 194
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppKey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;

    invoke-direct {v1, p0, p3}, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;-><init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/HeliumInitCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "Interstitial"

    .line 215
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 2
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

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 92
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "pid"

    .line 94
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 95
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppKey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;-><init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/HeliumInitCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "Rewarded Video"

    .line 116
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 284
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->isInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 185
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->isRewardedVideoReady(Ljava/lang/String;)Z

    move-result p1

    return p1
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

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 224
    invoke-direct {p0, p2, p4}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->realLoadIsAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

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

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 125
    invoke-direct {p0, p2, p4}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->realLoadRvAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-void
.end method

.method public setAgeRestricted(Landroid/content/Context;Z)V
    .locals 1

    .line 74
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    .line 75
    sget-object p1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInitState()Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 76
    invoke-static {p2}, Lcom/chartboost/heliumsdk/HeliumSdk;->setSubjectToCoppa(Z)V

    :cond_0
    return-void
.end method

.method public setGDPRConsent(Landroid/content/Context;Z)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setGDPRConsent(Landroid/content/Context;Z)V

    .line 66
    sget-object p1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInitState()Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Lcom/chartboost/heliumsdk/HeliumSdk;->setSubjectToGDPR(Z)V

    .line 68
    invoke-static {p2}, Lcom/chartboost/heliumsdk/HeliumSdk;->setUserHasGivenConsent(Z)V

    :cond_0
    return-void
.end method

.method public setUSPrivacyLimit(Landroid/content/Context;Z)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    .line 83
    sget-object p1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInitState()Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 84
    invoke-static {p1}, Lcom/chartboost/heliumsdk/HeliumSdk;->setCCPAConsent(Z)V

    :cond_0
    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    const-string v0, "Interstitial"

    .line 254
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 256
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 260
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->setInterstitialAdCallback(Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;)V

    .line 263
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Ad Not Ready"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 270
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 276
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3

    const-string v0, "Rewarded Video"

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 157
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 161
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->setVideoAdCallback(Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;)V

    .line 164
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Ad Not Ready"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 171
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 177
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method
