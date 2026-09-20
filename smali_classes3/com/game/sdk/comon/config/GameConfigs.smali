.class public Lcom/game/sdk/comon/config/GameConfigs;
.super Ljava/lang/Object;
.source "GameConfigs.java"


# static fields
.field private static gameConfigs:Lcom/game/sdk/comon/config/GameConfigs;


# instance fields
.field private FCM_APP_API_KEY:Ljava/lang/String;

.field private adsKey:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private isRemoveLogo:Z

.field private sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

.field private show_qc:Z

.field user:Lcom/game/sdk/comon/object/UserObj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "d5f66e393eaab40f72e6b7d3ca5f32f275db5bd5"

    .line 23
    iput-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->FCM_APP_API_KEY:Ljava/lang/String;

    return-void
.end method

.method public static clearInstance()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/config/GameConfigs;->setUser(Lcom/game/sdk/comon/object/UserObj;)V

    .line 40
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/config/GameConfigs;->setSdkConfig(Lcom/game/sdk/comon/object/SdkConfigObj;)V

    return-void
.end method

.method public static getInstance()Lcom/game/sdk/comon/config/GameConfigs;
    .locals 1

    .line 30
    sget-object v0, Lcom/game/sdk/comon/config/GameConfigs;->gameConfigs:Lcom/game/sdk/comon/config/GameConfigs;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/game/sdk/comon/config/GameConfigs;

    invoke-direct {v0}, Lcom/game/sdk/comon/config/GameConfigs;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/config/GameConfigs;->gameConfigs:Lcom/game/sdk/comon/config/GameConfigs;

    .line 32
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/config/GameConfigs;->gameConfigs:Lcom/game/sdk/comon/config/GameConfigs;

    return-object v0
.end method


# virtual methods
.method public getAdsKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->adsKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAdsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->appKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFcmApiKey()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->FCM_APP_API_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public getGgIABConfig()Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobPopup()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getPop()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getPop()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    :goto_0
    new-instance v0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;-><init>()V

    return-object v0
.end method

.method public getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    return-object v0
.end method

.method public getShow_qc()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->show_qc:Z

    return v0
.end method

.method public getUser()Lcom/game/sdk/comon/object/UserObj;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->user:Lcom/game/sdk/comon/object/UserObj;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getUser(Landroid/content/Context;)Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public initAds(Lcom/game/sdk/comon/object/SdkConfigObj$Ads;)V
    .locals 2

    .line 109
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const-string v1, "FunAdsApikey"

    .line 111
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Ads;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public isLogin()Z
    .locals 1

    .line 104
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRemoveLogo()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->isRemoveLogo:Z

    return v0
.end method

.method public setAdsKey(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/game/sdk/comon/config/GameConfigs;->adsKey:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveAdsKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->appKey:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveAppKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setRemoveLogo(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->isRemoveLogo:Z

    return-void
.end method

.method public setSdkConfig(Lcom/game/sdk/comon/object/SdkConfigObj;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->sdkConfig:Lcom/game/sdk/comon/object/SdkConfigObj;

    .line 91
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->isShowLogo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mobgame/MobGameSDK;->requestOverlayPermission(Landroid/app/Activity;)V

    .line 94
    :cond_1
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/config/GameConfigs;->setShow_qc(Z)V

    .line 95
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getAds()Lcom/game/sdk/comon/object/SdkConfigObj$Ads;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/game/sdk/comon/config/GameConfigs;->initAds(Lcom/game/sdk/comon/object/SdkConfigObj$Ads;)V

    .line 96
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "shared_pref_db_enabled"

    invoke-static {v0, v2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "SESSION_OUT_TIME"

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getSessionOutTime()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveSetting(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setShow_qc(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->show_qc:Z

    return-void
.end method

.method public setUser(Lcom/game/sdk/comon/object/UserObj;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/game/sdk/comon/config/GameConfigs;->user:Lcom/game/sdk/comon/object/UserObj;

    .line 77
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveUser(Landroid/content/Context;Lcom/game/sdk/comon/object/UserObj;)V

    return-void
.end method
