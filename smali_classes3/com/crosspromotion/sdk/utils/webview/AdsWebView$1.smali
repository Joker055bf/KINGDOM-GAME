.class Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->access$200(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->access$300(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->access$202(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->access$302(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;Z)Z

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->access$200(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AdsWebView"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
