.class public Lcom/openmediation/sdk/mobileads/IronSourceAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "IronSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;
    }
.end annotation


# static fields
.field private static mDidInitInterstitial:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDidInitRewardedVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIsAdUnitsToInit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRvAdUnitsToInit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;
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
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mDidInitInterstitial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 32
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsAdUnitsToInit:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mDidInitRewardedVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 37
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvAdUnitsToInit:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 1

    .line 313
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    .line 315
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->destroyAd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.0"

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 2
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

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "Banner"

    .line 277
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 282
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->initAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    return-void
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3
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
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 194
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 200
    :cond_1
    :try_start_0
    sget-object p2, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mDidInitInterstitial:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 201
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p2

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAppKey:Ljava/lang/String;

    sget-object v2, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsAdUnitsToInit:Ljava/util/List;

    invoke-virtual {p2, p1, v0, v2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->initIronSourceSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 204
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 208
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3
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

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 111
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 117
    :cond_1
    :try_start_0
    sget-object p2, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mDidInitRewardedVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 118
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p2

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAppKey:Ljava/lang/String;

    sget-object v2, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvAdUnitsToInit:Ljava/util/List;

    invoke-virtual {p2, p1, v0, v2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->initIronSourceSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 121
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 125
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isBannerAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 308
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->isAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 268
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->isInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 185
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->isRewardedVideoReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
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
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Banner"

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    .line 291
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 297
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->loadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_2

    .line 300
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Error, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {v2, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 2
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

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 218
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 220
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 225
    :try_start_0
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p2, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->loadInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_3

    .line 230
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Error, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 236
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p1, p3}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 2
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

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 135
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 137
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 142
    :try_start_0
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p2, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_3

    .line 147
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Error, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 153
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p1, p3}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 361
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 346
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    .line 332
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Interstitial"

    .line 331
    invoke-static {v2, v0, v1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method onInterstitialAdOpened(Ljava/lang/String;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 339
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V

    :cond_0
    return-void
.end method

.method onInterstitialAdReady(Ljava/lang/String;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    .line 354
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Interstitial"

    .line 353
    invoke-static {v2, v0, v1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->onResume(Landroid/app/Activity;)V

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method onRewardedVideoAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 408
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdEnded(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 401
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    .line 380
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Rewarded Video"

    .line 379
    invoke-static {v2, v0, v1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 372
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdOpened(Ljava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 387
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 415
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    .line 423
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Rewarded Video"

    .line 422
    invoke-static {v2, v0, v1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method onRewardedVideoAdStarted(Ljava/lang/String;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 394
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method

.method public setGDPRConsent(Landroid/content/Context;Z)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setGDPRConsent(Landroid/content/Context;Z)V

    .line 72
    :try_start_0
    invoke-static {p2}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setUSPrivacyLimit(Landroid/content/Context;Z)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    :try_start_0
    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string p2, "do_not_sell"

    .line 82
    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 245
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 249
    :try_start_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    .line 254
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 260
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 166
    :try_start_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    .line 171
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 177
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method
