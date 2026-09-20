.class Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "FAQDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Z)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$000(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$000(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->stopService(Landroid/content/Intent;)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$100(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$100(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 67
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 68
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 69
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$202(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    const/4 v1, -0x1

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$300(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->finish()V

    return-void
.end method
