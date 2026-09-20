.class Lcom/tap4fun/tgs/webview/TGSWebView$1;
.super Landroid/webkit/WebViewClient;
.source "TGSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tap4fun/tgs/webview/TGSWebView;->load(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tap4fun/tgs/webview/TGSWebView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$argsJson:Lcom/tap4fun/tgs/webview/WebLoadArgs;

.field final synthetic val$extraHeaders:Ljava/util/Map;

.field final synthetic val$listener:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;

.field final synthetic val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;


# direct methods
.method constructor <init>(Lcom/tap4fun/tgs/webview/TGSWebView;Lcom/tap4fun/tgs/webview/TGSWebView$Result;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->this$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iput-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    iput-object p3, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$argsJson:Lcom/tap4fun/tgs/webview/WebLoadArgs;

    iput-object p4, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$listener:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;

    iput-object p5, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$extraHeaders:Ljava/util/Map;

    iput-object p6, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "Finish load web in android web view."

    .line 83
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->this$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iget-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    iget p2, p2, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->mCode:I

    iget-object v0, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    iget-object v0, v0, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->mMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$argsJson:Lcom/tap4fun/tgs/webview/WebLoadArgs;

    iget-object v2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$listener:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/tap4fun/tgs/webview/TGSWebView;->access$000(Lcom/tap4fun/tgs/webview/TGSWebView;ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "Load exception.e="

    const-string v1, "Exception start android system web browser while load exception.e="

    const/4 v2, 0x1

    const/16 v3, 0x7d1

    if-eqz p2, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "Load succeed."

    const/16 v8, 0x7d0

    if-nez v6, :cond_2

    :try_start_1
    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :try_start_2
    iget-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    iget-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    invoke-virtual {p1, v8, v7}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 105
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7d6

    invoke-virtual {p2, v0, p1}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$extraHeaders:Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    invoke-virtual {p1, v8, v7}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    const-string p2, "Load url override invalid."

    invoke-virtual {p1, v3, p2}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v2

    :catch_1
    move-exception p1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception override android web view url loading."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$1;->val$result:Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Url override exception.e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v2
.end method
