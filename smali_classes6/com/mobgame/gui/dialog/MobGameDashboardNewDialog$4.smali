.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setUpListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 297
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 299
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->dismiss()V

    .line 300
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string p3, "shared_pref_show_dashboard"

    invoke-static {p1, p3}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
