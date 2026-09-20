.class Lcom/applovin/impl/mediation/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/applovin/impl/mediation/d;

.field private final d:Lcom/applovin/impl/mediation/d$c;

.field private final e:Lcom/applovin/mediation/MaxAdFormat;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/applovin/impl/mediation/d$c;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "J",
            "Lcom/applovin/impl/mediation/d;",
            "Lcom/applovin/impl/sdk/p;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p9, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    .line 359
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    .line 360
    iput-object p8, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 361
    iput-object p4, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 362
    iput-object p5, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 363
    iput-object p2, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    .line 364
    iput-object p1, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    .line 365
    iput-object p3, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    .line 366
    iput-wide p6, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    const-string p1, "disable_auto_retries"

    .line 369
    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 371
    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p5}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "auto_refresh_stopped"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    sget-object p1, Lcom/applovin/impl/sdk/c/a;->N:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p9, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    goto :goto_0

    .line 380
    :cond_1
    sget-object p1, Lcom/applovin/impl/sdk/c/a;->N:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p9, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/p;Landroid/content/Context;Lcom/applovin/impl/mediation/d$1;)V
    .locals 0

    .line 331
    invoke-direct/range {p0 .. p10}, Lcom/applovin/impl/mediation/d$b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/d$b;)Ljava/util/Map;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/d$b;)Lcom/applovin/impl/mediation/d$c;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/d$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/d$b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/d$b;)Ljava/util/Map;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/d$b;)Lcom/applovin/mediation/MaxAdFormat;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/d$b;)Ljava/util/Map;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/d$b;)Lcom/applovin/impl/mediation/d;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    return-object p0
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong callback invoked for ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 5

    .line 444
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->O:Lcom/applovin/impl/sdk/c/b;

    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 445
    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

    move-result v0

    iget v1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/d$c;->e(Lcom/applovin/impl/mediation/d$c;)I

    .line 464
    iget-object p2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    .line 466
    new-instance v0, Lcom/applovin/impl/mediation/d$b$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/mediation/d$b$1;-><init>(Lcom/applovin/impl/mediation/d$b;ILjava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    .line 483
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 466
    invoke-static {v0, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 448
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;I)I

    .line 450
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 453
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 455
    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/mediation/MaxErrorImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->c(Lcom/applovin/impl/mediation/d$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setLoadTag(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setRequestLatencyMillis(J)V

    .line 457
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 458
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 9

    .line 387
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/a;

    .line 388
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->c(Lcom/applovin/impl/mediation/d$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->a(J)V

    .line 392
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;I)I

    .line 395
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 400
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->h()Lcom/applovin/impl/mediation/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/g;->e()Lcom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 403
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/impl/mediation/ads/a$a;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    .line 406
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "load"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/impl/mediation/ads/a$a;->onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 417
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->M:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->L:Lcom/applovin/impl/sdk/c/b;

    .line 418
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    .line 419
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 422
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    .line 424
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    sget-object v1, Lcom/applovin/impl/mediation/d$a;->b:Lcom/applovin/impl/mediation/d$a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/d$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "art"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    iget-object v6, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    goto :goto_1

    .line 429
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 435
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Lcom/applovin/impl/mediation/a/a;)V

    .line 436
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void
.end method

.method public onAdRequestStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method
