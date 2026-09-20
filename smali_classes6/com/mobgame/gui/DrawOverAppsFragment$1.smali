.class Lcom/mobgame/gui/DrawOverAppsFragment$1;
.super Ljava/lang/Object;
.source "DrawOverAppsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/DrawOverAppsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/DrawOverAppsFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/DrawOverAppsFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mobgame/gui/DrawOverAppsFragment$1;->this$0:Lcom/mobgame/gui/DrawOverAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/mobgame/gui/DrawOverAppsFragment$1;->this$0:Lcom/mobgame/gui/DrawOverAppsFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/DrawOverAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    iget-object p1, p0, Lcom/mobgame/gui/DrawOverAppsFragment$1;->this$0:Lcom/mobgame/gui/DrawOverAppsFragment;

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/DrawOverAppsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
