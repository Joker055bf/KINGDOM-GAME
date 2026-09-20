.class public Lcom/t4f/sdkauth/funtap/FunTapLogin;
.super Ljava/lang/Object;
.source "FunTapLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdkauth/funtap/FunTapLogin$FunTapResultCode;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "FunTapLogin"

.field private static isLogining:Z = false

.field public static mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

.field private static mUnityActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->isLogining:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 14
    sput-boolean p0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->isLogining:Z

    return p0
.end method

.method public static initSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/sdkauth/funtap/FunTapInterface;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->TAG:Ljava/lang/String;

    const-string v1, "initSDK: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sput-object p0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mUnityActivity:Landroid/app/Activity;

    .line 23
    sput-object p2, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

    .line 25
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/game/sdk/comon/game/GameSdk;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

    const/4 p1, 0x0

    const-string p2, "success"

    invoke-interface {p0, p1, p2}, Lcom/t4f/sdkauth/funtap/FunTapInterface;->initCallback(ILjava/lang/String;)V

    return-void
.end method

.method public static login()V
    .locals 3

    .line 30
    sget-object v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->TAG:Ljava/lang/String;

    const-string v1, "login: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->isLogining:Z

    .line 32
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    sget-object v1, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mUnityActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->initSdk(Landroid/app/Activity;)V

    .line 34
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    sget-object v1, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mUnityActivity:Landroid/app/Activity;

    new-instance v2, Lcom/t4f/sdkauth/funtap/FunTapLogin$1;

    invoke-direct {v2}, Lcom/t4f/sdkauth/funtap/FunTapLogin$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->loginNative(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V

    return-void
.end method

.method public static logout()V
    .locals 3

    .line 63
    sget-object v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->TAG:Ljava/lang/String;

    const-string v1, "logout: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    sget-object v1, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mUnityActivity:Landroid/app/Activity;

    new-instance v2, Lcom/t4f/sdkauth/funtap/FunTapLogin$2;

    invoke-direct {v2}, Lcom/t4f/sdkauth/funtap/FunTapLogin$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->logOut(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILogoutListener;)V

    return-void
.end method
