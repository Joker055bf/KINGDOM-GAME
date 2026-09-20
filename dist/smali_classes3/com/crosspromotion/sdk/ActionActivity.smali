.class public Lcom/crosspromotion/sdk/ActionActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/ActionActivity$c;,
        Lcom/crosspromotion/sdk/ActionActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

.field private c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

.field private d:Lcom/crosspromotion/sdk/ActionActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->d:Lcom/crosspromotion/sdk/ActionActivity$c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/crosspromotion/sdk/ActionActivity$c;

    invoke-direct {v0, p0, v1}, Lcom/crosspromotion/sdk/ActionActivity$c;-><init>(Lcom/crosspromotion/sdk/ActionActivity;Lcom/crosspromotion/sdk/ActionActivity$a;)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->d:Lcom/crosspromotion/sdk/ActionActivity$c;

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->d:Lcom/crosspromotion/sdk/ActionActivity$c;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 3

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getActView()Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-nez v1, :cond_1

    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-direct {v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;-><init>()V

    iput-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_1
    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {v1, v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->injectJavaScript(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {v1, p1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setPlacementId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setCampaign(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance p1, Lcom/openmediation/sdk/a/e;

    const v1, -0x777778

    invoke-direct {p1, p0, v1}, Lcom/openmediation/sdk/a/e;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/crosspromotion/sdk/ActionActivity$a;

    invoke-direct {v1, p0}, Lcom/crosspromotion/sdk/ActionActivity$a;-><init>(Lcom/crosspromotion/sdk/ActionActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p0, v1}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x1e

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance p1, Landroid/widget/ProgressBar;

    invoke-direct {p1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p0, v1}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/crosspromotion/sdk/ActionActivity;->a()V

    :goto_0
    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdUrl()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "{scene}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v1, Lcom/crosspromotion/sdk/ActionActivity$b;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p0, p2}, Lcom/crosspromotion/sdk/ActionActivity$b;-><init>(Lcom/crosspromotion/sdk/ActionActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->toAdBean(Ljava/lang/String;)Lcom/crosspromotion/sdk/bean/AdBean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/crosspromotion/sdk/ActionActivity;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ActionActivity"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/crosspromotion/sdk/ActionActivity;->d:Lcom/crosspromotion/sdk/ActionActivity$c;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->d:Lcom/crosspromotion/sdk/ActionActivity$c;

    iput-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->c:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V

    iput-object v1, p0, Lcom/crosspromotion/sdk/ActionActivity;->b:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_2
    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->destroy(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
