.class public Lcom/game/sdk/comon/game/LifeCycleActivity;
.super Ljava/lang/Object;
.source "LifeCycleActivity.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# static fields
.field public static mobGameActivity:Lcom/game/sdk/comon/game/LifeCycleActivity;


# instance fields
.field activity:Landroid/app/Activity;

.field isFirstLauch:Z

.field loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->isFirstLauch:Z

    .line 43
    iput-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    .line 44
    new-instance p1, Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    iput-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/game/sdk/comon/game/LifeCycleActivity;
    .locals 1

    .line 36
    sget-object v0, Lcom/game/sdk/comon/game/LifeCycleActivity;->mobGameActivity:Lcom/game/sdk/comon/game/LifeCycleActivity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/game/sdk/comon/game/LifeCycleActivity;

    invoke-direct {v0, p0}, Lcom/game/sdk/comon/game/LifeCycleActivity;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/game/sdk/comon/game/LifeCycleActivity;->mobGameActivity:Lcom/game/sdk/comon/game/LifeCycleActivity;

    .line 38
    :cond_0
    sget-object p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->mobGameActivity:Lcom/game/sdk/comon/game/LifeCycleActivity;

    return-object p0
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 130
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/UserErrObj;

    const/16 v1, -0x64

    const/16 v2, 0x191

    if-eqz v0, :cond_2

    .line 131
    check-cast p1, Lcom/game/sdk/comon/object/err/UserErrObj;

    .line 132
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/UserErrObj;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 133
    iget-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/UserErrObj;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/UserErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/game/sdk/comon/game/LifeCycleActivity$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/LifeCycleActivity$1;-><init>(Lcom/game/sdk/comon/game/LifeCycleActivity;)V

    invoke-static {v0, p1, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    goto :goto_0

    .line 144
    :cond_2
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;

    if-eqz v0, :cond_5

    .line 145
    check-cast p1, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;

    .line 146
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 147
    iget-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/comon/game/LifeCycleActivity$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/LifeCycleActivity$2;-><init>(Lcom/game/sdk/comon/game/LifeCycleActivity;)V

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/game/sdk/comon/game/LifeCycleActivity$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/LifeCycleActivity$3;-><init>(Lcom/game/sdk/comon/game/LifeCycleActivity;)V

    invoke-static {v0, p1, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialogWithLogOut(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getUser()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->isFirstLauch:Z

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->isFirstLauch:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    iput-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    .line 66
    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getUser()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    .line 104
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/UserResponseObj;

    const-string v1, "LifeCycleActivity"

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lcom/game/sdk/comon/object/response/UserResponseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/UserResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game/sdk/comon/config/GameConfigs;->setUser(Lcom/game/sdk/comon/object/UserObj;)V

    .line 107
    iget-boolean p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->isFirstLauch:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    :cond_0
    const-string p1, "User valid"

    .line 109
    invoke-static {v1, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iput-boolean v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->isFirstLauch:Z

    .line 113
    check-cast p1, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;

    .line 114
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/game/sdk/comon/config/GameConfigs;->setSdkConfig(Lcom/game/sdk/comon/object/SdkConfigObj;)V

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->getQueuePopups()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "pop_maintain"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->showPopup()V

    return-void

    .line 120
    :cond_2
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity;->activity:Landroid/app/Activity;

    const-string v2, "login"

    invoke-virtual {p1, v0, v2}, Lcom/game/sdk/comon/game/GameSdk;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "get game info success"

    .line 121
    invoke-static {v1, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
