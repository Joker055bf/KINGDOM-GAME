.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;
.super Landroid/content/BroadcastReceiver;
.source "MobGameDashboardNewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;
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

    .line 533
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "funtap :"

    const-wide/16 v0, 0x1f4

    .line 537
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v0, "category"

    .line 542
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm"

    .line 543
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "id"

    if-eqz v1, :cond_1

    .line 544
    :try_start_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    sget-object v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 547
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$500(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGamePagerFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGamePagerFragment;->notifiTabsChanged()V

    .line 549
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 550
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1300(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)V

    goto :goto_1

    :cond_1
    const-string p1, "swipe_refresh"

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 557
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)V

    .line 558
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$500(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGamePagerFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGamePagerFragment;->notifiTabsChanged()V

    :cond_2
    :goto_1
    const-string p1, "close_progress_bar"

    .line 561
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$700(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 565
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
