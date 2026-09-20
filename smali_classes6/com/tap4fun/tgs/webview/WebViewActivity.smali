.class public Lcom/tap4fun/tgs/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tap4fun/tgs/webview/WebViewActivity$WebViewListener;
    }
.end annotation


# static fields
.field public static final WEB_ARGS:Ljava/lang/String; = "webArgs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/tap4fun/tgs/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "webArgs"

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 27
    :try_start_0
    new-instance v1, Lcom/tap4fun/tgs/webview/WebLoadArgs;

    invoke-direct {v1, p1}, Lcom/tap4fun/tgs/webview/WebLoadArgs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception parse web view args in activity.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->getLoadUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    :cond_4
    new-instance v1, Lcom/tap4fun/tgs/webview/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/tap4fun/tgs/webview/WebViewActivity$1;-><init>(Lcom/tap4fun/tgs/webview/WebViewActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/tap4fun/tgs/webview/WebViewActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "To end finish web view activity while load url invalid."

    .line 34
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/tap4fun/tgs/webview/WebViewActivity;->finish()V

    return-void
.end method
