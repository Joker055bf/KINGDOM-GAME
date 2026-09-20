.class public Lcom/openmediation/sdk/core/imp/banner/BnInstance;
.super Lcom/openmediation/sdk/utils/model/BaseInstance;

# interfaces
.implements Lcom/openmediation/sdk/mediation/BannerAdCallback;


# instance fields
.field private mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-void
.end method


# virtual methods
.method destroyBn()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method initBn(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->getInitDataMap(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    :cond_0
    return-void
.end method

.method isBnAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isBannerAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadBn(Landroid/app/Activity;Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load BannerAd : "

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

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    :cond_0
    return-void
.end method

.method public onBannerAdAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;->onBannerAdAdClicked(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V

    return-void
.end method

.method public onBannerAdImpression()V
    .locals 0

    return-void
.end method

.method public onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;->onBannerAdInitFailed(Lcom/openmediation/sdk/core/imp/banner/BnInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onBannerAdInitSuccess()V
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0}, Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;->onBannerAdInitSuccess(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;->onBannerAdLoadFailed(Lcom/openmediation/sdk/core/imp/banner/BnInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onBannerAdLoadSuccess(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {p1, p0}, Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;->onBannerAdLoadSuccess(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V

    return-void
.end method

.method public onBidFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    invoke-interface {v0, p0, p1}, Lcom/openmediation/sdk/core/BaseInsBidCallback;->onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method setBnManagerListener(Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->mListener:Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;

    return-void
.end method
