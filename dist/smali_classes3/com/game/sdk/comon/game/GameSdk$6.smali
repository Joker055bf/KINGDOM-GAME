.class Lcom/game/sdk/comon/game/GameSdk$6;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->paymentAllNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$state:Ljava/lang/String;

    iput-object p4, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "PaymentNativeFragment"

    const-string v1, ""

    .line 398
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/game/sdk/comon/utils/ToastUtils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    const-string v3, "MOB_ROLE_ID"

    invoke-static {v2, v3, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    const-string v4, "MOB_AREA_ID"

    invoke-static {v3, v4, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    iput-object v2, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    .line 411
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v1, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$state:Ljava/lang/String;

    new-instance v3, Lcom/game/sdk/comon/game/GameSdk$6$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/comon/game/GameSdk$6$1;-><init>(Lcom/game/sdk/comon/game/GameSdk$6;)V

    invoke-static {v2, v3}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->newInstance(Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;)Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v1, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v1, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v1, v1, Lcom/game/sdk/comon/game/GameSdk;->paymentNativeFragment:Landroid/app/DialogFragment;

    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-virtual {v1, v2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 405
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$string;->err_empty_charactor:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/ToastUtils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
