.class public final Lcom/openmediation/sdk/core/imp/interstitialad/IsManager;
.super Lcom/openmediation/sdk/core/imp/InventoryCacheManager;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/InventoryCacheManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addInterstitialAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addInterstitialListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method protected callbackAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdClosed(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdAvailabilityChanged(Z)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadSuccess()V

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdAvailabilityChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadFailedOnManual(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadSuccessOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadSuccess()V

    return-void
.end method

.method protected callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

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

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const-string v1, "current is not an interstitial adUnit"

    const/4 v2, -0x1

    const/16 v3, 0xfb

    invoke-direct {v0, v3, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_0
    check-cast p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->setIsManagerListener(Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->initIs(Landroid/app/Activity;)V

    return-void
.end method

.method public initInterstitialAd()V
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

    check-cast p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->loadIs(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method protected insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    check-cast p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->showIs(Landroid/app/Activity;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->isIsAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInterstitialAdReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isPlacementAvailable()Z

    move-result v0

    return v0
.end method

.method public loadInterstitialAd()V
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

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdAvailabilityChanged(Z)V

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

.method public onInterstitialAdClicked(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onInterstitialAdInitFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
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

.method public onInterstitialAdInitSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onInterstitialAdLoadSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isInShowingProgress:Z

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show Failed In Adapter, mediationID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x159

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, p2, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onInterstitialAdShowSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public removeInterstitialAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->removeInterstitialListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public setInterstitialAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addInterstitialListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public setMediationInterstitialAdListener(Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->setMediationInterstitialListener(Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V

    return-void
.end method

.method public showInterstitialAd(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->showAd(Ljava/lang/String;)V

    return-void
.end method
