.class public final Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;
.super Lcom/openmediation/sdk/core/imp/InventoryCacheManager;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManagerListener;


# instance fields
.field private mExtIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/InventoryCacheManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->mExtIds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method protected callbackAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdClosed(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoLoadSuccess()V

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoLoadSuccess()V

    return-void
.end method

.method protected callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getPlacementInfo(I)Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    return-object v0
.end method

.method protected initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const-string v1, "current is not an rewardedVideo adUnit"

    const/4 v2, -0x1

    const/16 v3, 0xfb

    invoke-direct {v0, v3, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_0
    check-cast p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;->setRvManagerListener(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;->initRv(Landroid/app/Activity;)V

    return-void
.end method

.method public initRewardedVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->checkScheduleTaskStarted()V

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

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V

    check-cast p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;->loadRv(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method protected insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    check-cast p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;->showRv(Landroid/app/Activity;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;->isRvAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRewardedVideoReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isPlacementAvailable()Z

    move-result v0

    return v0
.end method

.method public loadRewardedVideo()V
    .locals 1

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

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

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

.method public onRewardedVideoAdClicked(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdEnded(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->mExtIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->mExtIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->mExtIds:Ljava/util/Map;

    iget-object v4, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/openmediation/sdk/utils/helper/IcHelper;->icReport(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdRewarded(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x159

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, p2, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onRewardedVideoAdShowSuccess(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdStarted(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onRewardedVideoInitFailed(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
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

.method public onRewardedVideoInitSuccess(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onRewardedVideoLoadSuccess(Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public removeRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->removeRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method public setMediationRewardedVideoListener(Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->setMediationRewardedVideoListener(Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V

    return-void
.end method

.method public setRewardedExtId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvManager;->mExtIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->showAd(Ljava/lang/String;)V

    return-void
.end method
