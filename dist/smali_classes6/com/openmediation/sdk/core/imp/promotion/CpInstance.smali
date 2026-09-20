.class public Lcom/openmediation/sdk/core/imp/promotion/CpInstance;
.super Lcom/openmediation/sdk/utils/model/BaseInstance;

# interfaces
.implements Lcom/openmediation/sdk/mediation/PromotionAdCallback;
.implements Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;


# instance fields
.field private mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-void
.end method


# virtual methods
.method hideCp()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->hidePromotionAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    :cond_0
    return-void
.end method

.method initCp(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init PromotionAd : "

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

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initPromotionAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    :cond_0
    return-void
.end method

.method isCpAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isPromotionAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadCp(Landroid/app/Activity;Ljava/util/Map;)V
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

    const-string v1, "load PromotionAd : "

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

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    :cond_0
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/BaseInsExpiredCallback;->onAdExpired(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onBidFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

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

    const-string v2, "Promotion"

    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->onPromotionAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onPromotionAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdClicked(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method public onPromotionAdHidden()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdHidden(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method public onPromotionAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdInitFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onPromotionAdInitSuccess()V
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdInitSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method public onPromotionAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdLoadFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onPromotionAdLoadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdLoadSuccess : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdLoadSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method public onPromotionAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromotionAdShowFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdShowFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onPromotionAdShowSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdShowSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method public onPromotionAdVisible()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;->onPromotionAdVisible(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V

    return-void
.end method

.method setCpManagerListener(Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;->mListener:Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;

    return-void
.end method

.method showCp(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->getExtraData(Lcom/openmediation/sdk/promotion/PromotionAdRect;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showPromotionAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/PromotionAdCallback;)V

    invoke-static {p0, p3}, Lcom/openmediation/sdk/core/InsManager;->onInsShow(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_0
    return-void
.end method
