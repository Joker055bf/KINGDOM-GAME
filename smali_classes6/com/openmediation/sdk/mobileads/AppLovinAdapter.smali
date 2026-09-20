.class public Lcom/openmediation/sdk/mobileads/AppLovinAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# static fields
.field static final AGE_RESTRICTION:I = 0x10


# instance fields
.field private final mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mBannerAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinAdView;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mRvAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;",
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

    .line 51
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method private getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/applovin/sdk/AppLovinAdSize;"
        }
    .end annotation

    .line 554
    invoke-static {p2}, Lcom/openmediation/sdk/mediation/MediationUtil;->getBannerDesc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 555
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

    .line 567
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 557
    :pswitch_0
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 561
    :pswitch_1
    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 562
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 564
    :cond_3
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    return-object p1

    nop

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

.method static getErrorString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x3f1

    if-eq p0, v0, :cond_8

    const/16 v0, -0x3e9

    if-eq p0, v0, :cond_7

    const/16 v0, -0x258

    if-eq p0, v0, :cond_6

    const/16 v0, -0x1f4

    if-eq p0, v0, :cond_5

    const/16 v0, -0x190

    if-eq p0, v0, :cond_4

    const/16 v0, -0x12c

    if-eq p0, v0, :cond_3

    const/4 v0, -0x6

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown error"

    return-object p0

    :cond_0
    const-string p0, "No fill"

    return-object p0

    :cond_1
    const-string p0, "Unspecified error"

    return-object p0

    :cond_2
    const-string p0, "Unable to render ad"

    return-object p0

    :cond_3
    const-string p0, "No ad pre-loaded"

    return-object p0

    :cond_4
    const-string p0, "Unknown server error"

    return-object p0

    :cond_5
    const-string p0, "Server timeout"

    return-object p0

    :cond_6
    const-string p0, "User closed video before reward"

    return-object p0

    :cond_7
    const-string p0, "Ad fetch timeout"

    return-object p0

    :cond_8
    const-string p0, "No network available"

    return-object p0
.end method

.method private getVideo(Ljava/lang/String;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    .line 143
    invoke-static {p1, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private declared-synchronized initSDK(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 481
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adClicked:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OM-AppLovin"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_1

    .line 489
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 497
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adDisplayed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OM-AppLovin"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 499
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_1

    .line 505
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 513
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adHidden:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OM-AppLovin"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_1

    .line 521
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 1

    .line 466
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 473
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.3"

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
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

    .line 363
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 364
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 366
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;

    invoke-direct {p1, p0, p3}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initSDK(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Banner"

    .line 384
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
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

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 242
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 244
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;

    invoke-direct {p1, p0, p3}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initSDK(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Interstitial"

    .line 262
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
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

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 109
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;

    invoke-direct {p1, p0, p3}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initSDK(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Rewarded Video"

    .line 129
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 4
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

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 393
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Banner"

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 396
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 402
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    if-nez p1, :cond_2

    .line 404
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "unsupported banner size"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void

    .line 408
    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p3

    .line 409
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p3, p1, p2, v2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    .line 411
    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p3, p1, :cond_3

    const/16 p1, 0x2d8

    const/16 p3, 0x5a

    goto :goto_0

    :cond_3
    const/16 p1, 0x140

    const/16 p3, 0x32

    .line 415
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float p1, p1

    invoke-static {v3, p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 416
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float p3, p3

    invoke-static {v3, p3}, Lcom/openmediation/sdk/mediation/MediationUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    invoke-direct {v2, p1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 415
    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;

    invoke-direct {p1, p0, p4, v0}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/applovin/adview/AppLovinAdView;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 433
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;

    invoke-direct {p1, p0, p4}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$7;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 441
    new-instance p1, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;

    invoke-direct {p1, p0, p4}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$8;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 454
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 455
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_4

    .line 458
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Error, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_1
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

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "Interstitial"

    if-eqz p3, :cond_2

    .line 273
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 275
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_0
    return-void

    .line 280
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->getAppLovinSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 282
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    new-instance p3, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;

    invoke-direct {p3, p0, p2, p4}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-interface {p1, p2, p3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_3

    .line 304
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Error, "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 310
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

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

    const-string v0, "Rewarded Video"

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 153
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 155
    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->getVideo(Ljava/lang/String;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p4, :cond_2

    .line 158
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    goto :goto_0

    .line 161
    :cond_0
    new-instance p3, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$2;

    invoke-direct {p3, p0, p4}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$2;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p1, p3}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 179
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 183
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_2

    .line 189
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Error, "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAgeRestricted(Landroid/content/Context;Z)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p2, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setGDPRConsent(Landroid/content/Context;Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setGDPRConsent(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p2, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setUSPrivacyLimit(Landroid/content/Context;Z)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p2, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setUserAge(Landroid/content/Context;I)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUserAge(Landroid/content/Context;I)V

    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 322
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 329
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->getAppLovinSdk()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 331
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 333
    invoke-interface {p1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 334
    invoke-interface {p1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    if-eqz p3, :cond_2

    .line 336
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mIsCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 339
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAppLovinIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_4

    .line 344
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 350
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "not ready"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 8

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 198
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 201
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->getVideo(Ljava/lang/String;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v2

    .line 207
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    .line 209
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "AppLovin video not ready when show"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 216
    :try_start_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_5

    .line 223
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 529
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoPlaybackBegan:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OM-AppLovin"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 3

    .line 540
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoPlaybackEnded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentViewed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", fullyWatched:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OM-AppLovin"

    invoke-virtual {v0, p3, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 543
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->mRvCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 545
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    if-eqz p4, :cond_0

    .line 547
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method
