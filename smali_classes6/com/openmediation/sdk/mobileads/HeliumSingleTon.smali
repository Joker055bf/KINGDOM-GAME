.class public Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
.super Ljava/lang/Object;
.source "HeliumSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;,
        Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;,
        Lcom/openmediation/sdk/mobileads/HeliumSingleTon$CbtHolder;,
        Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/mobileads/HeliumInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

.field private mInterstitialAdCallback:Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

.field private final mIsAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mRvAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAdCallback:Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->onBidSuccess(Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->onBidFailed(Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mVideoAdCallback:Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInterstitialAdCallback:Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
    .locals 1

    .line 68
    invoke-static {}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$CbtHolder;->access$100()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    move-result-object v0

    return-object v0
.end method

.method private onBidFailed(Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidFailed(Ljava/lang/String;)V

    return-void
.end method

.method private onBidSuccess(Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BidCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 367
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    new-instance v1, Lcom/openmediation/sdk/bid/BidResponse;

    invoke-direct {v1}, Lcom/openmediation/sdk/bid/BidResponse;-><init>()V

    .line 373
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NaN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/bid/BidResponse;->setPrice(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :catch_0
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/bid/BidResponse;->setOriginal(Ljava/lang/String;)V

    .line 382
    invoke-interface {p2, v1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Helium bid failed cause no bid response"

    .line 368
    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/BidCallback;->onBidFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getInitState()Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/HeliumInitCallback;)V
    .locals 2

    .line 73
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "Helium app key is empty"

    .line 75
    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;->initFailed(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 79
    :cond_1
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_2

    .line 81
    invoke-interface {p3}, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;->initSuccess()V

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 86
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_4
    sget-object p3, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    if-ne p3, v0, :cond_5

    return-void

    .line 91
    :cond_5
    sget-object p3, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    const-string p3, "#"

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 93
    aget-object p3, p2, p3

    const/4 v0, 0x1

    .line 94
    aget-object p2, p2, v0

    .line 96
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$$ExternalSyntheticLambda0;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/mediation/MediationUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 117
    sget-object p2, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 118
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    const-string p3, "Helium SDK initialized failed: "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;

    if-eqz p3, :cond_6

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;->initFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_7
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_1
    return-void
.end method

.method isInterstitialReady(Ljava/lang/String;)Z
    .locals 2

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;->readyToShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isRewardedVideoReady(Ljava/lang/String;)Z
    .locals 2

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;->readyToShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method synthetic lambda$init$0$com-openmediation-sdk-mobileads-HeliumSingleTon(Ljava/lang/Error;)V
    .locals 3

    if-nez p1, :cond_1

    .line 98
    sget-object p1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 99
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "Helium SDK initialized successfully"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;->initSuccess()V

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInitState:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 107
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium SDK initialized failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/mobileads/HeliumInitCallback;->initFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method synthetic lambda$init$1$com-openmediation-sdk-mobileads-HeliumSingleTon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$$ExternalSyntheticLambda1;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)V

    invoke-static {p1, p2, p3, v0}, Lcom/chartboost/heliumsdk/HeliumSdk;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/HeliumSdk$HeliumSdkListener;)V

    return-void
.end method

.method loadInterstitial(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 2

    .line 163
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V

    .line 164
    new-instance p2, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAdListener;)V

    .line 165
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->setHeliumAd(Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;)V

    .line 166
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;->load()V

    return-void
.end method

.method loadRewardedVideo(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 2

    .line 141
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V

    .line 142
    new-instance p2, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAdListener;)V

    .line 143
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->setHeliumAd(Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;)V

    .line 144
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;->load()V

    return-void
.end method

.method setInterstitialAdCallback(Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mInterstitialAdCallback:Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    return-void
.end method

.method setVideoAdCallback(Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mVideoAdCallback:Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    return-void
.end method

.method showInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;->show()V

    .line 180
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mIsAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method showRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;->show()V

    .line 158
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->mRvAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
