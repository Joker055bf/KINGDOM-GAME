.class public Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;
.super Landroid/app/DialogFragment;
.source "MobGameFloatConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MobGameFloatConfirmDialog"


# instance fields
.field activity:Landroid/app/Activity;

.field eventListener:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0, p2}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->setStyle(II)V

    const-string p2, "shared_pref_show_dashboard"

    .line 34
    invoke-static {p1, p2, v0}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;->onCancelClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 39
    sget p3, Lcom/mobgame/R$layout;->float_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    :try_start_0
    sget p2, Lcom/mobgame/R$id;->txt_guide:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 43
    sget p3, Lcom/mobgame/R$id;->img_guide:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/mobgame/R$id;->btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    sget v1, Lcom/mobgame/R$id;->btn_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    sget v3, Lcom/mobgame/R$drawable;->float_hide_tips_animation:I

    invoke-static {v2, v3}, Lcom/mobgame/utils/Res;->drawableResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/AnimationDrawable;

    .line 49
    invoke-virtual {p3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 51
    iget-object p3, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$string;->dialog_tips_title:I

    invoke-static {p3, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    sget p3, Lcom/mobgame/R$string;->cancel:I

    invoke-static {p2, p3}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    sget p3, Lcom/mobgame/R$string;->hide:I

    invoke-static {p2, p3}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$1;-><init>(Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance p2, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;-><init>(Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 76
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

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
