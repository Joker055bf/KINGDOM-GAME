.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Lcom/mobgame/listener/RecyclerItemClickListener$OnItemClickListener;


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

    .line 311
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 315
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    .line 316
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getOpenType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 319
    :goto_0
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ne v1, p2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/ItemMenuDashboard;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mobgame/model/ItemMenuDashboard;->setClick(Z)V

    goto :goto_1

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {v2, v0}, Lcom/mobgame/model/ItemMenuDashboard;->setClick(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_2
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$300(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    .line 327
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-virtual {p2, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->loadItemData(Lcom/mobgame/model/ItemMenuDashboard;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 335
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
