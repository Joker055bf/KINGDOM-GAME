.class public Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;
.super Ljava/lang/Object;
.source "TGSTwitterLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "TGSTwitterLogin"

.field private static TwitterAuth:I = 0x2767

.field private static authService:Lnet/openid/appauth/AuthorizationService; = null

.field private static clientId:Ljava/lang/String; = "cFpRdWdWVjc3aDdObXFWRWlSVjM6MTpjaQ"

.field private static clientSecret:Ljava/lang/String; = "hAfxOJS4VVXUM_KZUwbVncgN5p_R-i9ksB4KAewWyJCr6hYImQ"

.field public static mActivity:Landroid/app/Activity; = null

.field private static mListener:Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener; = null

.field private static redirectUrl:Ljava/lang/String; = "tgs://"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mListener:Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;->onInitResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ExecuteLoginCallback(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mListener:Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;->onLoginResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string v1, "Native Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sput-object p4, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mListener:Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginListener;

    const/4 v0, 0x0

    const-string v1, ""

    if-nez p0, :cond_0

    .line 38
    sget-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error activity is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "twitter login Initialize error: activity is null"

    .line 39
    invoke-static {v0, p0, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    sput-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    if-nez p4, :cond_1

    .line 45
    sget-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error listener is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "twitter login Initialize error: listener is null"

    .line 46
    invoke-static {v0, p0, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    sget-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error AppId (ClientId) is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "twitter login Initialize error: AppId (ClientId) is empty"

    .line 52
    invoke-static {v0, p0, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    sput-object p1, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->clientId:Ljava/lang/String;

    .line 57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 58
    sget-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error AppKey (clientSecret) is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "twitter login Initialize error: AppKey (clientSecret) is empty"

    .line 59
    invoke-static {v0, p0, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_3
    sput-object p3, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->clientSecret:Ljava/lang/String;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 65
    sget-object p0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error redirectUrl is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "twitter login Initialize error: redirectUrl is empty"

    .line 66
    invoke-static {v0, p0, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_4
    sput-object p2, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->redirectUrl:Ljava/lang/String;

    const/4 p0, 0x1

    const-string p1, "success"

    .line 70
    invoke-static {p0, p1, v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteInitCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Login()V
    .locals 9

    .line 74
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    const-string v1, "Twitter Login Start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    const-string v1, "https://twitter.com/i/oauth2/authorize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "https://api.twitter.com/2/oauth2/token"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 76
    new-instance v1, Lnet/openid/appauth/AuthorizationRequest$Builder;

    sget-object v2, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->clientId:Ljava/lang/String;

    sget-object v3, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->redirectUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "code"

    invoke-direct {v1, v0, v2, v4, v3}, Lnet/openid/appauth/AuthorizationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "tweet.read users.read"

    .line 77
    invoke-virtual {v1, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->build()Lnet/openid/appauth/AuthorizationRequest;

    move-result-object v0

    .line 78
    new-instance v1, Lnet/openid/appauth/AuthorizationService;

    sget-object v2, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->authService:Lnet/openid/appauth/AuthorizationService;

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 80
    sget-object v1, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->authService:Lnet/openid/appauth/AuthorizationService;

    sget-object v2, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x2000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v4, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    const-class v8, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v3, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v1, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->authService:Lnet/openid/appauth/AuthorizationService;

    sget-object v2, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v4, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->mActivity:Landroid/app/Activity;

    const-class v8, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v3, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/openid/appauth/AuthorizationService;->performAuthorizationRequest(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lnet/openid/appauth/AuthorizationService;
    .locals 1

    .line 19
    sget-object v0, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->authService:Lnet/openid/appauth/AuthorizationService;

    return-object v0
.end method
