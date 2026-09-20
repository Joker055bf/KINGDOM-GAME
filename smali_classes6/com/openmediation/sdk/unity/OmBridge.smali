.class public Lcom/openmediation/sdk/unity/OmBridge;
.super Ljava/lang/Object;
.source "OmBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/unity/OmBridge$InitListener;,
        Lcom/openmediation/sdk/unity/OmBridge$ImpressionDataCallback;,
        Lcom/openmediation/sdk/unity/OmBridge$CpListener;,
        Lcom/openmediation/sdk/unity/OmBridge$IsListener;,
        Lcom/openmediation/sdk/unity/OmBridge$RvListener;
    }
.end annotation


# static fields
.field private static final EVENT_CP_AVAILABLE_CHANGE:Ljava/lang/String; = "onPromotionAdAvailabilityChanged"

.field private static final EVENT_CP_CLICKED:Ljava/lang/String; = "onPromotionAdClicked"

.field private static final EVENT_CP_HIDDEN:Ljava/lang/String; = "onPromotionAdHidden"

.field private static final EVENT_CP_SHOWED:Ljava/lang/String; = "onPromotionAdShowed"

.field private static final EVENT_CP_SHOWED_FAILED:Ljava/lang/String; = "onPromotionAdShowFailed"

.field private static final EVENT_IMPRESSION_DATA:Ljava/lang/String; = "onImpressionData"

.field private static final EVENT_IMPRESSION_DATA_ERROR:Ljava/lang/String; = "onImpressionDataError"

.field private static final EVENT_IS_AVAILABLE_CHANGE:Ljava/lang/String; = "onInterstitialAvailabilityChanged"

.field private static final EVENT_IS_CLICKED:Ljava/lang/String; = "onInterstitialClicked"

.field private static final EVENT_IS_CLOSED:Ljava/lang/String; = "onInterstitialClosed"

.field private static final EVENT_IS_SHOWED:Ljava/lang/String; = "onInterstitialShowed"

.field private static final EVENT_IS_SHOWED_FAILED:Ljava/lang/String; = "onInterstitialShowFailed"

.field private static final EVENT_RV_AVAILABLE_CHANGE:Ljava/lang/String; = "onRewardedVideoAvailabilityChanged"

.field private static final EVENT_RV_CLICKED:Ljava/lang/String; = "onRewardedVideoClicked"

.field private static final EVENT_RV_CLOSED:Ljava/lang/String; = "onRewardedVideoClosed"

.field private static final EVENT_RV_ENDED:Ljava/lang/String; = "onRewardedVideoEnded"

.field private static final EVENT_RV_REWARDED:Ljava/lang/String; = "onRewardedVideoRewarded"

.field private static final EVENT_RV_SHOWED:Ljava/lang/String; = "onRewardedVideoShowed"

.field private static final EVENT_RV_SHOWED_FAILED:Ljava/lang/String; = "onRewardedVideoShowFailed"

.field private static final EVENT_RV_STARTED:Ljava/lang/String; = "onRewardedVideoStarted"

.field private static final EVENT_SDK_INIT_FAILED:Ljava/lang/String; = "onSdkInitFailed"

.field private static final EVENT_SDK_INIT_SUCCESS:Ljava/lang/String; = "onSdkInitSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Debug(Z)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setLogEnable(Z)V

    return-void
.end method

.method public static destroyBanner(Ljava/lang/String;)V
    .locals 1

    .line 185
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->destroyBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static displayBanner(Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->displayBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 284
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getCustomTags()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {}, Lcom/openmediation/sdk/OmAds;->getCustomTags()Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/openmediation/sdk/utils/JsonUtil;->convert(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGDPRConsent()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/openmediation/sdk/OmAds;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 280
    invoke-static {}, Lcom/openmediation/sdk/OmAds;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideBanner(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->hideBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static hidePromotionAd()V
    .locals 0

    .line 221
    invoke-static {}, Lcom/openmediation/sdk/promotion/PromotionAd;->hideAd()V

    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/InitConfiguration$Builder;

    invoke-direct {v1}, Lcom/openmediation/sdk/InitConfiguration$Builder;-><init>()V

    .line 71
    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->build()Lcom/openmediation/sdk/InitConfiguration;

    move-result-object p0

    new-instance v1, Lcom/openmediation/sdk/unity/OmBridge$InitListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/openmediation/sdk/unity/OmBridge$InitListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    .line 70
    invoke-static {v0, p0, v1}, Lcom/openmediation/sdk/OmAds;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/InitConfiguration$Builder;

    invoke-direct {v1}, Lcom/openmediation/sdk/InitConfiguration$Builder;-><init>()V

    .line 77
    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->initHost(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->build()Lcom/openmediation/sdk/InitConfiguration;

    move-result-object p0

    new-instance p1, Lcom/openmediation/sdk/unity/OmBridge$InitListener;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/openmediation/sdk/unity/OmBridge$InitListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    .line 76
    invoke-static {v0, p0, p1}, Lcom/openmediation/sdk/OmAds;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/InitConfiguration$Builder;

    invoke-direct {v1}, Lcom/openmediation/sdk/InitConfiguration$Builder;-><init>()V

    .line 84
    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->initHost(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/InitConfiguration$Builder;->channel(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->build()Lcom/openmediation/sdk/InitConfiguration;

    move-result-object p0

    new-instance p1, Lcom/openmediation/sdk/unity/OmBridge$InitListener;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/openmediation/sdk/unity/OmBridge$InitListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    .line 83
    invoke-static {v0, p0, p1}, Lcom/openmediation/sdk/OmAds;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method public static isInit()Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/openmediation/sdk/OmAds;->isInit()Z

    move-result v0

    return v0
.end method

.method public static isInterstitialReady()Z
    .locals 1

    .line 177
    invoke-static {}, Lcom/openmediation/sdk/interstitial/InterstitialAd;->isReady()Z

    move-result v0

    return v0
.end method

.method public static isPromotionAdReady()Z
    .locals 1

    .line 197
    invoke-static {}, Lcom/openmediation/sdk/promotion/PromotionAd;->isReady()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoReady()Z
    .locals 1

    .line 165
    invoke-static {}, Lcom/openmediation/sdk/video/RewardedVideoAd;->isReady()Z

    move-result v0

    return v0
.end method

.method public static isSplashAdReady(Ljava/lang/String;)Z
    .locals 1

    .line 229
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->isSplashAdReady(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadBanner(Ljava/lang/String;II)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/openmediation/sdk/unity/BannerSingleTon;->loadBanner(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public static loadSplashAd(Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->loadSplashAd(Ljava/lang/String;)V

    return-void
.end method

.method public static removeCustomTag(Ljava/lang/String;)V
    .locals 0

    .line 254
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->removeCustomTag(Ljava/lang/String;)V

    return-void
.end method

.method public static sendAFConversionData(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->sendAFConversionData(Ljava/lang/Object;)V

    return-void
.end method

.method public static sendAFDeepLinkData(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->sendAFDeepLinkData(Ljava/lang/Object;)V

    return-void
.end method

.method static sendUnityEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 288
    invoke-static {p0, v0}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 293
    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "OmEvents"

    .line 300
    invoke-static {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAgeRestricted(Z)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setAgeRestricted(Z)V

    return-void
.end method

.method public static setCustomTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 240
    invoke-static {p0, p1}, Lcom/openmediation/sdk/OmAds;->setCustomTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomTag(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-static {p0, p1}, Lcom/openmediation/sdk/OmAds;->setCustomTag(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static setGDPRConsent(Z)V
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setGDPRConsent(Z)V

    return-void
.end method

.method public static setIAP(FLjava/lang/String;)V
    .locals 0

    .line 115
    invoke-static {p0, p1}, Lcom/openmediation/sdk/OmAds;->setIAP(FLjava/lang/String;)V

    return-void
.end method

.method public static setIronSourceMediationMode(Z)V
    .locals 2

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->setMediationMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetIronSourceMediationMode error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OmBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setRewardedVideoExtId(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 147
    invoke-static {v0, p0}, Lcom/openmediation/sdk/unity/OmBridge;->setRewardedVideoExtId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRewardedVideoExtId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {p0, p1}, Lcom/openmediation/sdk/video/RewardedVideoAd;->setExtId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUSPrivacyLimit(Z)V
    .locals 0

    .line 135
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setUSPrivacyLimit(Z)V

    return-void
.end method

.method public static setUserAge(I)V
    .locals 0

    .line 127
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setUserAge(I)V

    return-void
.end method

.method public static setUserGender(Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setUserGender(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .line 276
    invoke-static {p0}, Lcom/openmediation/sdk/OmAds;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static showInterstitial()V
    .locals 0

    .line 169
    invoke-static {}, Lcom/openmediation/sdk/interstitial/InterstitialAd;->showAd()V

    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/openmediation/sdk/interstitial/InterstitialAd;->showAd(Ljava/lang/String;)V

    return-void
.end method

.method public static showPromotionAd(IIFFF)V
    .locals 1

    .line 201
    new-instance v0, Lcom/openmediation/sdk/promotion/PromotionAdRect;

    invoke-direct {v0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;-><init>()V

    .line 202
    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setWidth(I)V

    .line 203
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setHeight(I)V

    .line 204
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setScaleX(F)V

    .line 205
    invoke-virtual {v0, p3}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setScaleY(F)V

    .line 206
    invoke-virtual {v0, p4}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setAngle(F)V

    .line 207
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/openmediation/sdk/promotion/PromotionAd;->showAd(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;)V

    return-void
.end method

.method public static showPromotionAd(Ljava/lang/String;IIFFF)V
    .locals 1

    .line 211
    new-instance v0, Lcom/openmediation/sdk/promotion/PromotionAdRect;

    invoke-direct {v0}, Lcom/openmediation/sdk/promotion/PromotionAdRect;-><init>()V

    .line 212
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setWidth(I)V

    .line 213
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setHeight(I)V

    .line 214
    invoke-virtual {v0, p3}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setScaleX(F)V

    .line 215
    invoke-virtual {v0, p4}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setScaleY(F)V

    .line 216
    invoke-virtual {v0, p5}, Lcom/openmediation/sdk/promotion/PromotionAdRect;->setAngle(F)V

    .line 217
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/openmediation/sdk/promotion/PromotionAd;->showAd(Landroid/app/Activity;Lcom/openmediation/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo()V
    .locals 0

    .line 157
    invoke-static {}, Lcom/openmediation/sdk/video/RewardedVideoAd;->showAd()V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/openmediation/sdk/video/RewardedVideoAd;->showAd(Ljava/lang/String;)V

    return-void
.end method

.method public static showSplashAd(Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->showSplashAd(Ljava/lang/String;)V

    return-void
.end method

.method public static toJsonArray(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 436
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 439
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 440
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 441
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method
