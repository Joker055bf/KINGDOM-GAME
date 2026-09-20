.class public Lcom/game/sdk/ui/login/LoginPresenterImpl;
.super Ljava/lang/Object;
.source "LoginPresenterImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/login/ILoginPresenter;


# static fields
.field private static activity:Landroid/app/Activity;


# instance fields
.field private mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

.field private mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

.field private final mLoginCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/presenter/InteractorCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/presenter/BaseView;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;-><init>(Lcom/game/sdk/ui/login/LoginPresenterImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mLoginCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    .line 24
    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    .line 25
    new-instance p1, Lcom/game/sdk/ui/login/LoginInteractorImpl;

    invoke-direct {p1, v0}, Lcom/game/sdk/ui/login/LoginInteractorImpl;-><init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V

    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenConfig()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAuthenConfigObj()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;-><init>()V

    .line 97
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAuthenConfigObj()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;->setData(Lcom/game/sdk/comon/object/AuthenConfigObj;)V

    .line 98
    iget-object v1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    invoke-interface {v1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->success(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginInteractor;->getAuthenConfig()V

    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 104
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getSdkConfig()V
    .locals 4

    .line 119
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "ft_ls_game_config_call_api_success"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginInteractor;->getSdkConfig()V

    .line 122
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 123
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getUser()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginInteractor;->getUser()V

    .line 112
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 113
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loginEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/ui/login/ILoginInteractor;->loginEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 61
    invoke-interface {p1, p2}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loginFtFacebook(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/login/ILoginInteractor;->loginFtFacebook(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 71
    invoke-interface {p1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loginFtGoogle(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/login/ILoginInteractor;->loginFtGoogle(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 80
    invoke-interface {p1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loginPlayNow()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/login/ILoginInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mInteractor:Lcom/game/sdk/ui/login/ILoginInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginInteractor;->loginPlayNow()V

    .line 88
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 89
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
