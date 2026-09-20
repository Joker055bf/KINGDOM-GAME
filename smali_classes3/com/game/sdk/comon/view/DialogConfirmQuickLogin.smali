.class public Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;
.super Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;
.source "DialogConfirmQuickLogin.java"


# instance fields
.field listener:Lcom/game/sdk/comon/listener/IDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;
    .locals 1

    .line 20
    new-instance v0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;

    invoke-direct {v0}, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 33
    sget v0, Lcom/mobgame/R$layout;->fragment_term_of_use:I

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 43
    sget v0, Lcom/mobgame/R$id;->btnNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    sget v1, Lcom/mobgame/R$id;->btnYes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 45
    new-instance v1, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$1;-><init>(Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;-><init>(Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 26
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lcom/game/sdk/comon/listener/IDialogListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->listener:Lcom/game/sdk/comon/listener/IDialogListener;

    return-void
.end method
