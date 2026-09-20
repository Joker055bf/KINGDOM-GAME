.class public Lcom/openmediation/sdk/mobileads/FacebookAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;,
        Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;,
        Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;,
        Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;
    }
.end annotation


# static fields
.field private static final PAY_LOAD:Ljava/lang/String; = "pay_load"


# instance fields
.field private mBannerAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mBnCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDidCallInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDidInitSuccess:Ljava/lang/Boolean;

.field private mFbIsAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private mFbRvAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardedVideoAd;",
            ">;"
        }
    .end annotation
.end field

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

.field private mNaCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
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
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbRvAds:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbIsAds:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBnCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mNaCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidCallInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$002(Lcom/openmediation/sdk/mobileads/FacebookAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBnCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mNaCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method private getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/facebook/ads/AdSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/ads/AdSize;"
        }
    .end annotation

    .line 549
    invoke-static {p2}, Lcom/openmediation/sdk/mediation/MediationUtil;->getBannerDesc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 550
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LEADERBOARD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "SMART"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "RECTANGLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 562
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 552
    :pswitch_0
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 556
    :pswitch_1
    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 557
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 559
    :cond_3
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 554
    :pswitch_2
    sget-object p1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_2
        0x4b59da9 -> :sswitch_1
        0x1aa2fb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIs(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getRv(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private initSdk()V
    .locals 3

    .line 494
    sget-object v0, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CALLBACK_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setIntegrationErrorMode(Lcom/facebook/ads/AdSettings$IntegrationErrorMode;)V

    .line 495
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidCallInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    invoke-direct {v1, p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;-><init>(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)V

    .line 498
    invoke-interface {v0, v1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    :cond_0
    return-void
.end method

.method private loadInterstitial(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 4
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

    .line 228
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getIs(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    .line 232
    new-instance v2, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {v2, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;-><init>(Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-interface {v1, v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 233
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p1

    const/16 v0, 0x2bd

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz p3, :cond_3

    .line 239
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "pay_load"

    .line 242
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 244
    :try_start_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p3

    const/16 v2, 0x2be

    invoke-static {v2, p2, p3}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    :catchall_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    goto :goto_0

    .line 250
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p1

    const/16 p3, 0x2bf

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 254
    :catchall_2
    :goto_0
    invoke-interface {v1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "Interstitial"

    .line 258
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private loadRv(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 4
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

    .line 136
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getRv(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {v2, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;-><init>(Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-interface {v1, v2}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 142
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p1

    const/16 v0, 0x2bd

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz p3, :cond_3

    .line 148
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "pay_load"

    .line 151
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p3

    const/16 v2, 0x2be

    invoke-static {v2, p2, p3}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :catchall_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    goto :goto_0

    .line 159
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdNetworkId()I

    move-result p1

    const/16 p3, 0x2bf

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->event(ILjava/util/Map;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 163
    :catchall_2
    :goto_0
    invoke-interface {v1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "Rewarded Video"

    .line 167
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 339
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 0

    .line 387
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    if-eqz p2, :cond_4

    .line 388
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;

    if-nez p1, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;

    .line 394
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getMediaView()Lcom/facebook/ads/MediaView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getMediaView()Lcom/facebook/ads/MediaView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getIconView()Lcom/facebook/ads/MediaView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 398
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getIconView()Lcom/facebook/ads/MediaView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 400
    :cond_2
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 401
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 402
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void

    .line 389
    :cond_4
    :goto_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "FacebookAdapter NativeAd destroyNativeAd failed, AdnAdInfo is null"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.2"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.8.0"

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

    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 290
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Banner"

    if-eqz v0, :cond_1

    .line 292
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBnCallbacks:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "pid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->initSdk()V

    .line 294
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Init facebook sdk failed"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 304
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
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

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 199
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-eqz v0, :cond_1

    .line 201
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "pid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->initSdk()V

    .line 203
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Init facebook sdk failed"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 213
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 2
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

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    .line 345
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Native"

    if-eqz v0, :cond_1

    .line 347
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mNaCallbacks:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "pid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->initSdk()V

    .line 349
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitSuccess()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Init facebook sdk failed"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 359
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

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

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 107
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-eqz v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "pid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->initSdk()V

    .line 111
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mDidInitSuccess:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Init facebook sdk failed"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 121
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/InterstitialAd;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/RewardedVideoAd;

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isS2S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 313
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/facebook/ads/AdSize;

    move-result-object p1

    .line 316
    new-instance v0, Lcom/facebook/ads/AdView;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 317
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    const-string v1, "pay_load"

    .line 318
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 321
    :cond_0
    new-instance p3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;

    invoke-direct {p3, v0, p4}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;-><init>(Lcom/facebook/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-interface {p1, p3}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 322
    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 323
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "Banner"

    .line 326
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
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

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 223
    invoke-direct {p0, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->loadInterstitial(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-void
.end method

.method public loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
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
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    .line 368
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    new-instance p1, Lcom/facebook/ads/NativeAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    const-string v0, "pay_load"

    .line 372
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 375
    :cond_0
    new-instance p3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;

    invoke-direct {p3, p1, p4}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;-><init>(Lcom/facebook/ads/NativeAd;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-interface {p2, p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 376
    invoke-interface {p2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "Native"

    .line 379
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
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

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 131
    invoke-direct {p0, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->loadRv(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-void
.end method

.method public needPayload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 3

    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    if-eqz p3, :cond_b

    .line 412
    :try_start_0
    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 416
    :cond_0
    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;

    if-eqz p1, :cond_a

    .line 417
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object p3

    if-nez p3, :cond_1

    goto/16 :goto_0

    .line 420
    :cond_1
    new-instance p3, Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/nativead/MediaView;->removeAllViews()V

    .line 424
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_2
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/nativead/AdIconView;->removeAllViews()V

    .line 429
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_3
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 433
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_4
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getDescView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getDescView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_5
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 441
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_6
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getAdOptionsView()Lcom/facebook/ads/AdOptionsView;

    move-result-object v0

    if-nez v0, :cond_7

    .line 445
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 446
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 448
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 449
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    invoke-virtual {p2, v0, v1}, Lcom/openmediation/sdk/nativead/NativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->setAdOptionsView(Lcom/facebook/ads/AdOptionsView;)V

    .line 454
    :cond_7
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 455
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/nativead/MediaView;->addView(Landroid/view/View;)V

    .line 457
    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->setMediaView(Lcom/facebook/ads/MediaView;)V

    .line 459
    :cond_8
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 460
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 461
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/nativead/AdIconView;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->setIconView(Lcom/facebook/ads/MediaView;)V

    .line 465
    :cond_9
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object p2

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getMediaView()Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getIconView()Lcom/facebook/ads/MediaView;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1, p4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 467
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getAdOptionsView()Lcom/facebook/ads/AdOptionsView;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 468
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->getAdOptionsView()Lcom/facebook/ads/AdOptionsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/AdOptionsView;->bringToFront()V

    goto :goto_2

    :cond_a
    :goto_0
    return-void

    .line 413
    :cond_b
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "FacebookAdapter NativeAd not ready, AdnAdInfo is null"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    :goto_2
    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 1

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/InterstitialAd;

    .line 269
    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 272
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Facebook interstitial is not ready"

    const-string v0, "Interstitial"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 176
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mFbRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/RewardedVideoAd;

    .line 178
    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 181
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Facebook rewardedVideo is not ready"

    const-string v0, "Rewarded Video"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    :goto_0
    return-void
.end method
