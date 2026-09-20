.class public final Lcom/openmediation/sdk/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/a/j$c;,
        Lcom/openmediation/sdk/a/j$d;,
        Lcom/openmediation/sdk/a/j$e;
    }
.end annotation


# instance fields
.field private a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

.field private b:Lcom/openmediation/sdk/a/j$d;

.field private c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

.field private d:Z

.field private e:Lcom/crosspromotion/sdk/bean/AdBean;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/a/j;->g:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/a/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getHeight()I

    move-result v1

    const v2, 0x3f5cdcdd

    if-lez v0, :cond_0

    int-to-float v1, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    int-to-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_1
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v0, v0

    invoke-static {p2, v0}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v1

    invoke-static {p2, v1}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getScaleX()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setX(F)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneHeight(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getScaleY()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setY(F)V

    iget-object p2, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getAngle()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setRotation(F)V

    return-object v2
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/j;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/a/j;->a(Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/j;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/j;->h:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a()V
    .locals 3

    const-string v0, "PromotionAdView js called click"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j;->e:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j;->e:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/crosspromotion/sdk/utils/PUtils;->doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/a;->l()V

    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/j;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PromotionAdView js called addEvent"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/a/j;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-nez v0, :cond_1

    const-class v0, Lcom/openmediation/sdk/a/j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v1, Lcom/openmediation/sdk/a/j$d;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/openmediation/sdk/a/j$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openmediation/sdk/a/j;->b:Lcom/openmediation/sdk/a/j$d;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/openmediation/sdk/a/j;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/j;->h:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static c()Lcom/openmediation/sdk/a/j;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/a/j$e;->a()Lcom/openmediation/sdk/a/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    return-object p0
.end method

.method private g()V
    .locals 3

    const-string v0, "PromotionAdView js called wvClick"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j;->e:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/a;->l()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/openmediation/sdk/a/j$c;)V
    .locals 8

    new-instance v7, Lcom/openmediation/sdk/a/j$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/openmediation/sdk/a/j$b;-><init>(Lcom/openmediation/sdk/a/j;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/openmediation/sdk/a/j$c;Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V

    invoke-static {v7}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)Z
    .locals 7

    invoke-direct {p0}, Lcom/openmediation/sdk/a/j;->b()V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/crosspromotion/sdk/utils/Cache;->existCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/openmediation/sdk/a/j;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/openmediation/sdk/a/j;->e:Lcom/crosspromotion/sdk/bean/AdBean;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->b:Lcom/openmediation/sdk/a/j$d;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/openmediation/sdk/a/j$d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V

    :cond_0
    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-direct {v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;-><init>()V

    iput-object v1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v3, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v1, v3}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->injectJavaScript(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {v1, p1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setPlacementId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setCampaign(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {p1, p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setMessageListener(Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v2, p2}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Lcom/openmediation/sdk/utils/IOUtil;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V

    iput-object v1, p0, Lcom/openmediation/sdk/a/j;->c:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/openmediation/sdk/a/j;->h:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/a/j;->d:Z

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/j;->a:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/a/j$a;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/a/j$a;-><init>(Lcom/openmediation/sdk/a/j;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/a/j;->d:Z

    return v0
.end method

.method public onReceiveMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/j;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "wvClick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/openmediation/sdk/a/j;->g()V

    goto :goto_0

    :cond_1
    const-string v0, "pushEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p1, "e"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/j;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
