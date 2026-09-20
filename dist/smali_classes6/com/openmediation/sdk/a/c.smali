.class public final Lcom/openmediation/sdk/a/c;
.super Lcom/crosspromotion/sdk/core/a;

# interfaces
.implements Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/a/c$c;,
        Lcom/openmediation/sdk/a/c$d;
    }
.end annotation


# instance fields
.field private k:Landroid/widget/FrameLayout;

.field private l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

.field private m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

.field private n:Lcom/openmediation/sdk/a/c$c;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

.field private q:Lcom/openmediation/sdk/a/c$d;

.field private r:Lcom/crosspromotion/sdk/banner/AdSize;

.field private s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/openmediation/sdk/a/c;->s:Z

    iput-object p2, p0, Lcom/openmediation/sdk/a/c;->k:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/openmediation/sdk/a/c;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    return-object p0
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;Lcom/crosspromotion/sdk/utils/webview/JsBridge;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    return-object p1
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;Lcom/openmediation/sdk/a/c$c;)Lcom/openmediation/sdk/a/c$c;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->n:Lcom/openmediation/sdk/a/c$c;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->q:Lcom/openmediation/sdk/a/c$d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/a/c$d;-><init>(Lcom/openmediation/sdk/a/c;Lcom/openmediation/sdk/a/c$a;)V

    iput-object v0, p0, Lcom/openmediation/sdk/a/c;->q:Lcom/openmediation/sdk/a/c$d;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget-object v1, p0, Lcom/openmediation/sdk/a/c;->q:Lcom/openmediation/sdk/a/c$d;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/a/c;->a(Z)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;)[I
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->r:Lcom/crosspromotion/sdk/banner/AdSize;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/crosspromotion/sdk/banner/AdSize;->SMART:Lcom/crosspromotion/sdk/banner/AdSize;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/crosspromotion/sdk/banner/AdSize;->LEADERBOARD:Lcom/crosspromotion/sdk/banner/AdSize;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/crosspromotion/sdk/banner/AdSize;->BANNER:Lcom/crosspromotion/sdk/banner/AdSize;

    :cond_2
    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/banner/AdSize;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/banner/AdSize;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-object p1
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/c;Landroid/content/Context;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/c;->a(Landroid/content/Context;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/c;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->v()V

    return-void
.end method

.method static synthetic e(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->w()V

    return-void
.end method

.method static synthetic f(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->s()V

    return-void
.end method

.method static synthetic g(Lcom/openmediation/sdk/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/openmediation/sdk/a/c;->s:Z

    return p0
.end method

.method static synthetic h(Lcom/openmediation/sdk/a/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->j:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p0
.end method

.method static synthetic j(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/bean/AdBean;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    return-object p0
.end method

.method static synthetic k(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/crosspromotion/sdk/utils/PUtils;->doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->l()V

    return-void
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/a/c$b;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/a/c$b;-><init>(Lcom/openmediation/sdk/a/c;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s()V
    .locals 7

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/crosspromotion/sdk/utils/Cache;->existCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/IOUtil;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/a/c;->s:Z

    return-void
.end method

.method private u()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/a/c;->s:Z

    :try_start_0
    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->v()V

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->w()V

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Banner load url exception: "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-direct {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->injectJavaScript(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setMessageListener(Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_abt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setAbt(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->setCampaign(Ljava/lang/String;)V

    return-void
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->n:Lcom/openmediation/sdk/a/c$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/c$c;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/openmediation/sdk/a/c$c;-><init>(Lcom/openmediation/sdk/a/c;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openmediation/sdk/a/c;->n:Lcom/openmediation/sdk/a/c$c;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->l:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iget-object v1, p0, Lcom/openmediation/sdk/a/c;->n:Lcom/openmediation/sdk/a/c$c;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->l()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->u()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->t()V

    :goto_0
    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/banner/AdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c;->r:Lcom/crosspromotion/sdk/banner/AdSize;

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/g;->a(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V

    return-void
.end method

.method protected a(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/bean/AdBean;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/c;->a(Z)V

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->r()V

    return-void
.end method

.method protected c()V
    .locals 3

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->c()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/c;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    iget-object v1, p0, Lcom/openmediation/sdk/a/c;->p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/openmediation/sdk/a/c;->q:Lcom/openmediation/sdk/a/c$d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/openmediation/sdk/a/c;->q:Lcom/openmediation/sdk/a/c$d;

    iput-object v0, p0, Lcom/openmediation/sdk/a/c;->p:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/a/c$a;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/a/c$a;-><init>(Lcom/openmediation/sdk/a/c;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 4

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/c;->a(Landroid/content/Context;)[I

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/openmediation/sdk/utils/model/PlacementInfo;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getBannerPlacementInfo(II)Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    return-object v0
.end method

.method protected j()Z
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onReceiveMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->q()V

    goto :goto_0

    :cond_0
    const-string v0, "wvClick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/openmediation/sdk/a/c;->x()V

    goto :goto_0

    :cond_1
    const-string v0, "refreshAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p1, "delay"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/a/c;->a(J)V

    goto :goto_0

    :cond_3
    const-string v0, "pushEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string p1, "e"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/c;->b(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/openmediation/sdk/a/c;->m:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportShowEvent()V

    :cond_0
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "adt-banner onViewAttachedToWindow "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 p1, 0x133

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
