.class public abstract Lcom/openmediation/sdk/core/AbstractInventoryAds;
.super Lcom/openmediation/sdk/core/AbstractAdsApi;


# instance fields
.field private final isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isInLoadingProgress:Z

.field protected isInShowingProgress:Z

.field private final mAllLoadFailedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDidScheduleTaskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterval:I

.field private mInventorySize:I

.field private final mLastAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mScene:Lcom/openmediation/sdk/utils/model/Scene;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mLastAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mDidScheduleTaskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mAllLoadFailedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/core/AbstractInventoryAds;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->initOrFetchNextAdapter()V

    return-void
.end method

.method private checkHasExpiredInstance()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AbstractInventoryAds, Instance has expired: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/16 v2, 0x116

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->resetMediationStateAndNotifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AbstractInventoryAds, Instance is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/16 v2, 0x117

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private checkShowAvailable(Ljava/lang/String;)Lcom/openmediation/sdk/utils/error/Error;
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "show ad failed, current is showing"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {v1, p1, v1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "placement is null"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string p1, "Show Invalid Argument, Placement not found"

    const/4 v0, 0x4

    const/16 v1, 0x137

    invoke-static {v1, p1, v0}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x160

    const-string v0, "Scene not found"

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLoadLimit()I
    .locals 6

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getBs()I

    move-result v0

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private declared-synchronized initOrFetchNextAdapter()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setAdapter(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V

    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v3, v4, :cond_6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_1

    :cond_5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getLoadLimit()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ins load limit: canLoadCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", getLoadLimit() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2727

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    if-nez v1, :cond_a

    :try_start_1
    const-string v0, "Load No Available Ad, no can load ins"

    const/4 v1, -0x1

    const/16 v2, 0xf1

    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_9
    :goto_2
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const-string v1, "Not can load ins"

    const/16 v2, 0x2726

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reSizeInventorySize()V
    .locals 2

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getCs()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    return-void
.end method

.method private removeBidResponseWhenLoad()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/InsManager;->getInsIdWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/openmediation/sdk/bid/BidResponse;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2712

    const-string v3, "Bid response is expired"

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    const/16 v2, 0x116

    invoke-virtual {p0, v1, v2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->resetMediationStateAndNotifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reportEvent(ILorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method private scheduleLoadAdTask()V
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getRfs()Ljava/util/Map;

    move-result-object v0

    const-string v1, "post adsScheduleTask delay : "

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mDidScheduleTaskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInterval:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v1, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;

    invoke-direct {v1, p0, v0}, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;-><init>(Lcom/openmediation/sdk/core/AbstractInventoryAds;I)V

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mDidScheduleTaskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getDefaultInterval()I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInterval:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v1, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;

    invoke-direct {v1, p0, v0}, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;-><init>(Lcom/openmediation/sdk/core/AbstractInventoryAds;I)V

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private shouldFinishLoad()Z
    .locals 8

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->SKIP:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v0, v2}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v0

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v3, v7, v4

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v3, v7, v6

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v3, v7, v1

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v3, 0x3

    aput-object v1, v7, v3

    const/4 v1, 0x4

    aput-object v5, v7, v1

    invoke-static {v2, v7}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v1

    iget v2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "full of cache or loaded all ins, current load is finished : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    if-gtz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const/16 v1, 0xf1

    const-string v2, "all ins load failed"

    invoke-direct {v0, v1, v2, v6}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    return v6
.end method

.method private shouldShowAd(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkShowAvailable(Ljava/lang/String;)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    return v1

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockScene(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Scene Capped"

    const/4 v0, -0x1

    const/16 v2, 0x157

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected appendLastBidResult()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/openmediation/sdk/core/InsManager;->getInsIdWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected callbackAdClosed()V
    .locals 0

    return-void
.end method

.method protected callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad load failed placementId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method protected callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method

.method protected callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    return-void
.end method

.method protected callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad show failed placementId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method protected checkScheduleTaskStarted()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mDidScheduleTaskStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->scheduleLoadAdTask()V

    :cond_0
    return-void
.end method

.method protected finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInLoadingProgress:Z

    return-void
.end method

.method public getAllLoadFailedCount()I
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mAllLoadFailedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getAvailableInstance()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/InsManager;->getInsWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInterval()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method protected getIntervalTime()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInterval:I

    return v0
.end method

.method protected getInventorySize()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    return v0
.end method

.method protected getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRfs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getRfs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
.end method

.method protected inventoryAdsReportAReady()V
    .locals 10

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    sget-object v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v5

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v6

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILjava/lang/String;IIIII)V

    :cond_0
    return-void
.end method

.method public isInventoryAdsType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isPlacementAvailable()Z
    .locals 3

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method protected isReload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyUnLoadInsBidLose()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v2, v3, :cond_1

    :cond_3
    sget-object v2, Lcom/openmediation/sdk/bid/BidLoseReason;->LOST_TO_HIGHER_BIDDER:Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-virtual {v2}, Lcom/openmediation/sdk/bid/BidLoseReason;->getValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/openmediation/sdk/bid/BidUtil;->notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onAllLoadFailed()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mAllLoadFailedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->buildAbtReportData(IILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x70

    invoke-direct {p0, v1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->reportEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method protected abstract onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V
.end method

.method public onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "AbstractInventoryAds before onInsC2SBidSuccess TotalIns: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p2, p1}, Lcom/openmediation/sdk/core/InsManager;->sort(Ljava/util/List;Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AbstractInventoryAds after onInsC2SBidSuccess sort TotalIns: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAdClosed()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    sget-object p1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->CLOSE:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ad close placementId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->notifyLoadFailedInsBidLose(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldFinishLoad()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAllLoadFailed()V

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->notifyUnLoadInsBidLose()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->initOrFetchNextAdapter()V

    :goto_0
    return-void
.end method

.method protected declared-synchronized onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V
    .locals 2

    const-string v0, "onInsLoadFailed shouldFinishLoad shouldNotifyAvailableChanged "

    const-string v1, "Load No Available Ad, All ins load failed, PlacementId: "

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldFinishLoad()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xf1

    const/4 v1, -0x1

    invoke-direct {p1, p3, p2, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAllLoadFailed()V

    iget-boolean p3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->notifyUnLoadInsBidLose()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->initOrFetchNextAdapter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V
    .locals 10

    const-string v0, "Ad load success placementId: "

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mAllLoadFailedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldFinishLoad()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->initOrFetchNextAdapter()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->notifyUnLoadInsBidLose()V

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getReqId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v5

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v6

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILjava/lang/String;IIIII)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    :cond_2
    iget-boolean p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iput-boolean p2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ad show success placementId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected resetBeforeGetInsOrder()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isAReadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInLoadingProgress:Z

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->removeBidResponseWhenLoad()V

    return-void
.end method

.method protected resetMediationStateAndNotifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    const/16 v0, 0x272e

    const-string v1, "Ad is expired"

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInventoryAdsType()Z

    move-result v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInventoryLog(ZLjava/lang/String;Lcom/openmediation/sdk/inspector/logs/InventoryLog;)V

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->isBid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->reportInsEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    :cond_1
    sget-object p2, Lcom/openmediation/sdk/bid/BidLoseReason;->INVENTORY_DID_NOT_MATERIALISE:Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-virtual {p2}, Lcom/openmediation/sdk/bid/BidLoseReason;->getValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/openmediation/sdk/bid/BidUtil;->notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    return-void
.end method

.method protected setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getCs()I

    move-result p1

    iput p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInterval:I

    return-void
.end method

.method protected shouldLoadBlock(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z
    .locals 7

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkScheduleTaskStarted()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkHasExpiredInstance()V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v0, v2, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->getFirstAvailableIns(Ljava/util/List;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_0
    iget-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInLoadingProgress:Z

    const-string v0, " failed cause : "

    const-string v3, "load ad for placement : "

    const/4 v4, 0x4

    const/16 v5, 0xd3

    const-string v6, ""

    if-eqz p1, :cond_3

    const-string p1, "Load Invalid Request, Placement is loading"

    invoke-static {v5, p1, v4}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v3}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-static {v6, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->loadBlockedReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    if-eqz p1, :cond_6

    const-string p1, "Load Invalid Request, Placement is showing"

    invoke-static {v5, p1, v4}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v3}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v6

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-static {v6, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->loadBlockedReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    return v2

    :cond_6
    return v1
.end method

.method protected shouldNotifyAvailableChanged(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "shouldNotifyAvailableChanged : false because current is in showing"

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mLastAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldNotifyAvailableChanged for placement : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldNotifyAvailableChanged for placement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mLastAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected shouldReplenishInventory(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z
    .locals 6

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkHasExpiredInstance()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v0

    sget-object v2, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v3, ""

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v5, 0x6f

    invoke-direct {p0, v5, v2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->reportEvent(ILorg/json/JSONObject;)V

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v2, 0x71

    invoke-direct {p0, v2, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->reportEvent(ILorg/json/JSONObject;)V

    :cond_1
    iget p1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    if-lt v0, p1, :cond_3

    const-string p1, "Inventory is full, cancel this request"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/16 v0, 0xd3

    const/16 v1, 0xa

    invoke-static {v0, p1, v1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->loadBlockedReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return v4

    :cond_3
    return v1
.end method

.method protected showAd(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldShowAd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->setActRef()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad show placementId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->notifyInsBidWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_sceneName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_abt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_abt_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void

    :cond_4
    const-string p1, "No Ad Ready"

    const/4 v0, -0x1

    const/16 v1, 0x155

    invoke-static {v1, p1, v0}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/InsManager;->getInsWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p2}, Lcom/openmediation/sdk/core/InsManager;->reOrderIns(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p2}, Lcom/openmediation/sdk/core/InsManager;->resetInsStateOnClResponse(Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TotalIns is : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->reSizeInventorySize()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "after cl, Inventory size is : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mInventorySize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz p2, :cond_1

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getS2sBidResponse(Lcom/openmediation/sdk/utils/model/Placement;Lorg/json/JSONObject;)Ljava/util/Map;

    :cond_1
    new-instance p1, Lcom/openmediation/sdk/core/AbstractInventoryAds$1;

    invoke-direct {p1, p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds$1;-><init>(Lcom/openmediation/sdk/core/AbstractInventoryAds;)V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
