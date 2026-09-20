.class public Lcom/applovin/impl/adview/d;
.super Lcom/applovin/impl/adview/h;
.source "SourceFile"


# static fields
.field private static c:Landroid/webkit/WebView;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/y;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/impl/sdk/d/d;

.field private e:Lcom/applovin/impl/sdk/ad/e;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/e;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p3}, Lcom/applovin/impl/adview/h;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    .line 81
    iput-object p2, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    .line 82
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const/4 p3, 0x0

    .line 84
    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/d;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/applovin/impl/adview/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/ab;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/ab;-><init>()V

    .line 91
    :goto_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/d;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/applovin/impl/adview/e;->a()Lcom/applovin/impl/adview/b;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 94
    :goto_1
    new-instance v0, Lcom/applovin/impl/adview/c;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/p;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/d;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/d;->setVerticalScrollBarEnabled(Z)V

    .line 97
    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/d;->setHorizontalScrollBarEnabled(Z)V

    const/high16 p1, 0x2000000

    .line 98
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->setScrollBarStyle(I)V

    .line 100
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->fw:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    new-instance p1, Lcom/applovin/impl/adview/f;

    invoke-direct {p1, p2}, Lcom/applovin/impl/adview/f;-><init>(Lcom/applovin/impl/sdk/p;)V

    invoke-virtual {p1}, Lcom/applovin/impl/adview/f;->a()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    .line 105
    :cond_2
    new-instance p1, Lcom/applovin/impl/adview/d$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/d$1;-><init>(Lcom/applovin/impl/adview/d;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    new-instance p1, Lcom/applovin/impl/adview/d$2;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/d$2;-><init>(Lcom/applovin/impl/adview/d;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 42
    sput-object p0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 494
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "{SOURCE}"

    .line 496
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/applovin/impl/adview/d;->c()V

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 511
    new-instance v0, Lcom/applovin/impl/adview/d$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/adview/d$3;-><init>(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;Lcom/applovin/impl/sdk/p;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/c/a;)V
    .locals 9

    .line 456
    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 457
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Rendering webview for VAST ad with resourceContents : "

    const-string v2, "AdWebView"

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {p5}, Lcom/applovin/impl/c/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lcom/applovin/impl/c/a;->q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 461
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v5, p3

    .line 464
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v6, "text/html"

    const/4 v7, 0x0

    const-string v8, ""

    move-object v3, p0

    move-object v4, p2

    .line 465
    invoke-virtual/range {v3 .. v8}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    sget-object p3, Lcom/applovin/impl/sdk/c/b;->eH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 472
    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 473
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    invoke-virtual {p5}, Lcom/applovin/impl/c/a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 478
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    move-object v5, p3

    .line 481
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v6, "text/html"

    const/4 v7, 0x0

    const-string v8, ""

    move-object v3, p0

    move-object v4, p2

    .line 482
    invoke-virtual/range {v3 .. v8}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Rendering webview for VAST ad with resourceURL : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_6
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b()Landroid/webkit/WebView;
    .locals 1

    .line 42
    sget-object v0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b(Lcom/applovin/impl/sdk/ad/e;)V
    .locals 2

    const-string v0, "about:blank"

    .line 278
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->e:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->az()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/d;->setLayerType(ILandroid/graphics/Paint;)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->av()Z

    move-result v0

    .line 293
    invoke-virtual {p0}, Lcom/applovin/impl/adview/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 296
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->ax()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 298
    invoke-static {v0}, Lcom/applovin/impl/adview/d;->setWebContentsDebuggingEnabled(Z)V

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->ay()Lcom/applovin/impl/adview/x;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 304
    invoke-virtual {p0}, Lcom/applovin/impl/adview/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->b()Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 309
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 312
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 318
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 321
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 324
    :cond_5
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->e()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 327
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 330
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 333
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 336
    :cond_7
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 339
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 342
    :cond_8
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 345
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 348
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->i()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 351
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 354
    :cond_a
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->j()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 357
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 360
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->k()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 363
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 366
    :cond_c
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->l()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 369
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 372
    :cond_d
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->m()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 375
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 378
    :cond_e
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 380
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 383
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 387
    :cond_f
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 389
    invoke-virtual {p1}, Lcom/applovin/impl/adview/x;->n()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 392
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_10
    return-void
.end method

.method private static c()V
    .locals 4

    .line 549
    sget-object v0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    const-string v1, "postbacks"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/Utils;->tryToCreateWebView(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    return-void

    .line 554
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 555
    sget-object v0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    const-string/jumbo v1, "text/html"

    const-string v2, "UTF-8"

    const-string v3, "<html><head>\n<script type=\"text/javascript\">\n    window.al_firePostback = function(postback) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = postback;\n    }, 100);\n};\n</script></head>\n<body></body></html>"

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-object v0, Lcom/applovin/impl/adview/d;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/applovin/impl/adview/d$4;

    invoke-direct {v1}, Lcom/applovin/impl/adview/d$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/e;)V
    .locals 10

    const-string v0, "Rendering WebView for iFrame VAST ad with resourceContents: "

    const-string v1, "Rendering WebView for HTML VAST ad with resourceContents: "

    .line 134
    iget-boolean v2, p0, Lcom/applovin/impl/adview/d;->f:Z

    const-string v3, "AdWebView"

    if-nez v2, :cond_17

    .line 136
    iput-object p1, p0, Lcom/applovin/impl/adview/d;->e:Lcom/applovin/impl/sdk/ad/e;

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/d;->b(Lcom/applovin/impl/sdk/ad/e;)V

    .line 143
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/d;->setVisibility(I)V

    .line 150
    :cond_0
    instance-of v2, p1, Lcom/applovin/impl/sdk/ad/a;

    if-eqz v2, :cond_2

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 156
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->q()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 163
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "text/html"

    const/4 v8, 0x0

    const-string v9, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinAd rendered"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 167
    :cond_2
    instance-of v2, p1, Lcom/applovin/impl/c/a;

    if-eqz v2, :cond_18

    .line 169
    move-object v9, p1

    check-cast v9, Lcom/applovin/impl/c/a;

    .line 170
    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->aQ()Lcom/applovin/impl/c/d;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 174
    invoke-virtual {v2}, Lcom/applovin/impl/c/d;->b()Lcom/applovin/impl/c/i;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/applovin/impl/c/i;->b()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v4, ""

    :goto_0
    move-object v5, v4

    .line 178
    invoke-virtual {v2}, Lcom/applovin/impl/c/i;->c()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->aU()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 251
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "Unable to load companion ad. No resources provided."

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v6

    sget-object v8, Lcom/applovin/impl/c/i$a;->b:Lcom/applovin/impl/c/i$a;

    if-ne v6, v8, :cond_8

    .line 185
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "Rendering WebView for static VAST ad"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    invoke-direct {p0, v0, v5}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    iget-object v1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v3, v0

    .line 196
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 198
    :cond_8
    invoke-virtual {v2}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v6

    sget-object v8, Lcom/applovin/impl/c/i$a;->d:Lcom/applovin/impl/c/i$a;

    if-ne v6, v8, :cond_e

    .line 201
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    invoke-direct {p0, v7, v4}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v4, v0

    .line 206
    :cond_9
    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->q()Z

    move-result v0

    if-nez v0, :cond_a

    .line 208
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    move-object v3, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 215
    :cond_c
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 217
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "Preparing to load HTML VAST ad resourceUri"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_d
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/c/a;)V

    goto/16 :goto_3

    .line 221
    :cond_e
    invoke-virtual {v2}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/c/i$a;->c:Lcom/applovin/impl/c/i$a;

    if-ne v1, v2, :cond_14

    .line 224
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 226
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "Preparing to load iFrame VAST ad resourceUri"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/c/a;)V

    goto/16 :goto_3

    .line 230
    :cond_10
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 232
    invoke-direct {p0, v7, v4}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v4, v1

    .line 235
    :cond_11
    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v9}, Lcom/applovin/impl/c/a;->q()Z

    move-result v1

    if-nez v1, :cond_12

    .line 237
    iget-object v1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    :cond_12
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_13
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aw()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    move-object v3, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 246
    :cond_14
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "Failed to render VAST companion ad of invalid type"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 256
    :cond_15
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "No companion ad provided."

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_16

    .line 262
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_16
    const-string p1, "null"

    .line 263
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to render AppLovin ad ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const-string p1, "Ad can not be loaded in a destroyed webview"

    .line 268
    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "AdWebView"

    const-string v1, "Forwarding \""

    .line 408
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" to ad template"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 415
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/y;

    const-string v2, "Unable to forward to template"

    invoke-virtual {v1, v0, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 417
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/applovin/impl/adview/d;->f:Z

    .line 425
    invoke-super {p0}, Lcom/applovin/impl/adview/h;->destroy()V

    return-void
.end method

.method getCurrentAd()Lcom/applovin/impl/sdk/ad/e;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->e:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public getStatsManagerHelper()Lcom/applovin/impl/sdk/d/d;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->d:Lcom/applovin/impl/sdk/d/d;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method

.method public setStatsManagerHelper(Lcom/applovin/impl/sdk/d/d;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/applovin/impl/adview/d;->d:Lcom/applovin/impl/sdk/d/d;

    return-void
.end method
