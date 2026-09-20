.class public Lcom/openmediation/sdk/core/imp/splash/SpManager;
.super Lcom/openmediation/sdk/core/imp/HybridCacheManager;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;


# instance fields
.field private mHeight:I

.field private mLoadTimeout:J

.field private mWidth:I

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/HybridCacheManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected destroyAdEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->destroySplashAd()V

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->reportInsDestroyed(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_0
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
    .locals 1

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->setSplashManagerListener(Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->initSplashAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V
    .locals 2
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

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->setSplashManagerListener(Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mLoadTimeout:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Width"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Height"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->viewGroup:Landroid/view/ViewGroup;

    const-string v1, "ViewGroup"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->loadSplashAd(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->isSplashAdAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v0

    return v0
.end method

.method public loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method public loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->viewGroup:Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method protected onAdErrorCallback(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected onAdReadyCallback()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdLoad(Ljava/lang/String;)V

    return-void
.end method

.method protected onAdShowFailedCallback(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdShowFailedCallback(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected onAdShowedCallback()V
    .locals 2

    invoke-super {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onAdShowedCallback()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdShowed(Ljava/lang/String;)V

    return-void
.end method

.method public onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method public onSplashAdAdClicked(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdDismissed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClosed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdInitFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onSplashAdInitSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onSplashAdLoadFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onSplashAdLoadSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public onSplashAdShowFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onSplashAdShowSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-void
.end method

.method public onSplashAdTick(Lcom/openmediation/sdk/core/imp/splash/SpInstance;J)V
    .locals 1

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdTick(Ljava/lang/String;J)V

    return-void
.end method

.method public setAdListener(Lcom/openmediation/sdk/splash/SplashAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->setSplashAdListener(Lcom/openmediation/sdk/splash/SplashAdListener;)V

    return-void
.end method

.method setLoadTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mLoadTimeout:J

    return-void
.end method

.method setSize(II)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mWidth:I

    iput p2, p0, Lcom/openmediation/sdk/core/imp/splash/SpManager;->mHeight:I

    return-void
.end method

.method public showSplashAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->showSplashAd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->showSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
