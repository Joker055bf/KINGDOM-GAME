.class public Lcom/openmediation/sdk/core/imp/nativead/NaManager;
.super Lcom/openmediation/sdk/core/imp/InventoryCacheManager;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;


# instance fields
.field private height:I

.field private isCallbackToUser:Z

.field private final mInstancesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/openmediation/sdk/nativead/AdInfo;",
            "Lcom/openmediation/sdk/core/imp/nativead/NaInstance;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/InventoryCacheManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->width:I

    iput v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->isCallbackToUser:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    return-void
.end method

.method private getAdInfoByIns(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/nativead/AdInfo;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/nativead/AdInfo;

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private onLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->isCallbackToUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->isCallbackToUser:Z

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->getAdInfoByIns(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/nativead/AdInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NativeAd load failed: AdInfo not found in InstancesMap, PlacementId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    const-string v0, "No Fill, AdInfo not found in InstancesMap"

    const/4 v1, -0x1

    const/16 v2, 0xf5

    invoke-direct {p1, v2, v0, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdLoaded(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->SKIP:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/InventoryLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    const/16 p1, 0x7d2

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInventoryAdsType()Z

    move-result v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInventoryLog(ZLjava/lang/String;Lcom/openmediation/sdk/inspector/logs/InventoryLog;)V

    sget-object p1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->CLOSE:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addNativeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method protected callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->onLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->onLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public destroy(Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->destroyAdEvent(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeAd destroy failed: AdnNativeAd is null, PlacementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected destroyAdEvent(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->destroyNa(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->reportInsDestroyed(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method protected getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->getPlacementType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getPlacementInfo(I)Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    return-object v0
.end method

.method protected initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->setNaManagerListener(Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->initNa(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const-string v1, "current is not an native adUnit"

    const/4 v2, -0x1

    const/16 v3, 0xfb

    invoke-direct {v0, v3, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method

.method public initNativeAd()V
    .locals 0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkScheduleTaskStarted()V

    return-void
.end method

.method protected insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V
    .locals 3
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

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->setNaManagerListener(Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;)V

    iget v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->width:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "width"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->height:I

    if-le v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->loadNa(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->isNaAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadNativeAd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->isCallbackToUser:Z

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method public onAdExpired(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    const/16 v0, 0x116

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->resetMediationStateAndNotifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    return-void
.end method

.method protected onAvailabilityChanged(ZLcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method

.method public onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method public onNativeAdAdClicked(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->getAdInfoByIns(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/nativead/AdInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdClicked(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    return-void
.end method

.method public onNativeAdImpression(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->notifyInsBidWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InsManager;->onInsShow(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->getAdInfoByIns(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/nativead/AdInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdImpression(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    return-void
.end method

.method public onNativeAdInitFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 3

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xf5

    const/4 v2, -0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onNativeAdInitSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onNativeAdLoadFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onNativeAdLoadSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public registerView(Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/AdInfo;->isTemplateRender()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NativeAd registerView failed: AdnNativeAd is null, PlacementId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->mInstancesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    invoke-virtual {p2, p1, v0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->registerView(Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->removeNativeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method public setDisplayParams(II)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->width:I

    iput p2, p0, Lcom/openmediation/sdk/core/imp/nativead/NaManager;->height:I

    return-void
.end method
