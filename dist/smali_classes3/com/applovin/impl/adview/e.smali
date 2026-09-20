.class public Lcom/applovin/impl/adview/e;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:Lcom/applovin/impl/adview/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    .line 84
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    .line 85
    iput-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    return-object p0
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/adview/d;)V
    .locals 5

    const-string v0, "n"

    .line 458
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AdWebView"

    if-eqz v1, :cond_6

    const-string v1, "load_type"

    .line 462
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "external"

    .line 463
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Loading new page externally: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    invoke-virtual {p2}, Lcom/applovin/impl/adview/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/Utils;->openUri(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/p;)Z

    .line 469
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->g()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    .line 470
    invoke-virtual {p2}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    .line 471
    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->r()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    .line 469
    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/k;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "internal"

    .line 473
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading new page in WebView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    const-string v0, "bg_color"

    .line 481
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 484
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/d;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const-string p1, "in_app"

    .line 487
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 489
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Loading new page in slide-up webview: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/adview/e$1;

    invoke-direct {p2, p0, v0}, Lcom/applovin/impl/adview/e$1;-><init>(Lcom/applovin/impl/adview/e;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    .line 521
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/applovin/sdk/AppLovinWebViewActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    iget-object p2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdk_key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 523
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 528
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Could not find load type in original uri"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Could not find url to load from query in original uri"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/e;)V
    .locals 2

    const-string v0, "n"

    .line 578
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "clcode"

    .line 582
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/e;->getClCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fire_from_webview"

    .line 583
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 585
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->al()Lcom/applovin/impl/sdk/network/k;

    move-result-object v0

    invoke-static {}, Lcom/applovin/impl/sdk/network/j;->o()Lcom/applovin/impl/sdk/network/j$a;

    move-result-object v1

    .line 586
    invoke-virtual {v1, p2}, Lcom/applovin/impl/sdk/network/j$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/j$a;

    move-result-object p2

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/network/j$a;->a(Z)Lcom/applovin/impl/sdk/network/j$a;

    move-result-object p2

    .line 588
    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/network/j$a;->d(Z)Lcom/applovin/impl/sdk/network/j$a;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j$a;->a()Lcom/applovin/impl/sdk/network/j;

    move-result-object p1

    .line 585
    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/network/k;->a(Lcom/applovin/impl/sdk/network/j;)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find postback url to fire from query in original uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdWebView"

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/adview/d;Landroid/net/Uri;)V
    .locals 3

    .line 551
    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->getCurrentAd()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/b;->r()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 557
    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->getStatsManagerHelper()Lcom/applovin/impl/sdk/d/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/d;->b()V

    .line 563
    :cond_0
    instance-of v2, v0, Lcom/applovin/impl/c/a;

    if-eqz v2, :cond_1

    .line 565
    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/c/a;

    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/a/g;->o()V

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p2, p1}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/c/a;Lcom/applovin/impl/adview/d;)V
    .locals 2

    .line 539
    invoke-virtual {p1}, Lcom/applovin/impl/c/a;->aQ()Lcom/applovin/impl/c/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/applovin/impl/c/d;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/b;->q()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;Lcom/applovin/impl/sdk/p;)V

    .line 544
    invoke-virtual {p1}, Lcom/applovin/impl/c/d;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/d;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->l()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->k()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/applovin/impl/adview/b;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    return-object v0
.end method

.method protected a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    .line 260
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v2, "AdWebView"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing click on ad URL \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_23

    .line 264
    instance-of v0, p1, Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_23

    .line 266
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 267
    check-cast p1, Lcom/applovin/impl/adview/d;

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 273
    iget-object v6, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v6}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v6

    if-nez v6, :cond_3

    .line 278
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Unable to process click, ad not found!"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 283
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->getLastClickLocation()Landroid/graphics/PointF;

    move-result-object v7

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v1

    .line 286
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->K()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    move v8, v1

    :goto_0
    const-string v9, "applovin"

    .line 294
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const-string v9, "com.applovin.sdk"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const-string v3, "/adservice/close_ad"

    .line 296
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 298
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "enable_close_URL_ad_value"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 299
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "close_url"

    .line 301
    invoke-virtual {v6, p1, p2}, Lcom/applovin/impl/sdk/ad/e;->setMaxAdValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    :cond_5
    invoke-direct {p0}, Lcom/applovin/impl/adview/e;->b()V

    goto/16 :goto_2

    :cond_6
    const-string v3, "/adservice/expand_ad"

    .line 306
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 308
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->J()Z

    move-result p2

    if-eqz p2, :cond_8

    if-nez v7, :cond_8

    .line 310
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Skipping expand command without user interaction"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1

    .line 314
    :cond_8
    invoke-virtual {p1}, Lcom/applovin/impl/adview/d;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/e;->a(Landroid/graphics/PointF;)V

    goto/16 :goto_2

    :cond_9
    const-string v3, "/adservice/contract_ad"

    .line 316
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 318
    invoke-direct {p0}, Lcom/applovin/impl/adview/e;->c()V

    goto/16 :goto_2

    :cond_a
    const-string v3, "/adservice/no_op"

    .line 320
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return v1

    :cond_b
    const-string v3, "/adservice/load_url"

    .line 324
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 326
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->J()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez v7, :cond_d

    .line 328
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Skipping URL load command without user interaction"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v1

    .line 332
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/adview/e;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/d;)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "/adservice/track_click_now"

    .line 334
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 336
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->J()Z

    move-result p2

    if-eqz p2, :cond_10

    if-nez v7, :cond_10

    .line 338
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Skipping click tracking command without user interaction"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return v1

    .line 342
    :cond_10
    instance-of p2, v6, Lcom/applovin/impl/c/a;

    if-eqz p2, :cond_11

    .line 344
    check-cast v6, Lcom/applovin/impl/c/a;

    invoke-direct {p0, v6, p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/c/a;Lcom/applovin/impl/adview/d;)V

    goto/16 :goto_2

    .line 348
    :cond_11
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/d;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_12
    const-string v3, "/adservice/deeplink"

    .line 352
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 354
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->J()Z

    move-result p2

    if-eqz p2, :cond_14

    if-nez v7, :cond_14

    .line 356
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "Skipping deep link plus command without user interaction"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return v1

    .line 361
    :cond_14
    instance-of p2, v6, Lcom/applovin/impl/c/a;

    if-eqz p2, :cond_15

    check-cast v6, Lcom/applovin/impl/c/a;

    invoke-virtual {v6}, Lcom/applovin/impl/c/a;->aT()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 363
    invoke-direct {p0, v6, p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/c/a;Lcom/applovin/impl/adview/d;)V

    goto/16 :goto_2

    .line 368
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/d;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_16
    const-string p1, "/adservice/postback"

    .line 371
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 373
    invoke-direct {p0, v0, v6}, Lcom/applovin/impl/adview/e;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/e;)V

    goto/16 :goto_2

    .line 375
    :cond_17
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string p1, "/video_began"

    .line 377
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_18

    const-string p1, "duration"

    .line 379
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/Utils;->tryParseDouble(Ljava/lang/String;D)D

    move-result-wide p1

    .line 380
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/adview/g;->a(D)V

    goto/16 :goto_2

    :cond_18
    const-string p1, "/video_completed"

    .line 382
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 384
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/adview/g;->g_()V

    goto/16 :goto_2

    :cond_19
    const-string p1, "/video_progress"

    .line 386
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "percent_viewed"

    .line 388
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/Utils;->tryParseDouble(Ljava/lang/String;D)D

    move-result-wide p1

    .line 389
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/adview/g;->b(D)V

    goto/16 :goto_2

    :cond_1a
    const-string p1, "/video_waiting"

    .line 391
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 393
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/adview/g;->h_()V

    goto/16 :goto_2

    :cond_1b
    const-string p1, "/video_resumed"

    .line 395
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 397
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->h()Lcom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/adview/g;->c()V

    goto/16 :goto_2

    .line 404
    :cond_1c
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URL: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_1d
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Path: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1e
    if-eqz v8, :cond_23

    .line 413
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->aA()Ljava/util/List;

    move-result-object p2

    .line 414
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->aB()Ljava/util/List;

    move-result-object v5

    .line 416
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 417
    :cond_1f
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_1

    .line 432
    :cond_20
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "URL is not whitelisted - bypassing click"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 420
    :cond_21
    :goto_1
    instance-of p2, v6, Lcom/applovin/impl/c/a;

    if-eqz p2, :cond_22

    check-cast v6, Lcom/applovin/impl/c/a;

    invoke-virtual {v6}, Lcom/applovin/impl/c/a;->aT()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 422
    invoke-direct {p0, v6, p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/c/a;Lcom/applovin/impl/adview/d;)V

    goto :goto_2

    .line 427
    :cond_22
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/d;Landroid/net/Uri;)V

    :cond_23
    :goto_2
    return v1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/b;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received error with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " with description \\\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\\\' for URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 156
    iget-object p3, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->X()Lcom/applovin/impl/sdk/d/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object p3

    sget-object p4, Lcom/applovin/impl/sdk/d/b;->y:Lcom/applovin/impl/sdk/d/b;

    .line 157
    invoke-virtual {p3, p4, p2}, Lcom/applovin/impl/sdk/d/c$a;->a(Lcom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object p3

    .line 158
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/d/c$a;->a()V

    .line 161
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " for ad: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 140
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/applovin/impl/adview/e;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 171
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->X()Lcom/applovin/impl/sdk/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/d/b;->z:Lcom/applovin/impl/sdk/d/b;

    .line 175
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/c$a;->a(Lcom/applovin/impl/sdk/d/b;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/c$a;->a()V

    .line 179
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received HTTP error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "for url: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and ad: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 188
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received SSL error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 193
    iget-object p3, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->X()Lcom/applovin/impl/sdk/d/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object p3

    sget-object v0, Lcom/applovin/impl/sdk/d/b;->B:Lcom/applovin/impl/sdk/d/b;

    .line 194
    invoke-virtual {p3, v0, p2}, Lcom/applovin/impl/sdk/d/c$a;->a(Lcom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object p3

    .line 195
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/d/c$a;->a()V

    .line 197
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for ad: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.applovin.render_process_gone"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    .line 208
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Render process gone for ad: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Process did crash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdWebView"

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->X()Lcom/applovin/impl/sdk/d/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/d/b;->A:Lcom/applovin/impl/sdk/d/b;

    .line 217
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/d/c$a;->a(Lcom/applovin/impl/sdk/d/b;)Lcom/applovin/impl/sdk/d/c$a;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/c$a;->a()V

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->fq:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ft:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    .line 226
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-eqz p1, :cond_4

    .line 231
    iget-object p2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/b;->s()Lcom/applovin/impl/adview/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 233
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->f()V

    .line 235
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->b()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 239
    iget-object p2, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 240
    iget-object p1, p0, Lcom/applovin/impl/adview/e;->c:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->e()V

    :cond_4
    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 97
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/adview/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 104
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/adview/e;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "AdWebView"

    const-string v0, "No url found for request"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/adview/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
