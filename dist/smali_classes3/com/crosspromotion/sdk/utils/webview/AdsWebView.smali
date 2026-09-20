.class public Lcom/crosspromotion/sdk/utils/webview/AdsWebView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/utils/webview/AdsWebView$AdtWebViewHolder;
    }
.end annotation


# instance fields
.field private isDestroyed:Z

.field private mAdView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->mAdView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->mAdView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->isDestroyed:Z

    return p1
.end method

.method public static getInstance()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$AdtWebViewHolder;->access$100()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy(Lcom/crosspromotion/sdk/utils/webview/BaseWebView;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->freeMemory()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->isDestroyed:Z

    return-void
.end method

.method public getAdView()Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 1

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->isDestroyed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->init()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->mAdView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->mAdView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object v0
.end method

.method public init()V
    .locals 1

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;-><init>(Lcom/crosspromotion/sdk/utils/webview/AdsWebView;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
