.class public Lcom/openmediation/sdk/core/imp/splash/SpInstance;
.super Lcom/openmediation/sdk/utils/model/BaseInstance;

# interfaces
.implements Lcom/openmediation/sdk/mediation/SplashAdCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashInstance: "


# instance fields
.field private mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-void
.end method


# virtual methods
.method destroySplashAd()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroySplashAd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method initSplashAd(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->getInitDataMap(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    :cond_0
    return-void
.end method

.method isSplashAdAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isSplashAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadSplashAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    const-string v1, " key : "

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Load SplashAd Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Load SplashAd : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashInstance: "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadSplashAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    return-void
.end method

.method public onBidFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method public onSplashAdAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdAdClicked(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V

    return-void
.end method

.method public onSplashAdDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdDismissed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V

    return-void
.end method

.method public onSplashAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SplashInstance: Splash Ad Init Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdInitFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onSplashAdInitSuccess()V
    .locals 2

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdInitSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "SplashInstance: Splash Ad Init Success"

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplashInstance: Splash Ad Load Failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdLoadFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onSplashAdLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {p1, p0}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdLoadSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V

    return-void
.end method

.method public onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplashInstance: SplashAd ShowFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdShowFailed(Lcom/openmediation/sdk/core/imp/splash/SpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onSplashAdShowSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdShowSuccess(Lcom/openmediation/sdk/core/imp/splash/SpInstance;)V

    return-void
.end method

.method public onSplashAdTick(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplashInstance: Splash Ad Show Tick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;->onSplashAdTick(Lcom/openmediation/sdk/core/imp/splash/SpInstance;J)V

    return-void
.end method

.method setSplashManagerListener(Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;->mListener:Lcom/openmediation/sdk/core/imp/splash/SpManagerListener;

    return-void
.end method

.method showSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsShow(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_0
    return-void
.end method
