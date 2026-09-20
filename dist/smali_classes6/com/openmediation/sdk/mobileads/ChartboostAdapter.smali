.class public Lcom/openmediation/sdk/mobileads/ChartboostAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "ChartboostAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method private initSDK(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V
    .locals 3

    .line 31
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V

    return-void
.end method


# virtual methods
.method public getAdNetworkId()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.1"

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 184
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 186
    new-instance p2, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->initSDK(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Interstitial"

    .line 204
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 102
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    new-instance p2, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;-><init>(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->initSDK(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Rewarded Video"

    .line 122
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 260
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->isInterstitialAdReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 178
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->isRewardedVideoReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 213
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "Interstitial"

    .line 216
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 223
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_2
    return-void

    .line 227
    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->loadInterstitialAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-void
.end method

.method public loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "Rewarded Video"

    .line 134
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 141
    invoke-interface {p4}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_2
    return-void

    .line 145
    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->loadRewardedVideo(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-void
.end method

.method public setAgeRestricted(Landroid/content/Context;Z)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/privacy/model/COPPA;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/privacy/model/COPPA;-><init>(Z)V

    .line 92
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setGDPRConsent(Landroid/content/Context;Z)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setGDPRConsent(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 57
    :try_start_0
    new-instance p2, Lcom/chartboost/sdk/privacy/model/GDPR;

    sget-object v0, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {p2, v0}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance p2, Lcom/chartboost/sdk/privacy/model/GDPR;

    sget-object v0, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {p2, v0}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    .line 61
    :goto_0
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public setUSPrivacyLimit(Landroid/content/Context;Z)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 75
    :try_start_0
    new-instance p2, Lcom/chartboost/sdk/privacy/model/CCPA;

    sget-object v0, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {p2, v0}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, Lcom/chartboost/sdk/privacy/model/CCPA;

    sget-object v0, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {p2, v0}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    .line 79
    :goto_0
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Interstitial"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 236
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 242
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->showInterstitialAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 246
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Not Ready"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 252
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Rewarded Video"

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 154
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 160
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    invoke-static {}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->getInstance()Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 164
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Not Ready"

    invoke-static {v1, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 170
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->mAdapterName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Error, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {v1, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method
