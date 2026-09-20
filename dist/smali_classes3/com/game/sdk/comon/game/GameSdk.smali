.class public Lcom/game/sdk/comon/game/GameSdk;
.super Ljava/lang/Object;
.source "GameSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/game/GameSdk$getFirebaseToken;
    }
.end annotation


# static fields
.field private static gameSdk:Lcom/game/sdk/comon/game/GameSdk;

.field private static mobGameSDK:Lcom/mobgame/MobGameSDK;

.field private static sApp:Landroid/app/Application;


# instance fields
.field listShow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mKeyAds:Ljava/lang/String;

.field mRunable:Ljava/lang/Runnable;

.field private mUserID:Ljava/lang/String;

.field paymentFragment:Landroid/app/DialogFragment;

.field paymentNativeFragment:Landroid/app/DialogFragment;

.field private timerAsync:Ljava/util/Timer;

.field public token:Lcom/game/sdk/comon/game/GameSdk$getFirebaseToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->listShow:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/game/sdk/comon/game/GameSdk;
    .locals 1

    .line 75
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->gameSdk:Lcom/game/sdk/comon/game/GameSdk;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/game/sdk/comon/game/GameSdk;

    invoke-direct {v0}, Lcom/game/sdk/comon/game/GameSdk;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/game/GameSdk;->gameSdk:Lcom/game/sdk/comon/game/GameSdk;

    .line 77
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    .line 79
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->gameSdk:Lcom/game/sdk/comon/game/GameSdk;

    return-object v0
.end method


# virtual methods
.method public dashboardNew()V
    .locals 1

    .line 359
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->dashboardNew()V

    :cond_0
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 71
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public getMessInGame(Landroid/app/Activity;Lcom/game/sdk/comon/listener/IMesssageListener;)V
    .locals 2

    .line 253
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object p2, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    new-instance v0, Lcom/game/sdk/ui/other/GamePresenterImpl;

    new-instance v1, Lcom/game/sdk/comon/game/GameSdk$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/game/sdk/comon/game/GameSdk$4;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/IMesssageListener;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/other/GamePresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 285
    invoke-interface {v0}, Lcom/game/sdk/ui/other/IGamePresenter;->getMessInGame()V

    return-void
.end method

.method public getToken(Lcom/game/sdk/comon/game/GameSdk$getFirebaseToken;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->token:Lcom/game/sdk/comon/game/GameSdk$getFirebaseToken;

    return-void
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 101
    sput-object p1, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    .line 104
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/config/GameConfigs;->setAppKey(Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->timerAsync:Ljava/util/Timer;

    return-void
.end method

.method public initSdk(Landroid/app/Activity;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    invoke-virtual {v0, p1}, Lcom/mobgame/MobGameSDK;->init(Landroid/app/Activity;)V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 86
    new-instance v0, Lcom/game/sdk/comon/game/GameSdk$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/comon/game/GameSdk$1;-><init>(Lcom/game/sdk/comon/game/GameSdk;)V

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->initAdvertising(Landroid/app/Activity;Lcom/game/sdk/comon/utils/DeviceUtils$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public logOut(Landroid/app/Activity;)V
    .locals 4

    .line 205
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->logout()V

    .line 206
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_1
    :goto_0
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 208
    invoke-static {}, Lcom/game/sdk/comon/api/RetrofitClient;->clearInstant()V

    .line 209
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->clearInstance()V

    .line 210
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAVE_FCM_NON_TOKEN"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 211
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    const-string v2, "SAVE_APP_INSTANT_ID"

    invoke-static {v0, v2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 212
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    const-string v1, "MOB_ROLE_ID"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    const-string v1, "MOB_AREA_ID"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-static {v0, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveAccessToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->logout()V

    .line 216
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->disconnectFRB()V

    .line 217
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->lbl_log_out_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 218
    invoke-static {p1, v1, v2, v0}, Lcom/game/sdk/comon/utils/ToastUtils;->showHello(Landroid/app/Activity;JLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public logOut(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILogoutListener;)V
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/game/GameSdk;->logOut(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    .line 228
    invoke-interface {p2}, Lcom/game/sdk/comon/listener/ILogoutListener;->onLogoutSuccess()V

    :cond_0
    return-void
.end method

.method public loginNative(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->lbl_already_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 115
    invoke-interface {p2}, Lcom/game/sdk/comon/listener/ILoginListener;->onLoginSuccess()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Lcom/game/sdk/ui/login/LoginPresenterImpl;

    new-instance v1, Lcom/game/sdk/comon/game/GameSdk$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/game/sdk/comon/game/GameSdk$2;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/login/LoginPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 175
    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getAuthenConfig()V

    return-void
.end method

.method public needShowNotiFloatView()Z
    .locals 2

    .line 488
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->isShowLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->listShow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 339
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1, p2, p3}, Lcom/mobgame/MobGameSDK;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 379
    invoke-static {}, Lcom/mobgame/MobGameSDK;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 344
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->timerAsync:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 346
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->onDestroySDK()V

    :cond_0
    return-void
.end method

.method public onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 232
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/UserObj;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 233
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/UserObj;->getName()Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 235
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mobgame/R$string;->hello:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, 0xbb8

    .line 236
    invoke-static {p1, v1, v2, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showHello(Landroid/app/Activity;JLjava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 239
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/SdkConfigObj;->getForceLogout()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 240
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->init(Landroid/app/Activity;)V

    .line 241
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->initFRB()V

    .line 245
    :cond_1
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 246
    sget-object p2, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    invoke-virtual {p2, p1}, Lcom/mobgame/MobGameSDK;->isGrantedPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 247
    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 369
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobgame/MobGameSDK;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 374
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Lcom/mobgame/MobGameSDK;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public payment(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 0

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Lcom/game/sdk/comon/game/GameSdk;->paymentAllNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    return-void
.end method

.method public paymentAllNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk;->mRunable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/game/GameSdk$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/game/sdk/comon/game/GameSdk$6;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    iput-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->mRunable:Ljava/lang/Runnable;

    .line 433
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public paymentNative(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 7

    .line 437
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 439
    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "MOB_ROLE_ID"

    const-string v1, ""

    .line 441
    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MOB_AREA_ID"

    .line 442
    invoke-static {p1, v2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 447
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 451
    :cond_2
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->getInstance()Lcom/game/sdk/ui/payment/PaymentUtil;

    move-result-object v1

    new-instance v6, Lcom/game/sdk/comon/game/GameSdk$7;

    invoke-direct {v6, p0, p1, p5}, Lcom/game/sdk/comon/game/GameSdk$7;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/game/sdk/ui/payment/PaymentUtil;->initialPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;)V

    :goto_0
    return-void

    .line 448
    :cond_3
    :goto_1
    sget p2, Lcom/mobgame/R$string;->check_purchase_information:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showWarmToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_4
    :goto_2
    sget p2, Lcom/mobgame/R$string;->err_empty_charactor:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public saveCharactor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/listener/ISaveCharactorListener;)V
    .locals 8

    .line 290
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    sget-object p2, Lcom/game/sdk/comon/game/GameSdk;->sApp:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "MOB_ROLE_ID"

    .line 295
    invoke-static {p1, v0, p2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MOB_AREA_ID"

    .line 296
    invoke-static {p1, v0, p3}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "roleID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \t areaID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveCharactor "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/game/sdk/ui/other/GamePresenterImpl;

    new-instance v7, Lcom/game/sdk/comon/game/GameSdk$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/game/sdk/comon/game/GameSdk$5;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ISaveCharactorListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/game/sdk/ui/other/GamePresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 332
    :try_start_0
    invoke-interface {v0, p2, p3}, Lcom/game/sdk/ui/other/IGamePresenter;->saveCharactor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setShow(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 497
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->listShow:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->listShow:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public showLoginForm(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk;->mRunable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/game/GameSdk$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/game/sdk/comon/game/GameSdk$3;-><init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V

    iput-object v0, p0, Lcom/game/sdk/comon/game/GameSdk;->mRunable:Ljava/lang/Runnable;

    .line 200
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showNotifloatView(Landroid/app/Activity;Z)V
    .locals 1

    .line 472
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isRemoveLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/GameSdk;->needShowNotiFloatView()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 476
    sget-object p2, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    invoke-virtual {p2, p1}, Lcom/mobgame/MobGameSDK;->isGrantedPermission(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 477
    sget-object p1, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    sget-object p2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/mobgame/MobGameSDK;->requestOverlayPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 479
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 482
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public showTextScroll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;)V"
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/game/sdk/comon/game/GameSdk;->mobGameSDK:Lcom/mobgame/MobGameSDK;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lcom/mobgame/MobGameSDK;->showTextScroll(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
