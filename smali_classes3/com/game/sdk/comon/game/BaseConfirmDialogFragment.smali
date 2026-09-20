.class public abstract Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseConfirmDialogFragment.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutResource()I
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->getLayoutResource()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x3f4ccccd

    invoke-virtual {p2, p3}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public showPregressDialog(Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :goto_0
    return-void
.end method
