.class Lcom/game/sdk/ui/login/AccountFragment$7;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/login/AccountFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/AccountFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/AccountFragment;Landroid/view/View;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iput-object p2, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/login/AccountFragment;->access$600(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V

    .line 360
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/mobgame/R$id;->btnLogin:I

    if-ne v1, v2, :cond_0

    .line 361
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/login/AccountFragment;->access$300(Lcom/game/sdk/ui/login/AccountFragment;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/mobgame/R$id;->btnClose:I

    if-ne v1, v2, :cond_1

    .line 363
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/login/AccountFragment;->dismiss()V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/mobgame/R$id;->tvTerm:I

    if-ne v1, v2, :cond_2

    .line 365
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/login/AccountFragment;->showTermDialog()V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/mobgame/R$id;->tvRegister:I

    if-ne v1, v2, :cond_3

    .line 367
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/login/AccountFragment;->showRegisterDialog()V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/mobgame/R$id;->tvForgotPass:I

    if-ne v1, v2, :cond_4

    .line 369
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/login/AccountFragment;->access$700(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    sget v3, Lcom/mobgame/R$string;->notice:I

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/login/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    sget v4, Lcom/mobgame/R$string;->info_forget_pass:I

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/login/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/game/sdk/comon/utils/DialogUtils;->showInfoDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 373
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iput-object v0, v2, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    .line 374
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iput-object v0, v2, Lcom/game/sdk/ui/login/AccountFragment;->mRunable:Ljava/lang/Runnable;

    .line 375
    throw v1

    .line 373
    :catch_0
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iput-object v0, v1, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    .line 374
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment$7;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iput-object v0, v1, Lcom/game/sdk/ui/login/AccountFragment;->mRunable:Ljava/lang/Runnable;

    return-void
.end method
