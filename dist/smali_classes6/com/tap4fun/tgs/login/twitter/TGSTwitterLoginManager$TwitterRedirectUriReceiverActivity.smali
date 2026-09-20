.class public Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;
.super Lnet/openid/appauth/RedirectUriReceiverActivity;
.source "TGSTwitterLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwitterRedirectUriReceiverActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lnet/openid/appauth/RedirectUriReceiverActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 99
    invoke-static {}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Twitter Login Success.accessToken is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Twitter Login Success."

    .line 100
    iget-object p0, p0, Lnet/openid/appauth/TokenResponse;->accessToken:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteLoginCallback(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Twitter Login Failed.error is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteLoginCallback(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lnet/openid/appauth/RedirectUriReceiverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Twitter Redirect Success.Authorization Code is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lnet/openid/appauth/AuthorizationResponse;->authorizationCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->access$100()Lnet/openid/appauth/AuthorizationService;

    move-result-object v0

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;

    move-result-object p1

    new-instance v1, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager$TwitterRedirectUriReceiverActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Twitter Login Failed.error is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/tap4fun/tgs/login/twitter/TGSTwitterLoginManager;->ExecuteLoginCallback(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
