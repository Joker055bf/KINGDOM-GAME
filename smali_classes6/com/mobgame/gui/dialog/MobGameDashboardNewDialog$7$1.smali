.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7$1;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$500(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGamePagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGamePagerFragment;->notifiTabsChanged()V

    return-void
.end method
