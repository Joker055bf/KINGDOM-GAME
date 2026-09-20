.class public Lcom/mobgame/gui/dialog/MobGameConfirmDialog;
.super Landroid/app/DialogFragment;
.source "MobGameConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MobGameConfirmDialog"


# instance fields
.field activity:Landroid/app/Activity;

.field eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;

.field private final message:Ljava/lang/String;

.field private final strCancel:Ljava/lang/String;

.field private final strConfirm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->activity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->message:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->strConfirm:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->strCancel:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->setStyle(II)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-interface {p1, v0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;->onCancelClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 41
    sget p3, Lcom/mobgame/R$layout;->confirm_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    :try_start_0
    sget p2, Lcom/mobgame/R$id;->txt_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 45
    sget p3, Lcom/mobgame/R$id;->btn_confirm:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 46
    sget v0, Lcom/mobgame/R$id;->btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->strConfirm:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->strCancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->message:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;-><init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialog;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$2;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$2;-><init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialog;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
