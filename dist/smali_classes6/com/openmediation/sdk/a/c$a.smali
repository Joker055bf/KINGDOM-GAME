.class Lcom/openmediation/sdk/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Lcom/crosspromotion/sdk/utils/webview/JsBridge;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Lcom/openmediation/sdk/a/c$c;)Lcom/openmediation/sdk/a/c$c;

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$a;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
