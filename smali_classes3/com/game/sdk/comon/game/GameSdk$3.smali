.class Lcom/game/sdk/comon/game/GameSdk$3;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->showLoginForm(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/game/sdk/comon/listener/ILoginListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$3;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "AccountFragment"

    const/4 v1, 0x0

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-static {v2}, Lcom/game/sdk/ui/login/AccountFragment;->newInstance(Lcom/game/sdk/comon/listener/ILoginListener;)Lcom/game/sdk/ui/login/AccountFragment;

    move-result-object v2

    .line 189
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 190
    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/game/sdk/ui/login/AccountFragment;

    invoke-virtual {v2, v3, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-static {v2}, Lcom/game/sdk/ui/login/AccountFragment;->newInstance(Lcom/game/sdk/comon/listener/ILoginListener;)Lcom/game/sdk/ui/login/AccountFragment;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 196
    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
