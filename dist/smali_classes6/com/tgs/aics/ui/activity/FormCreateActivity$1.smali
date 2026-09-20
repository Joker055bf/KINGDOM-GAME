.class Lcom/tgs/aics/ui/activity/FormCreateActivity$1;
.super Ljava/lang/Object;
.source "FormCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialogConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$000(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 124
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    const-class v1, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "should_pull_evaluation_page"

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
