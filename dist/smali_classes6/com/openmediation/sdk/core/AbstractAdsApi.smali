.class public abstract Lcom/openmediation/sdk/core/AbstractAdsApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/InitCallback;
.implements Lcom/openmediation/sdk/bid/BidResponseCallback;
.implements Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;


# instance fields
.field protected isDestroyed:Z

.field protected isManualTriggered:Z

.field private isWfFailed:Z

.field protected mActRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdSize:Lcom/openmediation/sdk/banner/AdSize;

.field protected mInsLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            "Lcom/openmediation/sdk/inspector/logs/InstanceLog;",
            ">;"
        }
    .end annotation
.end field

.field protected mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

.field protected mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field protected mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

.field protected mPlacementId:Ljava/lang/String;

.field protected mReadWfFromLocal:Z

.field protected mReqId:Ljava/lang/String;

.field protected mRuleId:I

.field private mStartLoadTime:J

.field protected mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mWFJsonInfo:Lorg/json/JSONObject;

.field protected mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

.field private final wfLoadSuccessReported:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isWfFailed:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->wfLoadSuccessReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    return-void
.end method

.method private checkLoadAvailable(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Lcom/openmediation/sdk/utils/error/Error;
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xd3

    if-eqz v0, :cond_0

    const-string p1, "Placement id is empty"

    const/4 v0, 0x4

    invoke-static {v1, p1, v0}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    const-string p1, "This ad object has been destroyed , please re-init it before load ad"

    invoke-static {v1, p1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez v0, :cond_2

    const-string p1, "Config is not contain this placement"

    invoke-static {v1, p1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result v3

    if-eq v0, v3, :cond_3

    const-string p1, "Placement type match error"

    invoke-static {v1, p1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockPlacement(Lcom/openmediation/sdk/utils/model/Placement;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->isPlacementCapped(Lcom/openmediation/sdk/utils/model/Placement;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    if-eq p1, v0, :cond_5

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/OmManager;->getAutoCache()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Ad load limit, user \"OmAds.setAutoCache(true)\" to unlock the limit"

    invoke-static {v1, p1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    const-string p1, "Load Capped, "

    invoke-static {v1, p1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p1

    return-object p1
.end method

.method private onClRequestFailed(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request cl failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onAllLoadFailed()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method


# virtual methods
.method protected appendLastBidResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method

.method protected checkActRef()Z
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->isActivityAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 6

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mStartLoadTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mStartLoadTime:J

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mStartLoadTime:J

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement load duration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x272f

    invoke-static {v2, v1, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isWfFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setDetail(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    const/16 v0, 0xfa1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/inspector/InspectorManager;->addWaterfallLog(Ljava/lang/String;Lcom/openmediation/sdk/inspector/logs/WaterfallLog;)V

    :cond_3
    return-void
.end method

.method protected abstract getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;
.end method

.method protected getPlacementType()I
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected hasAvailableInventory()Z
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/openmediation/sdk/core/InsManager;->instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1
.end method

.method protected initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->setActRef()V

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsInitStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method protected insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    if-nez p2, :cond_0

    new-instance p2, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    invoke-direct {p2, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->addInsLog(Lcom/openmediation/sdk/inspector/logs/InstanceLog;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->removeFromUnloadInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected inventoryAdsReportAReady()V
    .locals 0

    return-void
.end method

.method protected abstract isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
.end method

.method public abstract isInventoryAdsType()Z
.end method

.method protected abstract isReload()Z
.end method

.method public loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mStartLoadTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAds : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInitRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/OmManager;->pendingInit(Lcom/openmediation/sdk/InitCallback;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 v0, 0x2710

    const-string v1, "This load occurs while init pending"

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->isInit()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/openmediation/sdk/core/InitImp;->reInitSDK(Lcom/openmediation/sdk/InitCallback;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 v0, 0x2711

    const-string v1, "This load occurs while not init or init failed"

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->shouldLoadBlock(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->shouldReplenishInventory(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->checkLoadAvailable(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->loadBlockedReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->startGetInsOrder(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method protected loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 7

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->setActRef()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacementType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isReload()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsCapped(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->needPayload()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x113

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InsManager;->reportInsEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_3

    :cond_3
    const/16 v0, 0xcd

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InsManager;->reportInsEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    :goto_1
    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isReload()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIII)V

    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->onInsLoadStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getLoadExtrasMap(Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V

    return-void
.end method

.method protected notifyInsBidWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-static {p1}, Lcom/openmediation/sdk/bid/BidUtil;->notifyWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method protected notifyLoadFailedInsBidLose(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/bid/BidLoseReason;->INTERNAL:Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-virtual {v0}, Lcom/openmediation/sdk/bid/BidLoseReason;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/openmediation/sdk/bid/BidUtil;->notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    return-void
.end method

.method protected abstract notifyUnLoadInsBidLose()V
.end method

.method protected onAllLoadFailed()V
    .locals 0

    return-void
.end method

.method public onBidC2SComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBidC2SComplete c2sInstances : "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWFJsonInfo:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->startLoadAds(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBidC2SComplete, Placement:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load Server Error,  Load ad failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe7

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start load ad error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2725

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBidS2SComplete(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->appendLastBidResult()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mTotalIns:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3}, Lcom/openmediation/sdk/core/InsManager;->getInstanceLoadStatuses(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    move-object v3, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->wfRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 v0, 0x2719

    const-string v1, "S2S bid is completed"

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK re init error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2724

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized onInsC2SBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " C2S Bid Failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsC2SBidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->onInsBidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " C2S Bid Success: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onInsCapped(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V
    .locals 3

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load Capped, Ins Capped, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method protected onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instance clicked, instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsClick(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result p2

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p2}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v4

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result p2

    move v5, p2

    :goto_2
    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez p2, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result p2

    move v6, p2

    :goto_3
    const/4 v7, 0x7

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIIII)V

    return-void
.end method

.method protected onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instance closed, instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsClosed(ZLcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected declared-synchronized onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    const-string v0, "Instance init failed, instance: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x138c

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x138a

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsInitStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->addInsLog(Lcom/openmediation/sdk/inspector/logs/InstanceLog;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->removeFromUnloadInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V
    .locals 2

    const-string v0, "Instance load failed, instance: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->notifyLoadFailedInsBidLose(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/core/InsManager;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    iget-object p3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x138c

    invoke-virtual {p3, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x138a

    invoke-virtual {p3, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V
    .locals 10

    const-string v0, "Instance load success, instance: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isWfFailed:Z

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v4

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIII)V

    :cond_0
    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->wfLoadSuccessReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->wfLoadSuccessReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getReqId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p2}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v5

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v6

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v7

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILjava/lang/String;IIIII)V

    :cond_1
    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/openmediation/sdk/inspector/logs/InstanceLog;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x138b

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1389

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setEventTag(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->setRevenue(D)V

    :cond_3
    new-instance p2, Lcom/openmediation/sdk/inspector/logs/InventoryLog;

    invoke-direct {p2}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;-><init>()V

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    const/16 p1, 0x7d1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInventoryLog(ZLjava/lang/String;Lcom/openmediation/sdk/inspector/logs/InventoryLog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instance show failed, instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/core/InsManager;->onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instance show success, instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result v1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->getValue()I

    move-result v4

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez v1, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v1

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v0

    :goto_3
    move v6, v0

    const/4 v7, 0x6

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIIII)V

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected final onInternalRequestSuccess(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/openmediation/sdk/utils/error/Error;

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onClRequestFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waterfall success but response code not 0, code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x271c

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getMediationRule(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getId()I

    move-result v1

    iput v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mRuleId:I

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->setMediationRuleId(I)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->setMediationRuleName(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {p1, v1, v2}, Lcom/openmediation/sdk/inspector/InspectorManager;->notifyWaterfallChanged(Ljava/lang/String;Lcom/openmediation/sdk/inspector/logs/WaterfallLog;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    const-string v1, "abt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/Placement;->setWfAbt(I)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    const-string v1, "abtId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/Placement;->setWfAbtId(I)V

    iget-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReadWfFromLocal:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->inventoryAdsReportAReady()V

    :cond_2
    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWFJsonInfo:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/core/InsManager;->getC2SInstances(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v2

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v7

    iget-object v8, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/openmediation/sdk/bid/BidManager;->c2sBid(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/bid/BidResponseCallback;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->startLoadAds(Lorg/json/JSONObject;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method protected onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load Server Error, WF request failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe7

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onClRequestFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 v1, 0x2715

    const-string v2, "Waterfall response failed"

    invoke-static {v0, v1, v2, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    .locals 7

    const-string v0, "Waterfall response error: "

    const-string v1, "Load Server Error, "

    const-string v2, "Http code "

    const-string v3, "Load Server Error, failed when parse wf response: "

    const/16 v4, 0xe7

    :try_start_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->body()Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/openmediation/sdk/utils/request/network/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/core/OmCacheManager;->getInstance()Lcom/openmediation/sdk/core/OmCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v5}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v5

    invoke-virtual {v1, v2, v5, v0}, Lcom/openmediation/sdk/core/OmCacheManager;->saveWaterfallData(Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReadWfFromLocal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInternalRequestSuccess(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const-string v2, "Waterfall response data"

    const/16 v5, 0x2713

    invoke-static {v1, v5, v2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const-string v2, "response is null"

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request cl http code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v6, "null"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", placement:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x271d

    invoke-static {v1, v2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v4, v1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", request cl success, but failed when parse response, Placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->finishLoad(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const-string v2, "Waterfall response exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2714

    invoke-static {v1, v3, v2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_4
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected onResume(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method protected abstract resetBeforeGetInsOrder()V
.end method

.method protected s2sBid()V
    .locals 6

    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget-object v4, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/openmediation/sdk/bid/BidManager;->s2sBid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/bid/BidResponseCallback;)V

    return-void
.end method

.method protected setActRef()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->isActivityAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method protected setCurrentPlacement(Lcom/openmediation/sdk/utils/model/Placement;)V
    .locals 1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->setPlacementId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected shouldLoadBlock(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldReplenishInventory(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected startGetInsOrder(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V
    .locals 3

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->resetBeforeGetInsOrder()V

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->createReqId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mLoadType:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    new-instance p1, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-direct {p1}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mInsLogs:Ljava/util/Map;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :goto_1
    iput-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isWfFailed:Z

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->wfLoadSuccessReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->getInstanceList(Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->s2sBid()V

    return-void
.end method

.method protected startLoadAds(Lorg/json/JSONObject;Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReqId:Ljava/lang/String;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0, p1, v1}, Lcom/openmediation/sdk/core/InsManager;->getListInsResult(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " startLoadAd wfInstances : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/openmediation/sdk/core/InsManager;->sort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after instances sort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->isInventoryAdsType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getBs()I

    move-result v0

    invoke-static {p2, v0}, Lcom/openmediation/sdk/core/InsManager;->splitInsByBs(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mWfLog:Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->setUnloadInstance(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V

    return-void

    :cond_3
    :goto_0
    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    const-string p2, "Load No Available Ad, Instance is empty"

    const/4 v0, 0x1

    const/16 v1, 0xf1

    invoke-direct {p1, v1, p2, v0}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onClRequestFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/16 p2, 0x271a

    const-string v0, "Total instance list is null"

    invoke-static {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected abstract startLoadAdsImpl(Lorg/json/JSONObject;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation
.end method
