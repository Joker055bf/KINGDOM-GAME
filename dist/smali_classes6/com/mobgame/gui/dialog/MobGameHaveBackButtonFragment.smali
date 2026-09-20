.class public Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;
.super Landroid/app/DialogFragment;
.source "MobGameHaveBackButtonFragment.java"


# static fields
.field private static final KEY_POST_PARAMS:Ljava/lang/String; = "post_params"

.field private static final KEY_URL:Ljava/lang/String; = "url"

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
.field private activity:Landroid/app/Activity;

.field private args:Landroid/os/Bundle;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnClose:Landroid/widget/ImageButton;

.field doubleBackToExitPressedOnce:Z

.field private historyBackstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/mobgame/model/MUrl;",
            ">;"
        }
    .end annotation
.end field

.field private jsHandler:Lcom/game/sdk/comon/js/JsHandler;

.field private layoutRoot:Landroid/view/View;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mUrl:Lcom/mobgame/model/MUrl;

.field private progessBar:Landroid/widget/ProgressBar;

.field private webView:Lcom/mobgame/gui/MobGameWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->cachedUrls:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->doubleBackToExitPressedOnce:Z

    return-void
.end method

.method public constructor <init>(Lcom/mobgame/model/MUrl;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->doubleBackToExitPressedOnce:Z

    .line 98
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;-><init>(Lcom/mobgame/model/MUrl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/app/Activity;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->canGoBack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->btnBack:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->progessBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->hideProgressBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->showProgressBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->updateHeaderBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Ljava/util/Stack;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->addToBackstack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Lcom/mobgame/gui/MobGameWebView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    return-object p0
.end method

.method private addToBackstack(Lcom/mobgame/model/MUrl;)V
    .locals 3

    .line 543
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 546
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    .line 548
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isClearHistoryBackstack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 550
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobgame/model/MUrl;

    invoke-virtual {v1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 557
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 558
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->addToBackstack(Lcom/mobgame/model/MUrl;)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 561
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isRedirectUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 569
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private addToBackstack(Ljava/lang/String;)V
    .locals 1

    .line 532
    :try_start_0
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 536
    :cond_0
    invoke-direct {p0, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->addToBackstack(Lcom/mobgame/model/MUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private canGoBack()Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

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

.method private goBack()V
    .locals 1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->historyBackstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->loadUrlWithMobHeaders(Lcom/mobgame/model/MUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private hideProgressBar()V
    .locals 4

    .line 488
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initHeaderBar()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->btnBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$2;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->btnClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$3;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$3;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->clearCache(Z)V

    .line 201
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->setInitialScale(I)V

    .line 202
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView;->setBackgroundColor(I)V

    .line 205
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v2, -0x1

    .line 213
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 219
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 234
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$6;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$6;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 301
    new-instance v0, Lcom/game/sdk/comon/js/JsHandler;

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/game/sdk/comon/js/JsHandler;-><init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    .line 302
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    const-string v2, "JsHandler"

    invoke-virtual {v1, v0, v2}, Lcom/mobgame/gui/MobGameWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->mUrl:Lcom/mobgame/model/MUrl;

    .line 306
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string v1, "post_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 307
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->mUrl:Lcom/mobgame/model/MUrl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 310
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 312
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 316
    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->loadUrlWithMobHeaders(Lcom/mobgame/model/MUrl;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 318
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method private isClearHistoryBackstack(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 505
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "clearHistoryBackstack"

    .line 506
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 511
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private isRedirectUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 519
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "isRedirect"

    .line 520
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private loadUrl(Lcom/mobgame/model/MUrl;)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 331
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->stopLoading()V

    .line 332
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private postUrl(Lcom/mobgame/model/MUrl;)V
    .locals 2

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mobgame/gui/MobGameWebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "game_shared_pref_cookies"

    .line 433
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/mobgame/utils/Preference;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 434
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 435
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 436
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 437
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$7;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$7;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateHeaderBar()V
    .locals 2

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public loadUrlWithMobHeaders(Lcom/mobgame/model/MUrl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Lcom/mobgame/model/MUrl;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "appkey"

    .line 358
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 360
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 361
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->isEcrypted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sign"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 365
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 366
    invoke-static {v0}, Lcom/mobgame/utils/EncryptionUtils;->getSignedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 371
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView;->stopLoading()V

    .line 376
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 378
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->loadUrl(Lcom/mobgame/model/MUrl;)V

    :goto_0
    return-void
.end method

.method public loadUrlWithMobHeaders(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->loadUrlWithMobHeaders(Lcom/mobgame/model/MUrl;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 449
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->goBack()V

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->dismiss()V

    .line 453
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    const-string v1, "shared_pref_show_dashboard"

    invoke-static {v0, v1}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const v0, 0x1030011

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v1, Lcom/mobgame/R$style;->DialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 118
    iget-object p3, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_show_dashboard"

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 119
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    new-instance v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$1;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 134
    sget p3, Lcom/mobgame/R$layout;->fragment_backbutton_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->layoutRoot:Landroid/view/View;

    .line 135
    sget p2, Lcom/mobgame/R$id;->btn_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->btnBack:Landroid/widget/ImageButton;

    .line 136
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->layoutRoot:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->btn_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->btnClose:Landroid/widget/ImageButton;

    .line 137
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->layoutRoot:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->progessBar:Landroid/widget/ProgressBar;

    .line 138
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->layoutRoot:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobgame/gui/MobGameWebView;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    .line 140
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->initHeaderBar()V

    .line 141
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->initWebView()V

    .line 143
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->layoutRoot:Landroid/view/View;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 187
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
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

    .line 404
    invoke-virtual {p0, p1, p2, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

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

    .line 410
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_0

    .line 411
    iget-object p3, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string v0, "url"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->args:Landroid/os/Bundle;

    const-string p3, "post_params"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    .line 415
    :cond_0
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Lcom/mobgame/model/MUrl;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 416
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
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

    .line 420
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

    .line 422
    :cond_1
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->webView:Lcom/mobgame/gui/MobGameWebView;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mobgame/gui/MobGameWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1

    .line 426
    :cond_2
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->postUrl(Lcom/mobgame/model/MUrl;)V

    :goto_1
    return-void
.end method

.method public postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 2
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

    .line 392
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->hasDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mobgame/utils/Constants;->BASE_URL_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    :cond_0
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
