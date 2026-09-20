.class public Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;
.super Lcom/applovin/impl/mediation/ads/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/a/d$a;
.implements Lcom/applovin/impl/sdk/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE:Ljava/lang/String; = "ad_request_type"


# instance fields
.field private final a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/applovin/impl/mediation/d$a;

.field private e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/mediation/nativeAds/MaxNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "MaxNativeAdLoader"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/applovin/impl/mediation/ads/a;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 48
    new-instance p1, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;-><init>(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$1;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    .line 51
    sget-object p1, Lcom/applovin/impl/mediation/d$a;->a:Lcom/applovin/impl/mediation/d$a;

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->d:Lcom/applovin/impl/mediation/d$a;

    .line 55
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->f:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->g:Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created new MaxNativeAdLoader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;)Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 2

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/applovin/impl/mediation/a/d;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->V()Lcom/applovin/impl/sdk/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->G()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->V()Lcom/applovin/impl/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/d$a;)Z

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/a/d;->a(Lcom/applovin/impl/mediation/a/d$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/impl/mediation/a/d;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/impl/mediation/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/impl/mediation/a/d;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/impl/mediation/a/d;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 2

    .line 367
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/b;->b()V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/impl/mediation/a/d;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V
    .locals 1

    .line 330
    invoke-virtual {p2, p1}, Lcom/applovin/impl/mediation/a/d;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    .line 332
    invoke-virtual {p0, p2}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/impl/mediation/a/a;)V

    .line 334
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$2;-><init>(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/impl/mediation/a/d;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    .line 355
    invoke-virtual {p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->shouldPrepareViewForInteractionOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/sdk/e/z;

    iget-object p3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, p3, v0}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object p3, Lcom/applovin/impl/sdk/e/o$a;->k:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 2

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->f:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;)Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    .line 207
    invoke-super {p0}, Lcom/applovin/impl/mediation/ads/a;->destroy()V

    return-void
.end method

.method public destroy(Lcom/applovin/mediation/MaxAd;)V
    .locals 4

    .line 212
    instance-of v0, p1, Lcom/applovin/impl/mediation/a/d;

    if-eqz v0, :cond_5

    .line 214
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/d;

    .line 215
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Native ad ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") has already been destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->C()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/ads/b;->c()Lcom/applovin/impl/mediation/a/d;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->recycle()V

    .line 233
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 236
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/ads/b;->a()V

    .line 239
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->V()Lcom/applovin/impl/sdk/d;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 241
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->V()Lcom/applovin/impl/sdk/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/sdk/ad/g;)V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->J()V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    .line 249
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->au()Lcom/applovin/impl/mediation/d;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/mediation/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroy failed on non-native ad("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public handleNativeAdViewRendered(Lcom/applovin/mediation/MaxAd;)V
    .locals 2

    .line 163
    check-cast p1, Lcom/applovin/impl/mediation/a/d;

    .line 164
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object p1

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string v1, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;

    move-result-object p1

    if-nez p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string v1, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...)."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 178
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/ads/b;->b()V

    return-void
.end method

.method public loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 11

    .line 69
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading native ad for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' into \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and notifying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->extraParameters:Ljava/util/Map;

    if-eqz p1, :cond_1

    const-string v1, "custom_ad_view"

    goto :goto_0

    :cond_1
    const-string v1, "no_ad_view"

    :goto_0
    const-string v2, "integration_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-direct {p0, v4, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Ljava/lang/String;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    .line 79
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->adUnitId:Ljava/lang/String;

    sget-object v5, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v6, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->d:Lcom/applovin/impl/mediation/d$a;

    iget-object v7, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->localExtraParameters:Ljava/util/Map;

    iget-object v8, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->extraParameters:Ljava/util/Map;

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    invoke-virtual/range {v2 .. v10}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadAd(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/d$a;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public onAdExpired(Lcom/applovin/impl/sdk/ad/g;)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad expired for ad unit id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MaxNativeAdListener.onNativeAdExpired(nativeAd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    check-cast p1, Lcom/applovin/impl/mediation/a/d;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;Lcom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public onAdExpiredOld(Lcom/applovin/impl/mediation/a/d;)V
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->onAdExpired(Lcom/applovin/impl/sdk/ad/g;)V

    return-void
.end method

.method public registerClickableViews(Ljava/util/List;Landroid/view/ViewGroup;Lcom/applovin/mediation/MaxAd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lcom/applovin/mediation/MaxAd;",
            ")V"
        }
    .end annotation

    .line 122
    check-cast p3, Lcom/applovin/impl/mediation/a/d;

    .line 123
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string p3, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed."

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/applovin/impl/a/a/a;->a(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, p3}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/impl/mediation/a/a;)V

    .line 134
    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->setClickableViews(Ljava/util/List;)V

    .line 135
    new-instance v1, Lcom/applovin/impl/mediation/ads/b;

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a:Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, p3, p2, v2, v3}, Lcom/applovin/impl/mediation/ads/b;-><init>(Lcom/applovin/impl/mediation/a/d;Landroid/view/ViewGroup;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/impl/sdk/p;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->setAdViewTracker(Lcom/applovin/impl/mediation/ads/b;)V

    .line 137
    new-instance p3, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$1;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$1;-><init>(Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 151
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->shouldPrepareViewForInteractionOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    invoke-static {p3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/sdk/e/z;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, v0, p3}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object p3, Lcom/applovin/impl/sdk/e/o$a;->k:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    :goto_0
    return-void
.end method

.method public render(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/mediation/MaxAd;)Z
    .locals 4

    .line 84
    instance-of v0, p2, Lcom/applovin/impl/mediation/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string p2, "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string p2, "Failed to render native ad. `adView` to render cannot be null."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 96
    :cond_1
    check-cast p2, Lcom/applovin/impl/mediation/a/d;

    .line 97
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    if-nez v0, :cond_3

    .line 100
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string v0, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/a;->E:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    const-string p2, "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 111
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/impl/mediation/a/d;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/Utils;->maybeLogCustomDataSizeLimit(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public setLocalExtraParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 260
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/a;->setLocalExtraParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ad_request_type"

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/applovin/impl/mediation/d$a;

    if-eqz p1, :cond_0

    .line 264
    check-cast p2, Lcom/applovin/impl/mediation/d$a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->d:Lcom/applovin/impl/mediation/d$a;

    :cond_0
    return-void
.end method

.method public setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting native ad listener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaxNativeAdLoader{adUnitId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', nativeAdListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->e:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revenueListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl;->revenueListener:Lcom/applovin/mediation/MaxAdRevenueListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
