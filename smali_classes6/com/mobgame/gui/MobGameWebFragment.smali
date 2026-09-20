.class public Lcom/mobgame/gui/MobGameWebFragment;
.super Landroid/app/Fragment;
.source "MobGameWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/MobGameWebFragment$EventListener;
    }
.end annotation


# static fields
.field public static final HIDE_SWIPE:Ljava/lang/String; = "hideSwipe"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_POST_PARAMS:Ljava/lang/String; = "post_params"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEBVIEW_TAG:Ljava/lang/String; = "fragment_web"

.field private static cachedUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mobgame/model/MUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private args:Landroid/os/Bundle;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private eventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

.field private historyBackstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isHideSwipe:Z

.field private js:Ljava/lang/String;

.field private jsHandler:Lcom/game/sdk/comon/js/JsHandler;

.field private mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

.field private ntfId:I

.field private urlLoadFail:Ljava/lang/String;

.field private urlToLoad:Ljava/lang/String;

.field private webView:Lcom/mobgame/gui/MobGameWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "MobGameWebFragment"

    .line 64
    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->js:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    .line 79
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/MobGameWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 264
    new-instance v0, Lcom/mobgame/gui/MobGameWebFragment$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameWebFragment$2;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "MobGameWebFragment"

    .line 64
    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->js:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    .line 79
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/MobGameWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 264
    new-instance v0, Lcom/mobgame/gui/MobGameWebFragment$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameWebFragment$2;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "MobGameWebFragment"

    .line 64
    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->js:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    .line 79
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/MobGameWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 264
    new-instance v0, Lcom/mobgame/gui/MobGameWebFragment$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameWebFragment$2;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    .line 99
    iput p2, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "MobGameWebFragment"

    .line 64
    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->js:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    .line 79
    iput-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/MobGameWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 264
    new-instance v0, Lcom/mobgame/gui/MobGameWebFragment$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameWebFragment$2;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 105
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    .line 109
    :goto_0
    iput p3, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/MobGameWebFragment;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/MobGameWebFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->ntfId:I

    return p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->eventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->addToBackstack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mobgame/gui/MobGameWebFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/view/MobSwipRefreshLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    return-object p0
.end method

.method private addToBackstack(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "about:blank"

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    .line 539
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 544
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 545
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 546
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->addToBackstack(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 550
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->isRedirectUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->clearCache(Z)V

    .line 391
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->setInitialScale(I)V

    .line 392
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->requestFocus(I)Z

    .line 394
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v3, -0x1

    .line 401
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 403
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 404
    iget-object v3, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v3, v2}, Lcom/mobgame/gui/MobGameWebView;->setScrollBarStyle(I)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 406
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 407
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 410
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 412
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Lcom/mobgame/gui/MobGameWebFragment$3;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGameWebFragment$3;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 424
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Lcom/mobgame/gui/MobGameWebFragment$4;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGameWebFragment$4;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 487
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Lcom/mobgame/gui/MobGameWebFragment$5;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGameWebFragment$5;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->setOnScrollChangedListener(Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;)V

    .line 505
    new-instance v0, Lcom/game/sdk/comon/js/JsHandler;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/game/sdk/comon/js/JsHandler;-><init>(Landroid/app/Activity;Lcom/mobgame/gui/MobGameWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    .line 506
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const-string v2, "JsHandler"

    invoke-virtual {v1, v0, v2}, Lcom/mobgame/gui/MobGameWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    const-string v1, "mobGetError"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/js/JsHandler;->mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v2, "post_params"

    .line 513
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 514
    iget-object v2, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v3, "fragment_web"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 518
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/MobGameWebFragment;->postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    .line 528
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->setTag(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private isRedirectUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "isRedirect=true"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "isRedirect=1"

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->stopLoading()V

    .line 168
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/mobgame/gui/MobGameWebFragment;
    .locals 2

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    new-instance v1, Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGameWebFragment;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/mobgame/gui/MobGameWebFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private postUrl(Lcom/mobgame/model/MUrl;)V
    .locals 0

    .line 211
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->postUrl(Ljava/lang/String;)V

    return-void
.end method

.method private postUrl(Ljava/lang/String;)V
    .locals 2

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mobgame/gui/MobGameWebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "game_shared_pref_cookies"

    .line 574
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/mobgame/utils/Preference;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 575
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 576
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 578
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 579
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 584
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getScrollX()I

    move-result v0

    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "webview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getScrollY()I

    move-result v0

    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "webview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_"

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    return-object v0
.end method

.method public getWebViewTag()Ljava/lang/String;
    .locals 2

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v1, "fragment_web"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "_"

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "PaymentWallets/showPaymentWallet"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrlToLoadIfHave()V
    .locals 1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    const-string v0, ""

    .line 592
    iput-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlToLoad:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public loadUrlWithMobHeaders(Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    const-string v1, "Bearer "

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 188
    iget-object v4, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v4}, Lcom/mobgame/gui/MobGameWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/mobgame/gui/MobGameWebFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 191
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Authorization"

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "MOB_AREA_ID"

    .line 193
    invoke-static {v2, v1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MOB_ROLE_ID"

    .line 194
    invoke-static {v2, v4, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "area-id"

    .line 196
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "charactor-id"

    .line 198
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->stopLoading()V

    .line 201
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 203
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 123
    sget p3, Lcom/mobgame/R$layout;->fragment_web:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 639
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 614
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 625
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mobgame.broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 632
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 129
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    :try_start_0
    sget p2, Lcom/mobgame/R$id;->activity_main_swipe_refresh_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    iput-object p2, p0, Lcom/mobgame/gui/MobGameWebFragment;->mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 133
    sget v2, Lcom/mobgame/R$color;->green:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2, v1}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setColorSchemeResources([I)V

    .line 135
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 136
    sget p2, Lcom/mobgame/R$id;->webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobgame/gui/MobGameWebView;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    .line 137
    invoke-direct {p0}, Lcom/mobgame/gui/MobGameWebFragment;->initWebView()V

    .line 138
    iget-boolean p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->isHideSwipe:Z

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    new-instance p2, Lcom/mobgame/gui/MobGameWebFragment$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/MobGameWebFragment$1;-><init>(Lcom/mobgame/gui/MobGameWebFragment;)V

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->mSwipeRefreshLayout:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    invoke-virtual {p1, v3}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobgame/model/MUrl;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, p1, p2, v0}, Lcom/mobgame/gui/MobGameWebFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobgame/model/MUrl;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_0

    .line 245
    iget-object p3, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v0, "url"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string p3, "post_params"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Lcom/mobgame/model/MUrl;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "hl=en"

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    iget-object p2, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mobgame/gui/MobGameWebFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mobgame/gui/MobGameWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGameWebFragment;->postUrl(Lcom/mobgame/model/MUrl;)V

    :goto_1
    return-void
.end method

.method public postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, p2, v0}, Lcom/mobgame/gui/MobGameWebFragment;->postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/mobgame/gui/MobGameWebFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/mobgame/gui/MobGameWebFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public reload()V
    .locals 3

    const-string v0, "reload: url="

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    if-eqz v1, :cond_2

    .line 278
    invoke-virtual {v1}, Lcom/mobgame/gui/MobGameWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:text/html;charset=utf-8;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->urlLoadFail:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->reload()V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "reload: webview url null, cannot reload!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->TAG:Ljava/lang/String;

    const-string v1, "reload: webview null, cannot reload!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment;->eventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    return-void
.end method

.method public setWebViewTag(Ljava/lang/String;)V
    .locals 2

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebView;->setTag(Ljava/lang/Object;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->args:Landroid/os/Bundle;

    const-string v1, "fragment_web"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->stopLoading()V

    return-void
.end method
