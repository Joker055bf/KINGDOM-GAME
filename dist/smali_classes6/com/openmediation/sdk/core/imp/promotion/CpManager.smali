.class public final Lcom/openmediation/sdk/core/imp/promotion/CpManager;
.super Lcom/openmediation/sdk/core/AbstractInventoryAds;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;


# instance fields
.field private mCpActReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Lcom/openmediation/sdk/promotion/PromotionAdRect;

.field private mShowingInstance:Lcom/openmediation/sdk/core/imp/promotion/CpInstance;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;-><init>()V

    return-void
.end method


# virtual methods
.method public addPromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->addPromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    return-void
.end method

.method protected callbackAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdHidden(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method protected callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackAvailableOnManual(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdAvailabilityChanged(Z)V

    return-void
.end method

.method protected callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->hasAvailableInventory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->shouldNotifyAvailableChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdAvailabilityChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->callbackShowError(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

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

.method public hidePromotionAd()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mShowingInstance:Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->hideCp()V

    goto :goto_0

    :cond_0
    const-string v0, "PromotionAd is not showing"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const-string v1, "current is not an promotion adUnit"

    const/4 v2, -0x1

    const/16 v3, 0xfb

    invoke-direct {v0, v3, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_0
    check-cast p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->setCpManagerListener(Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->initCp(Landroid/app/Activity;)V

    return-void
.end method

.method public initPromotionAd()V
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

    check-cast p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->loadCp(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method protected insShow(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mShowingInstance:Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    iget-object p1, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mCpActReference:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :goto_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mShowingInstance:Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mRect:Lcom/openmediation/sdk/promotion/PromotionAdRect;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, p1, v1, v2}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->showCp(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_1
    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->isCpAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPromotionAdReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->isPlacementAvailable()Z

    move-result v0

    return v0
.end method

.method public loadPromotionAd()V
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

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdAvailabilityChanged(Z)V

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

.method public onPromotionAdClicked(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onPromotionAdHidden(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onPromotionAdInitFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
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

.method public onPromotionAdInitSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onPromotionAdLoadFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpManager onPromotionAdLoadFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onPromotionAdLoadSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public onPromotionAdShowFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
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

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onPromotionAdShowSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractInventoryAds;->mScene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onPromotionAdVisible(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
    .locals 0

    return-void
.end method

.method public removePromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->removePromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    return-void
.end method

.method public showPromotionAd(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "PromotionAd Show Failed: activity is destroyed"

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getWidth()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {p2}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string v0, "PromotionAd Show Failed: width or height must be positive"

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    const/16 p2, 0x137

    const/4 v1, -0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-static {v0, p3}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_4
    iput-object p2, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mRect:Lcom/openmediation/sdk/promotion/PromotionAdRect;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/openmediation/sdk/core/imp/promotion/CpManager;->mCpActReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p3}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->showAd(Ljava/lang/String;)V

    return-void
.end method
