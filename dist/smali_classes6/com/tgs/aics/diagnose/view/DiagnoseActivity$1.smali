.class Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "DiagnoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getStatus()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$000(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$000(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$000(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$100(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$100(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
