.class public Lcom/openmediation/sdk/bid/BidC2SManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;,
        Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;,
        Lcom/openmediation/sdk/bid/BidC2SManager$BidHolder;
    }
.end annotation


# instance fields
.field private final mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

.field private final mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/bid/BidC2SManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/bid/BidC2SManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/bid/BidC2SManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/bid/BidC2SManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/bid/BidC2SManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->resetBidState(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/bid/BidC2SManager;->bidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/bid/BidC2SManager;Landroid/content/Context;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/openmediation/sdk/bid/BidC2SManager;->executeBid(Landroid/content/Context;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->bidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->bidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->isBidComplete(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->callbackBidResult(Ljava/lang/String;)V
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

.method private bidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;J)V
    .locals 0

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->onInsBidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/bid/BidC2SManager;->startTimeout(Lcom/openmediation/sdk/utils/model/BaseInstance;J)V

    return-void
.end method

.method private declared-synchronized bidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidState()Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->onBidResponse(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->isBidComplete(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/bid/BidC2SManager;->callbackBidResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
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
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/bid/BidResponseCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidC2SComplete(Ljava/util/List;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidResultCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private executeBid(Landroid/content/Context;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;

    invoke-direct {v0, p5}, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :try_start_0
    invoke-static {p2, p5, p3, p4}, Lcom/openmediation/sdk/bid/BidUtil;->makeBidRequestInfo(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;ILcom/openmediation/sdk/banner/AdSize;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p6, p1, p2, v0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getBidResponse(Landroid/content/Context;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "C2S bid failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;->onBidFailed(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "C2S bid error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ", Instance: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x272c

    invoke-static {p5, p2, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/bid/BidC2SManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/bid/BidC2SManager$BidHolder;->access$100()Lcom/openmediation/sdk/bid/BidC2SManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isBidComplete(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidState()Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    move-result-object v6

    sget-object v7, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_SUCCESS:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidState()Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    move-result-object v5

    sget-object v6, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v3, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_5
    :goto_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " C2S Bid Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->stopTimeout(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method private onBidResponse(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->stopTimeout(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method private resetBidResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mSuccessInstances:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private resetBidState(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->NOT_BIDDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startTimeout(Lcom/openmediation/sdk/utils/model/BaseInstance;J)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopTimeout(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/bid/BidC2SManager$BidTimeout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager;->mBidTimeoutRunnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public bid(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/bid/BidResponseCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/openmediation/sdk/banner/AdSize;",
            "Lcom/openmediation/sdk/bid/BidResponseCallback;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v2, p3

    move-object/from16 v4, p7

    invoke-direct {p0, p3}, Lcom/openmediation/sdk/bid/BidC2SManager;->resetBidResponse(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/openmediation/sdk/bid/BidC2SManager$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p7

    move-object v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/openmediation/sdk/bid/BidC2SManager$1;-><init>(Lcom/openmediation/sdk/bid/BidC2SManager;Ljava/lang/String;Ljava/util/List;Lcom/openmediation/sdk/bid/BidResponseCallback;Ljava/lang/String;Landroid/content/Context;ILcom/openmediation/sdk/banner/AdSize;)V

    invoke-static {v10}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidC2SComplete(Ljava/util/List;)V

    :cond_2
    return-void
.end method
