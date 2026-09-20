.class public abstract Lcom/openmediation/sdk/OmAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/OmAds$CACHE_TYPE;,
        Lcom/openmediation/sdk/OmAds$AD_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImpressionDataListener(Lcom/openmediation/sdk/ImpressionDataListener;)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/ImpressionManager;->addListener(Lcom/openmediation/sdk/ImpressionDataListener;)V

    return-void
.end method

.method public static clearCustomTags()V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->clearCustomTags()V

    return-void
.end method

.method public static getAgeRestricted()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getCustomTags()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGDPRConsent()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSPrivacyLimit()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAge()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getUserGender()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getUserGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/InitConfiguration;->isLogEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->isDebug(Z)V

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method public static init(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/openmediation/sdk/OmAds;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method public static isInit()Z
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->isInit()Z

    move-result v0

    return v0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeCustomTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->removeCustomTag(Ljava/lang/String;)V

    return-void
.end method

.method public static removeImpressionDataListener(Lcom/openmediation/sdk/ImpressionDataListener;)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/ImpressionManager;->removeListener(Lcom/openmediation/sdk/ImpressionDataListener;)V

    return-void
.end method

.method public static sendAFConversionData(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/AFManager;->sendAFConversionData(Ljava/lang/Object;)V

    return-void
.end method

.method public static sendAFDeepLinkData(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/AFManager;->sendAFDeepLinkData(Ljava/lang/Object;)V

    return-void
.end method

.method public static setAgeRestricted(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setAgeRestricted(Z)V

    return-void
.end method

.method public static setAutoCache(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setAutoCache(Z)V

    return-void
.end method

.method public static setCustomTag(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->setCustomTagObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCustomTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->setCustomTagObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs setCustomTag(Ljava/lang/String;[Ljava/lang/Number;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->setCustomTagObjects(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs setCustomTag(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->setCustomTagObjects(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setCustomTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setCustomTags(Ljava/util/Map;)V

    return-void
.end method

.method public static setGDPRConsent(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setGDPRConsent(Z)V

    return-void
.end method

.method public static setIAP(FLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->setIAP(FLjava/lang/String;)V

    return-void
.end method

.method public static setLogEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/AdLog;->isDebug(Z)V

    return-void
.end method

.method public static setUSPrivacyLimit(Z)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setUSPrivacyLimit(Z)V

    return-void
.end method

.method public static setUserAge(I)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setUserAge(I)V

    return-void
.end method

.method public static setUserGender(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setUserGender(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->setUserId(Ljava/lang/String;)V

    return-void
.end method
