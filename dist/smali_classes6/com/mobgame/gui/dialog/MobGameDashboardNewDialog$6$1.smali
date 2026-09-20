.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

    iget-object v1, v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    iget-object v1, v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->selectedItem:Lcom/mobgame/model/ItemMenuDashboard;

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$400(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;Lcom/mobgame/model/ItemMenuDashboard;)V

    .line 423
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragContent.countTabs(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

    iget-object v2, v2, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$500(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGamePagerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobgame/gui/MobGamePagerFragment;->countTabs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
