.class public Lcom/applovin/impl/sdk/nativeAd/e;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/nativeAd/a$a;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/String;

.field private l:Landroid/net/Uri;

.field private m:Landroid/net/Uri;

.field private n:Lcom/applovin/impl/c/a;

.field private o:Landroid/net/Uri;

.field private p:Landroid/net/Uri;

.field private q:Landroid/net/Uri;

.field private r:Landroid/net/Uri;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskRenderNativeAd"

    .line 74
    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    const-string p4, ""

    .line 50
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->d:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->j:Ljava/lang/Double;

    .line 54
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->k:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    .line 56
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->m:Landroid/net/Uri;

    .line 58
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    .line 59
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Landroid/net/Uri;

    .line 60
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->q:Landroid/net/Uri;

    .line 61
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Landroid/net/Uri;

    .line 62
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    .line 63
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    .line 64
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    .line 65
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->v:Ljava/util/List;

    .line 66
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->w:Ljava/util/List;

    .line 67
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->x:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    .line 77
    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lorg/json/JSONObject;

    .line 78
    iput-object p3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 428
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 432
    new-instance v2, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, v0, v1, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->d:Ljava/lang/String;

    .line 433
    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->i:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->k:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->j:Ljava/lang/Double;

    .line 437
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setStarRating(Ljava/lang/Double;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    .line 438
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->m:Landroid/net/Uri;

    .line 439
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setMainImageUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    .line 440
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Lcom/applovin/impl/c/a;

    .line 441
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setVastAd(Lcom/applovin/impl/c/a;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Landroid/net/Uri;

    .line 442
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->q:Landroid/net/Uri;

    .line 443
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Landroid/net/Uri;

    .line 444
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationBackupUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    .line 445
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickTrackingUrls(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    .line 446
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setJsTrackers(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    .line 447
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setImpressionRequests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->v:Ljava/util/List;

    .line 448
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->w:Ljava/util/List;

    .line 449
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC100Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->x:Ljava/util/List;

    .line 450
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableVideo50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->build()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/e;->b()V

    .line 455
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting cache task for type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, v0, v2, p0}, Lcom/applovin/impl/sdk/nativeAd/a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/nativeAd/a$a;)V

    .line 459
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 502
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    const/4 v1, -0x6

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoadFailed(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "Processed click tracking URLs: "

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "url"

    const/4 v2, 0x0

    .line 378
    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->q:Landroid/net/Uri;

    .line 382
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processed click destination URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/nativeAd/e;->q:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "fallback"

    .line 385
    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Landroid/net/Uri;

    .line 389
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processed click destination backup URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "clicktrackers"

    .line 392
    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 402
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v2, "Failed to render click tracking URLs"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/nativeAd/e;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 1

    .line 472
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/e$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e$1;-><init>(Lcom/applovin/impl/sdk/nativeAd/e;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/nativeAd/e;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/nativeAd/e;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v2, "Successfully cached and loaded ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v2, "VAST ad rendered successfully"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    check-cast p1, Lcom/applovin/impl/c/a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Lcom/applovin/impl/c/a;

    .line 414
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 420
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v1, "VAST ad failed to render"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v6, p0

    .line 84
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "privacy_icon_url"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    .line 87
    :cond_0
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "privacy_url"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->p:Landroid/net/Uri;

    .line 91
    :cond_1
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "ortb_response"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_11

    :cond_2
    const-string/jumbo v1, "version"

    .line 100
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "value"

    .line 101
    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    iget-object v4, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Rendering native ad for oRTB version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "native"

    .line 105
    invoke-static {v0, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "link"

    .line 108
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 109
    invoke-direct {v6, v4}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lorg/json/JSONObject;)V

    const-string v4, "assets"

    .line 112
    invoke-static {v0, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 113
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_10

    :cond_4
    const-string v7, ""

    const/4 v8, 0x0

    .line 123
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    const-string/jumbo v11, "url"

    const/4 v12, 0x3

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-ge v8, v9, :cond_1e

    .line 125
    invoke-static {v4, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v5, "title"

    .line 127
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 129
    invoke-static {v9, v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v9, "text"

    .line 130
    invoke-static {v5, v9, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->d:Ljava/lang/String;

    .line 132
    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v9, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Processed title: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/applovin/impl/sdk/nativeAd/e;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 134
    :cond_5
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 137
    invoke-static {v9, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 138
    invoke-direct {v6, v5}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_7

    :cond_6
    const-string v5, "img"

    .line 140
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    const-string/jumbo v10, "type"

    const-string v13, "id"

    if-eqz v16, :cond_10

    .line 142
    invoke-static {v9, v13, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 144
    invoke-static {v9, v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 145
    invoke-static {v5, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    .line 146
    invoke-static {v5, v11, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eq v10, v14, :cond_f

    if-ne v12, v13, :cond_7

    goto/16 :goto_2

    :cond_7
    if-eq v10, v12, :cond_e

    const/4 v10, 0x2

    if-ne v10, v13, :cond_8

    goto/16 :goto_1

    .line 160
    :cond_8
    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v12, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unrecognized image: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v9, "w"

    .line 162
    invoke-static {v5, v9, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "h"

    .line 163
    invoke-static {v5, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    if-lez v9, :cond_d

    if-lez v5, :cond_d

    int-to-float v10, v9

    int-to-float v12, v5

    div-float/2addr v10, v12

    float-to-double v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v12, v14

    const-string v12, "..."

    const-string/jumbo v13, "x"

    if-lez v10, :cond_b

    .line 171
    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v14, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "Inferring main image from "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v14, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_a
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->m:Landroid/net/Uri;

    goto/16 :goto_7

    .line 176
    :cond_b
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Inferring icon image from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_c
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    goto/16 :goto_7

    .line 182
    :cond_d
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v9, "Skipping..."

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 155
    :cond_e
    :goto_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->m:Landroid/net/Uri;

    .line 156
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed main image URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->m:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 150
    :cond_f
    :goto_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    .line 151
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed icon URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v2, "video"

    .line 186
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x0

    .line 188
    invoke-static {v9, v2, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v7, "vasttag"

    .line 189
    invoke-static {v2, v7, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 193
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v9, "Processed VAST video"

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 197
    :cond_11
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring invalid \"vasttag\" for video: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    const-string v2, "data"

    .line 200
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 202
    invoke-static {v9, v13, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    const/4 v11, 0x0

    .line 204
    invoke-static {v9, v2, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 205
    invoke-static {v2, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    .line 206
    invoke-static {v2, v3, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v10, v14, :cond_1b

    const/16 v11, 0x8

    if-ne v5, v11, :cond_13

    goto/16 :goto_6

    :cond_13
    const/4 v11, 0x2

    if-eq v10, v11, :cond_1a

    const/4 v11, 0x4

    if-ne v5, v11, :cond_14

    goto/16 :goto_5

    :cond_14
    const/16 v11, 0xc

    if-eq v10, v11, :cond_19

    const/4 v11, 0x5

    if-ne v5, v11, :cond_15

    goto/16 :goto_4

    :cond_15
    if-eq v10, v12, :cond_17

    const/4 v10, 0x6

    if-ne v5, v10, :cond_16

    goto :goto_3

    .line 241
    :cond_16
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skipping unsupported data: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    :goto_3
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 229
    invoke-static {v2, v9, v10}, Lcom/applovin/impl/sdk/utils/Utils;->tryParseDouble(Ljava/lang/String;D)D

    move-result-wide v11

    cmpl-double v5, v11, v9

    if-nez v5, :cond_18

    .line 232
    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v9, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Received invalid star rating: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 236
    :cond_18
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->j:Ljava/lang/Double;

    .line 237
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed star rating: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->j:Ljava/lang/Double;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 223
    :cond_19
    :goto_4
    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->k:Ljava/lang/String;

    .line 224
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed cta: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->k:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 217
    :cond_1a
    :goto_5
    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->i:Ljava/lang/String;

    .line 218
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed body: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 211
    :cond_1b
    :goto_6
    iput-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    .line 212
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Processed advertiser: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 246
    :cond_1c
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported asset object: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    const-string v1, "jstracker"

    const/4 v2, 0x0

    .line 255
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 258
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processed jstracker: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v1, "imptrackers"

    const/4 v2, 0x0

    .line 263
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v3, 0x0

    .line 266
    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 268
    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getObjectAtIndex(Lorg/json/JSONArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 269
    instance-of v2, v4, Ljava/lang/String;

    if-nez v2, :cond_20

    goto :goto_9

    .line 271
    :cond_20
    check-cast v4, Ljava/lang/String;

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_9

    .line 274
    :cond_21
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    new-instance v5, Lcom/applovin/impl/sdk/network/l$a;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v5, v8}, Lcom/applovin/impl/sdk/network/l$a;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 275
    invoke-virtual {v5, v4}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v5

    const/4 v8, 0x0

    .line 276
    invoke-virtual {v5, v8}, Lcom/applovin/impl/sdk/network/l$a;->f(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v5

    .line 277
    invoke-virtual {v5, v8}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v5

    .line 278
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object v5

    .line 274
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Processed imptracker URL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_9
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_8

    :cond_23
    const-string v1, "eventtrackers"

    const/4 v2, 0x0

    .line 284
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v8, 0x0

    .line 287
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_31

    .line 289
    invoke-static {v0, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "event"

    .line 291
    invoke-static {v1, v3, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "method"

    .line 292
    invoke-static {v1, v4, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 294
    invoke-static {v1, v11, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_26

    :cond_24
    :goto_b
    const/4 v9, 0x2

    const/4 v10, 0x0

    :cond_25
    :goto_c
    const/4 v13, 0x4

    goto/16 :goto_e

    :cond_26
    const/4 v9, 0x2

    if-eq v4, v14, :cond_27

    if-eq v4, v9, :cond_27

    .line 299
    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v4, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported method for event tracker: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_27
    if-ne v4, v9, :cond_28

    const-string v9, "<script"

    .line 305
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 307
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 312
    :cond_28
    new-instance v9, Lcom/applovin/impl/sdk/network/l$a;

    iget-object v10, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v9, v10}, Lcom/applovin/impl/sdk/network/l$a;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 313
    invoke-virtual {v9, v5}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v9

    const/4 v10, 0x0

    .line 314
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/network/l$a;->f(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v9

    .line 315
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v9

    const/4 v13, 0x2

    if-ne v4, v13, :cond_29

    move v4, v14

    goto :goto_d

    :cond_29
    move v4, v10

    .line 316
    :goto_d
    invoke-virtual {v9, v4}, Lcom/applovin/impl/sdk/network/l$a;->g(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object v4

    if-ne v3, v14, :cond_2b

    .line 322
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Processed impression URL: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 v9, 0x2

    goto :goto_c

    :cond_2b
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2c

    .line 328
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->v:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "Processed viewable MRC50 URL: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2c
    if-ne v3, v12, :cond_2d

    .line 334
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->w:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "Processed viewable MRC100 URL: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2d
    const/4 v13, 0x4

    if-ne v3, v13, :cond_2e

    .line 340
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->x:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Processed viewable video 50 URL: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2e
    const/16 v2, 0x22b

    if-ne v3, v2, :cond_2f

    .line 346
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring processing of OMID URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 350
    :cond_2f
    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported event tracker: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_e
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_a

    .line 357
    :cond_31
    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 359
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string v2, "Processing VAST video..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_32
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 363
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 365
    sget-object v3, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v5, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;

    move-result-object v0

    .line 366
    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_f

    .line 370
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    :goto_f
    return-void

    .line 115
    :cond_34
    :goto_10
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve assets - failing ad load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const-string v0, "Unable to retrieve assets"

    .line 116
    invoke-direct {v6, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_36
    :goto_11
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No oRtb response provided: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string v0, "No oRtb response provided"

    .line 95
    invoke-direct {v6, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    return-void
.end method
