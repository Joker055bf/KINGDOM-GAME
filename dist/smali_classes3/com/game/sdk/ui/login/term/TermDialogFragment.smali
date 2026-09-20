.class public Lcom/game/sdk/ui/login/term/TermDialogFragment;
.super Lcom/game/sdk/comon/game/BaseDialogWebFragment;
.source "TermDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/game/sdk/ui/login/term/TermDialogFragment;
    .locals 3

    .line 14
    new-instance v0, Lcom/game/sdk/ui/login/term/TermDialogFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/login/term/TermDialogFragment;-><init>()V

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    sget-object v2, Lcom/game/sdk/ui/login/term/TermDialogFragment;->URL_WEBVIEW:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/login/term/TermDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getJsHandler()Lcom/game/sdk/comon/js/JsBase;
    .locals 2

    .line 24
    new-instance v0, Lcom/game/sdk/comon/js/JsTerm;

    new-instance v1, Lcom/game/sdk/ui/login/term/TermDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/login/term/TermDialogFragment$1;-><init>(Lcom/game/sdk/ui/login/term/TermDialogFragment;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/comon/js/JsTerm;-><init>(Lcom/game/sdk/comon/js/JsTerm$Listener;)V

    return-object v0
.end method

.method protected getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
