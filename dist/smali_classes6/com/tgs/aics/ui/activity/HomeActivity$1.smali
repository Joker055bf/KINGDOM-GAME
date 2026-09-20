.class Lcom/tgs/aics/ui/activity/HomeActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/HomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;Z)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$000(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$000(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->stopService(Landroid/content/Intent;)Z

    .line 114
    :cond_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$100(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$200(Lcom/tgs/aics/ui/activity/HomeActivity;)Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$200(Lcom/tgs/aics/ui/activity/HomeActivity;)Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->finish()V

    return-void
.end method
