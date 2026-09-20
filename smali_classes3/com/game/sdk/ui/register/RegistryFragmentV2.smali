.class public Lcom/game/sdk/ui/register/RegistryFragmentV2;
.super Lcom/game/sdk/comon/game/BaseDialogWebFragment;
.source "RegistryFragmentV2.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/IWebViewClientListener;


# instance fields
.field registerListener:Lcom/game/sdk/comon/listener/ILoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/game/sdk/comon/listener/ILoginListener;)Lcom/game/sdk/ui/register/RegistryFragmentV2;
    .locals 4

    .line 23
    new-instance v0, Lcom/game/sdk/ui/register/RegistryFragmentV2;

    invoke-direct {v0}, Lcom/game/sdk/ui/register/RegistryFragmentV2;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/api/ApiUtils;->getUrlWvRegister(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 26
    sget-object v3, Lcom/game/sdk/ui/register/RegistryFragmentV2;->URL_WEBVIEW:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/register/RegistryFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {v0, p0}, Lcom/game/sdk/ui/register/RegistryFragmentV2;->setRegisterListener(Lcom/game/sdk/comon/listener/ILoginListener;)V

    return-object v0
.end method


# virtual methods
.method protected getJsHandler()Lcom/game/sdk/comon/js/JsBase;
    .locals 2

    .line 39
    new-instance v0, Lcom/game/sdk/comon/js/JsRegister;

    new-instance v1, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;-><init>(Lcom/game/sdk/ui/register/RegistryFragmentV2;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/comon/js/JsRegister;-><init>(Lcom/game/sdk/comon/js/JsRegister$Listener;)V

    return-object v0
.end method

.method protected getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;
    .locals 0

    return-object p0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/api/ApiUtils;->getUrlWvRegister(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p1, "checkScreen=register"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setRegisterListener(Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2;->registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
