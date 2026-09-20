.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "WeiboPre.java"


# static fields
.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field public static ssoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private static sucessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/app/Activity;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->ssoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;

    invoke-direct {v1, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    return-void
.end method

.method public static Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 26
    :try_start_0
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->sucessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 27
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 28
    new-instance p2, Lcom/sina/weibo/sdk/auth/AuthInfo;

    const-string p3, "https://api.weibo.com/oauth2/default.html"

    const-string v0, "all"

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/WbSdk;->install(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    .line 34
    new-instance p1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-direct {p1, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->ssoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 37
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 41
    :cond_0
    throw p0
.end method

.method static synthetic access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;
    .locals 1

    .line 17
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->sucessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 1

    .line 17
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->ssoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
