.class public Lcom/mobgame/gui/DrawOverAppsFragment;
.super Landroid/app/DialogFragment;
.source "DrawOverAppsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/mobgame/gui/DrawOverAppsFragment;
    .locals 1

    .line 20
    new-instance v0, Lcom/mobgame/gui/DrawOverAppsFragment;

    invoke-direct {v0}, Lcom/mobgame/gui/DrawOverAppsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/mobgame/R$string;->attention_overlay:I

    invoke-static {p1, v0}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->draw_over_apps_message:I

    invoke-static {v0, v1}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/mobgame/R$string;->ok:I

    invoke-static {v1, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/mobgame/R$string;->cancel:I

    invoke-static {v2, v3}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mobgame/gui/DrawOverAppsFragment$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/DrawOverAppsFragment$1;-><init>(Lcom/mobgame/gui/DrawOverAppsFragment;)V

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
