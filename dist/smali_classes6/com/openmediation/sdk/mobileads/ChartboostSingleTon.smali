.class public Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;
.super Ljava/lang/Object;
.source "ChartboostSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;,
        Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;,
        Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;,
        Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;,
        Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChartboostSingleTon "


# instance fields
.field private volatile mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

.field private final mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/ads/Interstitial;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRewardedAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/ads/Rewarded;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mListeners:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->initOnMainThread(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;)Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;
    .locals 1

    .line 56
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$Holder;->access$100()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object v0

    return-object v0
.end method

.method private initOnMainThread(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "#"

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 95
    aget-object v0, p2, v0

    const/4 v1, 0x1

    .line 96
    aget-object p2, p2, v1

    .line 97
    new-instance v1, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;

    invoke-direct {v1, p0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V

    invoke-static {p1, v0, p2, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/callbacks/StartCallback;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 64
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 73
    invoke-interface {p3}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;->initSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    sget-object p3, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v0, :cond_4

    .line 81
    monitor-exit p0

    return-void

    .line 83
    :cond_4
    :try_start_2
    sget-object p3, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    .line 84
    new-instance p3, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$1;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-static {p3}, Lcom/openmediation/sdk/mediation/MediationUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    :try_start_3
    const-string p1, "Context is null or AppKey is empty"

    .line 66
    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;->initFailed(Ljava/lang/String;)V

    .line 68
    :cond_6
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "Init Failed: Context is null or AppKey is empty!"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isInit()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    sget-object v1, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterstitialAdReady(Ljava/lang/String;)Z
    .locals 2

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->isCached()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isRewardedVideoReady(Ljava/lang/String;)Z
    .locals 2

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Rewarded;->isCached()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public loadInterstitialAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    .line 146
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadInterstitialAd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChartboostSingleTon "

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V

    .line 148
    new-instance v1, Lcom/chartboost/sdk/ads/Interstitial;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/chartboost/sdk/ads/Interstitial;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/Mediation;)V

    .line 149
    invoke-virtual {v0, p1, v1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->setInterstitialAd(Ljava/lang/String;Lcom/chartboost/sdk/ads/Interstitial;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 150
    invoke-virtual {v1}, Lcom/chartboost/sdk/ads/Interstitial;->cache()V

    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadRewardedVideo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChartboostSingleTon "

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V

    .line 125
    new-instance v1, Lcom/chartboost/sdk/ads/Rewarded;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/chartboost/sdk/ads/Rewarded;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/RewardedCallback;Lcom/chartboost/sdk/Mediation;)V

    .line 126
    invoke-virtual {v0, p1, v1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->setRewardedAd(Ljava/lang/String;Lcom/chartboost/sdk/ads/Rewarded;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 127
    invoke-virtual {v1}, Lcom/chartboost/sdk/ads/Rewarded;->cache()V

    return-void
.end method

.method public showInterstitialAd(Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->show()V

    :cond_0
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Rewarded;->show()V

    :cond_0
    return-void
.end method
