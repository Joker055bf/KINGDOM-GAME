.class public Lcom/game/sdk/comon/view/ConfirmDialog;
.super Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;
.source "ConfirmDialog.java"


# instance fields
.field btnNo:Landroid/widget/TextView;

.field btnRetry:Landroid/widget/TextView;

.field btnYes:Landroid/widget/TextView;

.field dlgContent:Landroid/widget/TextView;

.field dlgTitle:Landroid/widget/TextView;

.field lableCancel:Ljava/lang/String;

.field lableOK:Ljava/lang/String;

.field lableRetry:Ljava/lang/String;

.field message:Ljava/lang/String;

.field onClickCancel:Landroid/view/View$OnClickListener;

.field onClickOk:Landroid/view/View$OnClickListener;

.field onClickRetry:Landroid/view/View$OnClickListener;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/game/sdk/comon/view/ConfirmDialog;
    .locals 1

    .line 24
    new-instance v0, Lcom/game/sdk/comon/view/ConfirmDialog;

    invoke-direct {v0}, Lcom/game/sdk/comon/view/ConfirmDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 37
    sget v0, Lcom/mobgame/R$layout;->fragment_term_of_use:I

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 71
    sget v0, Lcom/mobgame/R$id;->btnNo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnNo:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/mobgame/R$id;->btnYes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnYes:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/mobgame/R$id;->btnRetry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnRetry:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/mobgame/R$id;->dlgContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgContent:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/mobgame/R$id;->dlgTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgTitle:Landroid/widget/TextView;

    .line 76
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgContent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnNo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableOK:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnYes:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnYes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableOK:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnYes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickOk:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableCancel:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnNo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableCancel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableRetry:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnRetry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableRetry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->btnRetry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickRetry:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->title:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->message:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgContent:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->dlgContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 30
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 31
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

    .line 42
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseConfirmDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/ConfirmDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableCancel:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->message:Ljava/lang/String;

    return-void
.end method

.method public setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableOK:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickOk:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRetryButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->lableRetry:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->onClickRetry:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/game/sdk/comon/view/ConfirmDialog;->title:Ljava/lang/String;

    return-void
.end method
