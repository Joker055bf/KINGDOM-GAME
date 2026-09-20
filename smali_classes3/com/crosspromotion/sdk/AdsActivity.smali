.class public Lcom/crosspromotion/sdk/AdsActivity;
.super Lcom/crosspromotion/sdk/core/BaseActivity;

# interfaces
.implements Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;


# instance fields
.field private i:Lcom/openmediation/sdk/a/e;

.field private j:Z

.field private k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->j:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/openmediation/sdk/a/k;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/openmediation/sdk/a/k;

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/k;->s()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/openmediation/sdk/a/k;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/openmediation/sdk/a/k;

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/k;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/crosspromotion/sdk/AdsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/crosspromotion/sdk/AdsActivity;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/crosspromotion/sdk/AdsActivity;)Lcom/openmediation/sdk/a/e;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/AdsActivity;->i:Lcom/openmediation/sdk/a/e;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    invoke-static {p0, p1}, Lcom/crosspromotion/sdk/utils/Cache;->existCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/IOUtil;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const-string/jumbo v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportShowEvent()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/openmediation/sdk/a/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/openmediation/sdk/a/k;

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/k;->q()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {p0, v0, v1}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {p0, v0, v1}, Lcom/crosspromotion/sdk/utils/PUtils;->doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->a()V

    return-void
.end method

.method private g()V
    .locals 0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Lcom/crosspromotion/sdk/AdsActivity$b;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/AdsActivity$b;-><init>(Lcom/crosspromotion/sdk/AdsActivity;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {p0, v0, v1}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->a()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-direct {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setMessageListener(Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->injectJavaScript(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setSceneName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->f:I

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setAbt(I)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setCampaign(Ljava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/a/e;

    const v1, -0x777778

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/a/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->i:Lcom/openmediation/sdk/a/e;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->i:Lcom/openmediation/sdk/a/e;

    new-instance v1, Lcom/crosspromotion/sdk/AdsActivity$a;

    invoke-direct {v1, p0}, Lcom/crosspromotion/sdk/AdsActivity$a;-><init>(Lcom/crosspromotion/sdk/AdsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->i:Lcom/openmediation/sdk/a/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->h()V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->i:Lcom/openmediation/sdk/a/e;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/AdsActivity;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/core/a;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    const/16 p1, 0x133

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V

    iput-object v1, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_1
    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v0

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->destroy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const-string v3, "playin"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    move-result-object v0

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v3, v2}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->destroy(Lcom/crosspromotion/sdk/utils/webview/BaseWebView;Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    iput-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "wv.pause"

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportEvent(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->g()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->f()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wvClick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->i()V

    goto :goto_0

    :cond_2
    const-string v0, "setCloseVisible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo p1, "visible"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/AdsActivity;->j:Z

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->h()V

    goto :goto_0

    :cond_4
    const-string v0, "addRewarded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/crosspromotion/sdk/AdsActivity;->e()V

    goto :goto_0

    :cond_5
    const-string v0, "pushEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    return-void

    :cond_6
    const-string p1, "e"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/AdsActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "reportVideoProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    return-void

    :cond_8
    const-string p1, "progress"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/AdsActivity;->a(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/AdsActivity;->k:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "wv.resume"

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
