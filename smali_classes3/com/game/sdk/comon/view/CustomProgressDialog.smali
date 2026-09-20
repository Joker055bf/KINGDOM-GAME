.class public Lcom/game/sdk/comon/view/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field public static frag:Lcom/game/sdk/comon/view/CustomProgressDialog;


# instance fields
.field mesage:Ljava/lang/String;

.field progressTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/game/sdk/comon/view/CustomProgressDialog;->mesage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomProgressDialog;->requestWindowFeature(I)Z

    .line 28
    sget p1, Lcom/mobgame/R$layout;->progress_dialog_custom:I

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomProgressDialog;->setContentView(I)V

    .line 29
    sget p1, Lcom/mobgame/R$id;->progressTitle:I

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomProgressDialog;->progressTitle:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomProgressDialog;->mesage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
