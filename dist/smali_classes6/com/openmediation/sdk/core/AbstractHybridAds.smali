.class public abstract Lcom/openmediation/sdk/core/AbstractHybridAds;
.super Lcom/openmediation/sdk/core/AbstractAdsApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;
    }
.end annotation


# instance fields
.field isFo:Z

.field mBs:I

.field protected mCallbackTs:J

.field private mCanCallbackIndex:I

.field protected mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

.field private mCurrentLoadGroupIndex:I

.field private final mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

.field protected mLoadTs:J

.field private mLoadedInsIndex:I

.field mPt:I

.field private mTimeouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadedInsIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentLoadGroupIndex:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v0, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/core/AbstractHybridAds;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->startNextInstance(I)V

    return-void
.end method

.method private declared-synchronized checkReadyInstance()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/openmediation/sdk/core/AbstractHybridAds;->placementReadyCallback(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReadyInstancesOnUiThread error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized placementReadyCallback(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->hasCallbackToUser()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/4 p1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->cancelTimeout(ZI)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->aReadyReport()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->notifyUnLoadInsBidLose()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackAdReady()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startNextInstance(I)V
    .locals 7

    const-string v0, "HybridAds instance index out of bounds: bs = "

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->checkReadyInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ad is prepared for : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " callbackIndex is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 v0, 0x271e

    const-string v1, "HybridAds has ready instance"

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    if-lez v2, :cond_7

    if-gt v1, p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->hasCallbackToUser()Z

    move-result v3

    if-nez v3, :cond_6

    if-le v1, p1, :cond_6

    if-lez v2, :cond_6

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/utils/model/BaseInstance;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadedInsIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadedInsIndex:I

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getGrpIndex()I

    move-result v4

    iput v4, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentLoadGroupIndex:I

    iget-object v4, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v4

    invoke-static {v4}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Create mediation adapter failed"

    invoke-virtual {p0, v3, v4}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsError(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setAdapter(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_1
    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-virtual {p0, v3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsError(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load ins : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " error "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HybridAds instance load exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2720

    invoke-static {v3, v5, v4}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "AbstractHybridAds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNextInstance, instance index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupLoadCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->hasCallbackToUser()Z

    move-result v1

    if-nez v1, :cond_8

    if-lez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->startTimeout(I)V

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v2, Lcom/openmediation/sdk/utils/error/Error;

    const-string v3, "No Fill, No available instance"

    const/4 v4, -0x1

    const/16 v5, 0xf1

    invoke-direct {v2, v5, v3, v4}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x271f

    invoke-static {v2, v0, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v0, "startNextInstance error"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HybridAds startNextInstance error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2721

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private startTimeout(I)V
    .locals 5

    new-instance v0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;-><init>(Lcom/openmediation/sdk/core/AbstractHybridAds;I)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentLoadGroupIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mPt:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected aReadyReport()V
    .locals 9

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    :goto_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v0

    move v4, v0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v5

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILjava/lang/String;IIIII)V

    return-void
.end method

.method callbackAdReady()V
    .locals 4

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad load success placementId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadTs:J

    iget-wide v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdReadyCallback()V

    return-void
.end method

.method callbackAdShowFailedOnUiThread(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdShowFailedCallback(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method callbackAdShowedOnUiThread()V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdShowedCallback()V

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadTs:J

    iget-wide v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    :cond_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdErrorCallback(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected cancelTimeout(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method protected destroy()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->destroyAdEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mPt:I

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->isFo:Z

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/16 v3, 0x67

    invoke-virtual {v0, v3, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    return-void
.end method

.method protected destroyAdEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    const/16 v0, 0x2718

    const-string v1, "Instance destroy"

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    return-void
.end method

.method hasCallbackToUser()Z
    .locals 4

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadTs:J

    iget-wide v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInventoryAdsType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isReload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected notifyUnLoadInsBidLose()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadedInsIndex:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    sget-object v3, Lcom/openmediation/sdk/bid/BidLoseReason;->LOST_TO_HIGHER_BIDDER:Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-virtual {v3}, Lcom/openmediation/sdk/bid/BidLoseReason;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/openmediation/sdk/bid/BidUtil;->notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected abstract onAdErrorCallback(Lcom/openmediation/sdk/utils/error/Error;)V
.end method

.method protected abstract onAdReadyCallback()V
.end method

.method protected onAdShowFailedCallback(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method

.method protected onAdShowedCallback()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->notifyInsBidWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onInsError(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacementType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->destroyAdEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "load ins : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result p3

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne p3, v2, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->hasCallbackToUser()Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Load No Available Ad, All ins load failed, PlacementId: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xf1

    const/4 v0, -0x1

    invoke-direct {p1, p3, p2, v0}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->cancelTimeout(ZI)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 p2, 0x2723

    const-string p3, "HybridAds group ins load failed"

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getGrpIndex()I

    move-result p3

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getGrpIndex()I

    move-result v6

    if-ne v6, p3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-array v3, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v5, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {p0, v4, p3}, Lcom/openmediation/sdk/core/AbstractHybridAds;->cancelTimeout(ZI)V

    iget p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentLoadGroupIndex:I

    if-ne p3, p1, :cond_5

    add-int/2addr p3, v1

    iget p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    mul-int/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/openmediation/sdk/core/AbstractHybridAds;->startNextInstance(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->isFirst()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "first instance failed, add callbackIndex : "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getIndex()I

    move-result p1

    iget p2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->checkReadyInstance()Z

    :cond_7
    return-void
.end method

.method protected declared-synchronized onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    iget-boolean p2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->isFo:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getIndex()I

    move-result p2

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->checkReadyInstance()Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->placementReadyCallback(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/openmediation/sdk/utils/error/Error;

    const/16 p3, 0x159

    const/4 v0, -0x1

    invoke-direct {p2, p3, p1, v0}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackAdShowFailedOnUiThread(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackAdShowedOnUiThread()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/AdRateUtil;->onInstancesShowed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onViewAttachToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected onViewDetachFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected resetBeforeGetInsOrder()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadTs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCanCallbackIndex:I

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadedInsIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentLoadGroupIndex:I

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mTimeouts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getBs()I

    move-result v1

    iput v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getPt()I

    move-result v1

    iput v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mPt:I

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getFo()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->isFo:Z

    iget v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mBs:I

    :cond_1
    return-void
.end method

.method protected startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 1
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

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p2}, Lcom/openmediation/sdk/core/InsManager;->resetInsStateOnClResponse(Ljava/util/List;)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getS2sBidResponse(Lcom/openmediation/sdk/utils/model/Placement;Lorg/json/JSONObject;)Ljava/util/Map;

    :cond_0
    new-instance p1, Lcom/openmediation/sdk/core/AbstractHybridAds$1;

    invoke-direct {p1, p0}, Lcom/openmediation/sdk/core/AbstractHybridAds$1;-><init>(Lcom/openmediation/sdk/core/AbstractHybridAds;)V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
