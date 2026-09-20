.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 249
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 252
    sput-boolean p1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isDashBoard:Z

    .line 253
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->dismiss()V

    .line 254
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "shared_pref_show_dashboard"

    invoke-static {p1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mobgame.broadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "category"

    const-string v1, "is_showads"

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
