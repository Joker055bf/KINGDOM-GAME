.class public Lcom/openmediation/sdk/bid/BidS2SManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/bid/BidS2SManager$BidHolder;
    }
.end annotation


# instance fields
.field private final mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/bid/BidResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/bid/BidS2SManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/bid/BidS2SManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/bid/BidS2SManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/bid/BidS2SManager;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidS2SManager;->resetBidState(ZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/bid/BidS2SManager;Landroid/content/Context;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/bid/BidResponse;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/bid/BidS2SManager;->getBidInstanceToken(Landroid/content/Context;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidS2SManager;->bidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidS2SManager;->bidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/bid/BidS2SManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidS2SManager;->callbackBidResult(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S2S Bid Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object p2, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized bidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_SUCCESS:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/openmediation/sdk/bid/BidResponse;->setIid(I)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized callbackBidResult(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/bid/BidResponseCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidS2SComplete(Ljava/util/List;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getBidInstanceToken(Landroid/content/Context;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/bid/BidResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    new-instance p2, Lcom/openmediation/sdk/bid/BidResponse;

    invoke-direct {p2}, Lcom/openmediation/sdk/bid/BidResponse;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/bid/BidResponse;->setIid(I)V

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/bid/BidResponse;->setToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "S2S bid error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "S2S get token error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2729

    invoke-static {p3, p2, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method public static getInstance()Lcom/openmediation/sdk/bid/BidS2SManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/bid/BidS2SManager$BidHolder;->access$100()Lcom/openmediation/sdk/bid/BidS2SManager;

    move-result-object v0

    return-object v0
.end method

.method private resetBidResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager;->mS2SInstanceBidResponse:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetBidState(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/openmediation/sdk/core/InsManager;->isInstanceAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->NOT_BIDDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/bid/BidResponseCallback;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/bid/BidS2SManager;->resetBidResponse(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/bid/BidManager;->getBidInstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    invoke-interface {p5, v4}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidS2SComplete(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/openmediation/sdk/bid/BidS2SManager$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/openmediation/sdk/bid/BidS2SManager$1;-><init>(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/bid/BidResponseCallback;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v8}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    invoke-interface {p5, v4}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidS2SComplete(Ljava/util/List;)V

    :cond_4
    return-void
.end method
