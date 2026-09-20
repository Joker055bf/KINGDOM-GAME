.class public final Lcom/crosspromotion/sdk/utils/webview/ActWebView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/utils/webview/ActWebView$ActWebViewHolder;
    }
.end annotation


# instance fields
.field private isDestroyed:Z

.field private mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/utils/webview/ActWebView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/crosspromotion/sdk/utils/webview/ActWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/crosspromotion/sdk/utils/webview/ActWebView;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/crosspromotion/sdk/utils/webview/ActWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/crosspromotion/sdk/utils/webview/ActWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->isDestroyed:Z

    return p1
.end method

.method public static getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView$ActWebViewHolder;->access$100()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->freeMemory()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->isDestroyed:Z

    return-void
.end method

.method public getActView()Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 1

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->isDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->mActView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/ActWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/crosspromotion/sdk/utils/webview/ActWebView$1;-><init>(Lcom/crosspromotion/sdk/utils/webview/ActWebView;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
