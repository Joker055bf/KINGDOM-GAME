.class public final Lcom/openmediation/sdk/core/OmManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/InitCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;,
        Lcom/openmediation/sdk/core/OmManager$OmHolder;
    }
.end annotation


# static fields
.field private static final MAX_INIT_COUNT:I = 0xa


# instance fields
.field private mAutoCacheAd:Z

.field private mCpListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/promotion/PromotionAdListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCpManagers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/core/imp/promotion/CpManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDidCpInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDidIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDidNaInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDidRvInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInForeground:Z

.field private mIsListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/interstitial/InterstitialAdListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsManagers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/MediationInterstitialListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNaListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/nativead/NativeAdListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNaManagers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/core/imp/nativead/NaManager;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;

.field private final mPreloadAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private final mReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRvListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/video/RewardedVideoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRvManagers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidRvInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidCpInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidNaInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsInForeground:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mUserId:Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mAutoCacheAd:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/core/OmManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/core/OmManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/core/OmManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private addIsAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->addInterstitialAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    :cond_2
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    :cond_3
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->addAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->addPromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    :cond_2
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    :cond_3
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addRvAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->addRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    :cond_2
    iget-object p3, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    :cond_3
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private anotherInitCalledAfterInitSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
            ">;)V"
        }
    .end annotation

    const-string v0, "anotherInitCalledAfterInitSuccess"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-nez v0, :cond_1

    const-string p1, "anotherInitCalledAfterInitSuccess failed cause config empty"

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getPls()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->REWARDED_VIDEO:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mDidRvInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->preloadRV(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleRv()V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->INTERSTITIAL:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mDidIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->preloadIS(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleIs()V

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->PROMOTION:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mDidCpInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->preloadCP(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleCp()V

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string p1, "anotherInitCalledAfterInitSuccess failed cause placementMap empty"

    goto :goto_0

    :cond_b
    :goto_3
    return-void
.end method

.method private callbackErrorWhileLoadBeforeInit(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 6

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    const-string v2, "Load SDK Uninitialized"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;

    invoke-interface {v5, v1}, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;->onInterstitialAdAvailabilityChanged(Z)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-interface {v3, p1}, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openmediation/sdk/video/RewardedVideoListener;

    invoke-interface {v5, v1}, Lcom/openmediation/sdk/video/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_4

    :cond_7
    :goto_5
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_8
    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-interface {v3, p1}, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/promotion/PromotionAdListener;

    invoke-interface {v4, v1}, Lcom/openmediation/sdk/promotion/PromotionAdListener;->onPromotionAdAvailabilityChanged(Z)V

    goto :goto_7

    :cond_c
    :goto_8
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_b

    :cond_f
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/nativead/NativeAdListener;

    invoke-interface {v4, v1, p1}, Lcom/openmediation/sdk/nativead/NativeAdListener;->onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_a

    :cond_10
    :goto_b
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    return-void
.end method

.method private checkHasLoadWhileInInitProgress()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->loadRewardedVideo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->loadPromotionAd(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->loadNativeAd(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private checkInvalidTagValue(Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "The value of tag should not be empty!"

    const/4 v1, 0x1

    const-string v2, "OmAds"

    if-nez p1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x30

    if-le p1, v0, :cond_2

    const-string p1, "The length of tag value should not be more than 48!"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private checkValidMap(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "OmAds"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "The map of tags is empty!"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    const-string p1, "The number of tags should not be more than 10!"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "The key of tag should not be empty!"

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/openmediation/sdk/core/OmManager;->checkInvalidTagValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private clearCacheListeners()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_3
    return-void
.end method

.method private getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/OmManager;->getPlacement(Ljava/lang/String;I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    return-object p1
.end method

.method public static getInstance()Lcom/openmediation/sdk/core/OmManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager$OmHolder;->access$100()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    return-object v0
.end method

.method private getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/OmManager;->getPlacement(Ljava/lang/String;I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    return-object p1
.end method

.method private getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/OmManager;->getPlacement(Ljava/lang/String;I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    return-object p1
.end method

.method private getPlacement(Ljava/lang/String;I)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    return-object p1
.end method

.method private getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/OmManager;->getPlacement(Ljava/lang/String;I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    return-object p1
.end method

.method private initManagerWithDefaultPlacementId()V
    .locals 5

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getPls()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v2

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/4 v4, 0x5

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    invoke-direct {v2}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;-><init>()V

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->initSplashAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    invoke-direct {v2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;-><init>()V

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    invoke-direct {v2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;-><init>()V

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    invoke-direct {v2}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;-><init>()V

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    :goto_1
    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method private preloadAdWithAdType()V
    .locals 4

    const-string v0, "preloadAdWithAdType"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-nez v0, :cond_0

    const-string v0, "preloadAdWithAdType failed cause config empty"

    :goto_0
    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getPls()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "preload all ad"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadIS(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadRV(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadCP(Ljava/util/Set;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    sget-object v3, Lcom/openmediation/sdk/OmAds$AD_TYPE;->INTERSTITIAL:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadIS(Ljava/util/Set;)V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/openmediation/sdk/OmAds$AD_TYPE;->REWARDED_VIDEO:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v2, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadRV(Ljava/util/Set;)V

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/openmediation/sdk/OmAds$AD_TYPE;->PROMOTION:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->preloadCP(Ljava/util/Set;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string v0, "preloadAdWithAdType failed cause placementMap empty"

    goto :goto_0
.end method

.method private preloadCP(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "preloadCP"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidCpInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preloadCP for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private preloadIS(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidIsInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preloadIS for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private preloadNa(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "preloadNa"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidNaInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preloadNa for placementId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private preloadRV(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "preloadRV"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDidRvInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preloadRV for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setListeners()V
    .locals 6

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v1}, Lcom/openmediation/sdk/core/OmManager;->addIsAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/video/RewardedVideoListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v1}, Lcom/openmediation/sdk/core/OmManager;->addRvAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/promotion/PromotionAdListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v1}, Lcom/openmediation/sdk/core/OmManager;->addPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/nativead/NativeAdListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v1}, Lcom/openmediation/sdk/core/OmManager;->addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;Z)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_b
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-virtual {p0, v2, v1}, Lcom/openmediation/sdk/core/OmManager;->setMediationRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_e
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-virtual {p0, v2, v1}, Lcom/openmediation/sdk/core/OmManager;->setMediationInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_11
    return-void
.end method

.method private startScheduleCp()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startScheduleCp for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->initPromotionAd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScheduleIs()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startScheduleIs for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->initInterstitialAd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScheduleNa()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startScheduleNa for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->initNativeAd()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScheduleRv()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startScheduleRv for placementId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->initRewardedVideo()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScheduleTaskWithPreloadType()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleRv()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleIs()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleCp()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->REWARDED_VIDEO:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleRv()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->INTERSTITIAL:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleIs()V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->PROMOTION:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleCp()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/OmManager;->addIsAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;Z)V

    return-void
.end method

.method public addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/OmManager;->addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;Z)V

    return-void
.end method

.method public addPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/OmManager;->addPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;Z)V

    return-void
.end method

.method public addRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/OmManager;->addRvAdListenerImp(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;Z)V

    return-void
.end method

.method public clearCustomTags()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->destroy(Lcom/openmediation/sdk/nativead/AdInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "SDK Uninitialized"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAgeRestricted()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAutoCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mAutoCacheAd:Z

    return v0
.end method

.method public getAvailableInstance(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getAvailableInstance()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCustomTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getGDPRConsent()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalTime(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getIntervalTime()I

    move-result p1

    return p1
.end method

.method public getInventorySize(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getInventorySize()I

    move-result p1

    return p1
.end method

.method public getMetaData()Lcom/openmediation/sdk/core/MetaData;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getMetaData()Lcom/openmediation/sdk/core/MetaData;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.6"

    return-object v0
.end method

.method public getTagsObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/JsonUtil;->convert(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getUSPrivacyLimit()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUserGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public hidePromotionAd(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->hidePromotionAd()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "SDK Uninitialized"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Z)V

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/InitLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/InitLog;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->setActivity(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInit()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/openmediation/sdk/InitCallback;->onSuccess()V

    const/16 p1, 0x3e9

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInitLog(Lcom/openmediation/sdk/inspector/logs/InitLog;)V

    :cond_1
    invoke-virtual {p2}, Lcom/openmediation/sdk/InitConfiguration;->getAdTypes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->anotherInitCalledAfterInitSuccess(Ljava/util/List;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInitRunning()Z

    move-result v1

    invoke-virtual {p0, p3}, Lcom/openmediation/sdk/core/OmManager;->pendingInit(Lcom/openmediation/sdk/InitCallback;)V

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, v0, p0}, Lcom/openmediation/sdk/core/InitImp;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/inspector/logs/InitLog;Lcom/openmediation/sdk/InitCallback;)V

    :goto_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/InitConfiguration;->getAdTypes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/openmediation/sdk/InitConfiguration;->getAdTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/openmediation/sdk/core/OmManager;->mPreloadAdTypes:Ljava/util/List;

    invoke-virtual {p2}, Lcom/openmediation/sdk/InitConfiguration;->getAdTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method public isInForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsInForeground:Z

    return v0
.end method

.method public isInit()Z
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInit()Z

    move-result v0

    return v0
.end method

.method public isInitRunning()Z
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInitRunning()Z

    move-result v0

    return v0
.end method

.method public isInterstitialAdReady(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    const/16 v1, 0x1f7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->isInterstitialAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1f6

    :cond_0
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_1
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public isPromotionAdReady(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v0

    const/16 v1, 0x1f7

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->isPromotionAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1f6

    :cond_0
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_1
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public isRewardedVideoReady(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    const/16 v1, 0x1f7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->isRewardedVideoReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1f6

    :cond_0
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    return v0

    :cond_1
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public isSceneCapped(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/BaseOmAds;->isSceneCapped(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadInterstitialAd(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0x1f4

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->loadInterstitialAd()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInitRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadIs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "Load SDK Uninitialized"

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;->onInterstitialAdAvailabilityChanged(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const/16 v2, 0xf2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public loadNativeAd(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1f4

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->loadNativeAd()V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInitRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadNa:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "Load SDK Uninitialized"

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0xd3

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/nativead/NativeAdListener;

    invoke-interface {v2, p1, v1}, Lcom/openmediation/sdk/nativead/NativeAdListener;->onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public loadPromotionAd(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/16 v2, 0x1f4

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->loadPromotionAd()V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInitRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadCp:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/promotion/PromotionAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/promotion/PromotionAdListener;->onPromotionAdAvailabilityChanged(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "Load SDK Uninitialized"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->loadRewardedVideo()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInitRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mDelayLoadRv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "Load SDK Uninitialized"

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/video/RewardedVideoListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/video/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const/16 v2, 0xf2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->callbackErrorWhileLoadBeforeInit(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/InitCallback;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Om SDK init failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Lcom/openmediation/sdk/InitCallback;->onError(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->startReInitTask(Z)V

    return-void
.end method

.method public onNetworkChanged()V
    .locals 1

    const-string v0, "Start Re Init SDK: Network Changed"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/OmManager;->startReInitTask(Z)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsInForeground:Z

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->onPause(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onPause(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onPause(Landroid/app/Activity;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onPause(Landroid/app/Activity;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsInForeground:Z

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->onResume(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onResume(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onResume(Landroid/app/Activity;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaManagers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onResume(Landroid/app/Activity;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onSuccess()V
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->unregisterNetworkReceiver()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->initManagerWithDefaultPlacementId()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->setListeners()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->checkHasLoadWhileInInitProgress()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->preloadAdWithAdType()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/InitCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/openmediation/sdk/InitCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmManager;->startScheduleTaskWithPreloadType()V

    return-void
.end method

.method pendingInit(Lcom/openmediation/sdk/InitCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mInitCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1f5

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->registerView(Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/nativead/AdInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "NativeAd register failed: No Placement "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerNetworkReceiver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/openmediation/sdk/core/NetworkReceiver;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/NetworkReceiver;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public removeCustomTag(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;->setTags(Ljava/util/Map;)V

    const/16 p1, 0xbbb

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void
.end method

.method public removeInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->removeInterstitialAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public removeNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->removeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mNaListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public removePromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->removePromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public removeRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->removeRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public setAgeRestricted(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setAgeRestricted(Z)V

    return-void
.end method

.method public setAutoCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/core/OmManager;->mAutoCacheAd:Z

    return-void
.end method

.method public setCustomTagObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OmAds"

    if-eqz v0, :cond_0

    const-string p1, "The key of tag should not be empty!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "The value of tag should not be empty!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/openmediation/sdk/core/OmManager;->checkInvalidTagValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    const-string p1, "The number of tags should not be more than 10!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {p1}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;->setTags(Ljava/util/Map;)V

    const/16 p2, 0xbb9

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void
.end method

.method public setCustomTagObjects(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OmAds"

    if-eqz v0, :cond_0

    const-string p1, "The key of tag should not be empty!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    invoke-direct {p0, v3}, Lcom/openmediation/sdk/core/OmManager;->checkInvalidTagValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    const-string p1, "The number of tags should not be more than 10!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {p1}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;->setTags(Ljava/util/Map;)V

    const/16 p2, 0xbb9

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void

    :cond_6
    :goto_1
    const-string p1, "The value of tag should not be empty!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCustomTags(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->checkValidMap(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    const-string p1, "OmAds"

    const-string v0, "The number of tags should not be more than 10!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;->setTags(Ljava/util/Map;)V

    const/16 p1, 0xbb9

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void
.end method

.method public setDisplayParams(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getNaManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/nativead/NaManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->setDisplayParams(II)V

    :cond_0
    return-void
.end method

.method public setGDPRConsent(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setGDPRConsent(Z)V

    return-void
.end method

.method public setIAP(FLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/openmediation/sdk/utils/helper/IapHelper;->setIap(FLjava/lang/String;)V

    return-void
.end method

.method public setInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->addInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public setMediationInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->setMediationInterstitialAdListener(Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setMediationRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->setMediationRewardedVideoListener(Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method public setPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->addPromotionAdListener(Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    return-void
.end method

.method public setRewardedExtId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->setRewardedExtId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->addRewardedVideoListener(Ljava/lang/String;Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method public setUSPrivacyLimit(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setUSPrivacyLimit(Z)V

    return-void
.end method

.method public setUserAge(I)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setUserAge(I)V

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository;->getInstance()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setUserGender(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/openmediation/sdk/core/OmManager;->mUserId:Ljava/lang/String;

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/SettingsLog;->setUserId(Ljava/lang/String;)V

    const/16 p1, 0xbba

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V

    return-void
.end method

.method public showInterstitialAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x1f5

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIsManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;->showInterstitialAd(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, -0x1

    const/16 v2, 0x156

    const-string v3, "SDK Uninitialized"

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object v5

    new-instance v6, Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {v6, v2, v3, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5, v6}, Lcom/openmediation/sdk/interstitial/InterstitialAdListener;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationIsListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    new-instance p2, Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {p2, v2, v3, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showPromotionAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x1f5

    const/4 v1, 0x5

    invoke-static {v0, p2, p4, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/core/OmManager;->getCpManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/promotion/CpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p4}, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->showPromotionAd(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    const-string p3, "SDK Uninitialized"

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/openmediation/sdk/core/OmManager;->mCpListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/promotion/PromotionAdListener;

    invoke-static {p2}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object v1

    new-instance v2, Lcom/openmediation/sdk/utils/error/Error;

    const/16 v3, 0x156

    const/4 v4, -0x1

    invoke-direct {v2, v3, p3, v4}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/openmediation/sdk/promotion/PromotionAdListener;->onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "Load SDK Uninitialized"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x1f5

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmManager;->getRvManager(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, -0x1

    const/16 v2, 0x156

    const-string v3, "SDK Uninitialized"

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/video/RewardedVideoListener;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object v5

    new-instance v6, Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {v6, v2, v3, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5, v6}, Lcom/openmediation/sdk/video/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "Load SDK Uninitialized"

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/openmediation/sdk/core/OmManager;->mMediationRvListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    new-instance p2, Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {p2, v2, v3, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public startReInitTask(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmManager;->unregisterNetworkReceiver()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mReInitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/openmediation/sdk/core/OmManager$1;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager$1;-><init>(Lcom/openmediation/sdk/core/OmManager;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public declared-synchronized unregisterNetworkReceiver()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openmediation/sdk/core/OmManager;->mNetworkReceiver:Lcom/openmediation/sdk/core/NetworkReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    monitor-exit p0

    return-void
.end method
