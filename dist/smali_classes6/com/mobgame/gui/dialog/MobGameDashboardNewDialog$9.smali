.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$9;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->hideProgressBar()V
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

    .line 762
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$700(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
