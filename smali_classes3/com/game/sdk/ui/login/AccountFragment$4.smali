.class Lcom/game/sdk/ui/login/AccountFragment$4;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/ILoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/login/AccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/AccountFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/AccountFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onLoginSuccess()V
    .locals 0

    return-void
.end method

.method public onRegisterSuccess(Ljava/lang/String;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    .line 238
    :try_start_0
    invoke-static {p1}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->parse(Ljava/lang/String;)Lcom/game/sdk/comon/object/response/LoginByRegisterObj;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lcom/game/sdk/comon/object/UserObj;->setLoginType(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->getIsRegister()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/game/sdk/comon/object/UserObj;->setLoginOrRegister(I)V

    .line 241
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    .line 245
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/login/AccountFragment;->listener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/login/AccountFragment;->listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/ILoginListener;->onRegisterSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {p1}, Lcom/game/sdk/ui/login/AccountFragment;->access$400(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$4;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    sget v1, Lcom/mobgame/R$string;->err_422:I

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/login/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
