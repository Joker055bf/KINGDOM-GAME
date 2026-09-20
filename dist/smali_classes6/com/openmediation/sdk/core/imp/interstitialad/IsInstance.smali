.class public Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;
.super Lcom/openmediation/sdk/utils/model/BaseInstance;

# interfaces
.implements Lcom/openmediation/sdk/mediation/InterstitialAdCallback;
.implements Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;


# instance fields
.field private mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initIs(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init InterstitialAd : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {p0, p0}, Lcom/openmediation/sdk/core/InsManager;->startInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->getInitDataMap(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    :cond_0
    return-void
.end method

.method isIsAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadIs(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load InterstitialAd : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {p0, p0}, Lcom/openmediation/sdk/core/InsManager;->startInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    :cond_0
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/BaseInsExpiredCallback;->onAdExpired(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onBidFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdClicked(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdClosed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V

    return-void
.end method

.method public onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial Ad Init Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onInterstitialAdInitSuccess()V
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdInitSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onInterstitialAdLoadFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onInterstitialAdLoadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdLoadSuccess : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdLoadSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdShowFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onInterstitialAdShowSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;->onInterstitialAdShowSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V

    return-void
.end method

.method public onLoadTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Timeout"

    const-string v2, "Interstitial"

    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method setIsManagerListener(Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;->mListener:Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;

    return-void
.end method

.method showIs(Landroid/app/Activity;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-static {p0, p2}, Lcom/openmediation/sdk/core/InsManager;->onInsShow(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_0
    return-void
.end method
