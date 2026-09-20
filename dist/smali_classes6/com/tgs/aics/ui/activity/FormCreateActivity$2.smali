.class Lcom/tgs/aics/ui/activity/FormCreateActivity$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "FormCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FormCreateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$100(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$100(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->stopService(Landroid/content/Intent;)Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$200(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$200(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    const/4 v1, -0x1

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$300(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->finish()V

    return-void
.end method
