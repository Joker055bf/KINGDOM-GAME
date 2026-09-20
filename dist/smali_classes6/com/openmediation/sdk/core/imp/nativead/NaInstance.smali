.class public Lcom/openmediation/sdk/core/imp/nativead/NaInstance;
.super Lcom/openmediation/sdk/utils/model/BaseInstance;

# interfaces
.implements Lcom/openmediation/sdk/mediation/NativeAdCallback;
.implements Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;


# instance fields
.field private mInsShowed:Z

.field private mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-void
.end method


# virtual methods
.method destroyNa(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method initNa(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init NativeAd : "

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

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    :cond_0
    return-void
.end method

.method isNaAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadNa(Landroid/app/Activity;Ljava/util/Map;)V
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

    const-string v1, "load NativeAd : "

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

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    :cond_0
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/BaseInsExpiredCallback;->onAdExpired(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onBidFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

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

    const-string v2, "Native"

    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onNativeAdAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdAdClicked(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V

    return-void
.end method

.method public onNativeAdImpression()V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mInsShowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mInsShowed:Z

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdImpression(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V

    :cond_0
    return-void
.end method

.method public onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdInitFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onNativeAdInitSuccess()V
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdInitSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V

    return-void
.end method

.method public onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdLoadFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onNativeAdLoadSuccess(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    new-instance v0, Lcom/openmediation/sdk/nativead/AdInfo;

    invoke-direct {v0}, Lcom/openmediation/sdk/nativead/AdInfo;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/nativead/AdInfo;->setView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->isTemplateRender()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/nativead/AdInfo;->setTemplateRender(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/nativead/AdInfo;->setCallToActionText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/nativead/AdInfo;->setDesc(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getStarRating()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/nativead/AdInfo;->setStarRating(D)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/nativead/AdInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/AdInfo;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/nativead/AdInfo;->setType(I)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    invoke-interface {p1, p0, v0}, Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;->onNativeAdLoadSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/nativead/AdInfo;)V

    return-void
.end method

.method registerView(Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    :cond_0
    return-void
.end method

.method setNaManagerListener(Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;->mListener:Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;

    return-void
.end method
