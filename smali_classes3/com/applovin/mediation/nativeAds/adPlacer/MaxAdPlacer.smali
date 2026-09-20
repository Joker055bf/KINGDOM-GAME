.class public Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/nativeAds/a/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

.field private b:Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

.field private final c:Lcom/applovin/impl/mediation/nativeAds/a/a;

.field private final d:Lcom/applovin/impl/mediation/nativeAds/a/b;

.field private e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

.field protected final logger:Lcom/applovin/impl/sdk/y;

.field protected final sdk:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->ZERO:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    .line 89
    iget-object p2, p2, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/p;

    iput-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->sdk:Lcom/applovin/impl/sdk/p;

    .line 90
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    .line 91
    new-instance v0, Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-direct {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;)V

    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    .line 92
    new-instance v0, Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->getMaxPreloadedAdCount()I

    move-result v2

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/applovin/impl/mediation/nativeAds/a/b;-><init>(Ljava/lang/String;ILandroid/content/Context;Lcom/applovin/impl/mediation/nativeAds/a/b$a;)V

    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    .line 94
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Initializing ad placer with settings: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MaxAdPlacer"

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;)Lcom/applovin/impl/mediation/nativeAds/a/a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 436
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/nativeAds/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 438
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Placing ad at position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaxAdPlacer"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/nativeAds/a/b;->d()Lcom/applovin/mediation/MaxAd;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(Lcom/applovin/mediation/MaxAd;I)V

    .line 443
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;->onAdLoaded(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 455
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 457
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(I)Lcom/applovin/mediation/MaxAd;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/mediation/nativeAds/a/b;->a(Lcom/applovin/mediation/MaxAd;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 465
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 467
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ads from stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaxAdPlacer"

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    if-eqz p2, :cond_2

    .line 470
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 472
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;->onAdRemoved(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;)Lcom/applovin/impl/mediation/nativeAds/a/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    return-object p0
.end method


# virtual methods
.method public clearAds()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->b()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$1;

    invoke-direct {v1, p0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$1;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a(Ljava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearTrailingAds(I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->d(I)Ljava/util/Collection;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$2;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;ILjava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a(Ljava/util/Collection;Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "MaxAdPlacer"

    const-string v2, "Destroying ad placer"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->clearAds()V

    .line 104
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/nativeAds/a/b;->a()V

    return-void
.end method

.method public getAdItemId(I)J
    .locals 2

    .line 207
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->isFilledPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(I)Lcom/applovin/mediation/MaxAd;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    neg-int p1, p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAdSize(II)Lcom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 4

    .line 230
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->isFilledPosition(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    sget-object v1, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->ZERO:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x168

    :goto_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 237
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(I)Lcom/applovin/mediation/MaxAd;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/mediation/a/d;

    const-string/jumbo v1, "small_template_1"

    .line 238
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 241
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result p1

    goto :goto_2

    :cond_2
    const/16 p1, 0x78

    .line 242
    :goto_2
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-direct {v0, p2, p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_3
    const-string v1, "medium_template_1"

    .line 244
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 247
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result p1

    int-to-double v0, p1

    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    goto :goto_3

    :cond_4
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 248
    :goto_3
    new-instance p1, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    int-to-double v2, p2

    div-double/2addr v2, v0

    double-to-int v0, v2

    invoke-direct {p1, p2, v0}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 254
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    return-object p1

    .line 256
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->C()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 259
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->C()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getMainView()Landroid/view/View;

    move-result-object p1

    .line 260
    new-instance p2, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object p2

    .line 266
    :cond_7
    sget-object p1, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->ZERO:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    return-object p1
.end method

.method public getAdjustedCount(I)I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->e(I)I

    move-result p1

    return p1
.end method

.method public getAdjustedPosition(I)I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->f(I)I

    move-result p1

    return p1
.end method

.method public getOriginalPosition(I)I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->g(I)I

    move-result p1

    return p1
.end method

.method public insertItem(I)V
    .locals 3

    .line 391
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inserting item at position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaxAdPlacer"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->h(I)V

    return-void
.end method

.method public isAdPosition(I)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(I)Z

    move-result p1

    return p1
.end method

.method public isFilledPosition(I)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->b(I)Z

    move-result p1

    return p1
.end method

.method public loadAds()V
    .locals 3

    .line 146
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "MaxAdPlacer"

    const-string v2, "Loading ads"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/nativeAds/a/b;->c()V

    return-void
.end method

.method public moveItem(II)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/mediation/nativeAds/a/a;->b(II)V

    return-void
.end method

.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;->onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V

    :cond_0
    return-void
.end method

.method public onNativeAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;->onAdClicked(Lcom/applovin/mediation/MaxAd;)V

    :cond_0
    return-void
.end method

.method public onNativeAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 2

    .line 492
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native ad failed to load: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MaxAdPlacer"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNativeAdLoaded()V
    .locals 3

    .line 485
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "MaxAdPlacer"

    const-string v2, "Native ad enqueued"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a()V

    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .line 403
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->isFilledPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 407
    :goto_0
    new-instance v1, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$3;

    invoke-direct {v1, p0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$3;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;I)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a(Ljava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderAd(ILandroid/view/ViewGroup;)V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(I)Lcom/applovin/mediation/MaxAd;

    move-result-object v0

    const-string v1, "MaxAdPlacer"

    if-nez v0, :cond_1

    .line 280
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "An ad is not available for position: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 284
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/mediation/a/d;

    .line 285
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/d;->C()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 288
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using pre-rendered ad at position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->b:Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    const-string v3, "Unable to render ad at position: "

    if-eqz v2, :cond_8

    .line 295
    new-instance v2, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v4, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->b:Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    .line 296
    iget-object v4, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->d:Lcom/applovin/impl/mediation/nativeAds/a/b;

    invoke-virtual {v4, v2, v0}, Lcom/applovin/impl/mediation/nativeAds/a/b;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/mediation/MaxAd;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rendered ad at position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_1
    if-ltz p1, :cond_6

    .line 315
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    instance-of v0, v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    if-eqz v0, :cond_5

    .line 318
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 323
    :cond_6
    invoke-virtual {v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 325
    invoke-virtual {v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    const/4 p1, -0x1

    .line 329
    invoke-virtual {p2, v2, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    .line 307
    :cond_8
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". If you\'re using a custom ad template, check that nativeAdViewBinder is set."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setAdSize(II)V
    .locals 1

    .line 116
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-direct {v0, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a:Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    return-void
.end method

.method public setListener(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->e:Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer$Listener;

    return-void
.end method

.method public setNativeAdViewBinder(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->b:Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    return-void
.end method

.method public updateFillablePositions(II)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->c:Lcom/applovin/impl/mediation/nativeAds/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(II)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->a()V

    :cond_0
    return-void
.end method
