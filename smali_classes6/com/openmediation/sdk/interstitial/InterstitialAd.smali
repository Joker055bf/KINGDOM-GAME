.class public Lcom/openmediation/sdk/interstitial/InterstitialAd;
.super Lcom/openmediation/sdk/core/BaseOmAds;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/BaseOmAds;-><init>()V

    return-void
.end method

.method public static addAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/core/OmManager;->addInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public static getSceneInfo(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/openmediation/sdk/core/BaseOmAds;->getSceneInfo(ILjava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p0

    return-object p0
.end method

.method public static isReady()Z
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/OmManager;->isInterstitialAdReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSceneCapped(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/openmediation/sdk/core/BaseOmAds;->isSceneCapped(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadAd()V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/OmManager;->loadInterstitialAd(Ljava/lang/String;)V

    return-void
.end method

.method public static removeAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/core/OmManager;->removeInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public static setAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/core/OmManager;->setInterstitialAdListener(Ljava/lang/String;Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    return-void
.end method

.method public static showAd()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/openmediation/sdk/interstitial/InterstitialAd;->showAd(Ljava/lang/String;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/core/OmManager;->showInterstitialAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
