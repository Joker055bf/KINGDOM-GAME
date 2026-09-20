.class Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;
.super Ljava/lang/Object;
.source "RechargeRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialogConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->access$000(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 61
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    const-class v1, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "should_pull_evaluation_page"

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
