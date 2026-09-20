.class public Lcom/applovin/impl/adview/activity/b/d;
.super Lcom/applovin/impl/adview/activity/b/f;
.source "SourceFile"


# instance fields
.field private final G:Lcom/applovin/impl/c/a;

.field private final H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/e;",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            "Lcom/applovin/sdk/AppLovinAdClickListener;",
            "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
            "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/adview/activity/b/f;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 47
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/Set;

    .line 59
    check-cast p1, Lcom/applovin/impl/c/a;

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    .line 61
    invoke-virtual {p1}, Lcom/applovin/impl/c/a;->aS()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/applovin/impl/c/a;->aR()Lcom/applovin/impl/c/g;

    move-result-object p5

    invoke-virtual {p5}, Lcom/applovin/impl/c/g;->a()Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p2, p4}, Lcom/applovin/impl/c/g;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Landroid/widget/ImageView;

    move-result-object p5

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Landroid/widget/ImageView;

    .line 64
    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Landroid/widget/ImageView;

    new-instance p6, Lcom/applovin/impl/adview/activity/b/d$1;

    invoke-direct {p6, p0, p2, p4}, Lcom/applovin/impl/adview/activity/b/d$1;-><init>(Lcom/applovin/impl/adview/activity/b/d;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    invoke-virtual {p5, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    sget-object p2, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    sget-object p4, Lcom/applovin/impl/c/l;->a:[Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/applovin/impl/c/a;->a(Lcom/applovin/impl/c/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 83
    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 85
    sget-object p2, Lcom/applovin/impl/c/a$c;->a:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, p2}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;)V

    .line 86
    sget-object p2, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string p3, "creativeView"

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/a/g;->d()V

    return-void
.end method

.method private C()V
    .locals 3

    .line 346
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " un-fired video progress trackers when video was completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private D()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/c/a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;Lcom/applovin/impl/c/a$c;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/d;Ljava/util/Set;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/c/a$c;)V
    .locals 1

    .line 363
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V
    .locals 1

    const-string v0, ""

    .line 373
    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V
    .locals 1

    .line 368
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/c/a;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 380
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/util/Set;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;)V"
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/util/Set;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/applovin/impl/c/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Lcom/applovin/impl/c/f;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 385
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 388
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aP()Lcom/applovin/impl/c/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/applovin/impl/c/o;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 391
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tracker(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    iget-object v8, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/p;

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/d;)Ljava/util/Set;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/d;->H:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 320
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/d;->C()V

    .line 323
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-static {v0}, Lcom/applovin/impl/c/m;->c(Lcom/applovin/impl/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:Z

    if-nez v0, :cond_2

    .line 328
    sget-object v0, Lcom/applovin/impl/c/a$c;->e:Lcom/applovin/impl/c/a$c;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->i()V

    .line 333
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->A()V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "VAST ad does not have valid companion ad - dismissing..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/d;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 1

    .line 249
    sget-object v0, Lcom/applovin/impl/c/a$c;->b:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;)V

    .line 250
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->o()V

    .line 252
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/f;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 132
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/f;->a(Landroid/view/ViewGroup;)V

    .line 134
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/d;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    sget-object p1, Lcom/applovin/impl/c/a$c;->f:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;)V

    .line 137
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->B:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/d;->C:Lcom/applovin/impl/adview/j;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/adview/activity/b/d$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/d$2;-><init>(Lcom/applovin/impl/adview/activity/b/d;)V

    const-string v3, "PROGRESS_TRACKING"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/applovin/impl/adview/j;->a(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;)V

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->w:Lcom/applovin/impl/adview/a;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string/jumbo v3, "video stream buffering indicator"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->x:Lcom/applovin/impl/adview/m;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string/jumbo v3, "skip button"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 209
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->A:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "progress bar"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 215
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->y:Landroid/widget/ImageView;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "mute button"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Lcom/applovin/impl/adview/v;

    if-eqz v0, :cond_5

    .line 221
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->z:Lcom/applovin/impl/adview/v;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "generic webview overlay containing HTML controls"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    new-instance v0, Lcom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/u;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/d;->g:Lcom/applovin/impl/adview/u;

    .line 229
    invoke-virtual {v3}, Lcom/applovin/impl/adview/u;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/d;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/a/g;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 267
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string/jumbo v1, "skip"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->n()V

    .line 271
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->c()V

    return-void
.end method

.method protected c(J)V
    .locals 2

    .line 240
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/adview/activity/b/f;->c(J)V

    .line 243
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-float p1, p1

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/Utils;->isVideoMutedInitially(Lcom/applovin/impl/sdk/p;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/a/g;->a(FZ)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 299
    sget-object v0, Lcom/applovin/impl/c/a$c;->h:Lcom/applovin/impl/c/a$c;

    sget-object v1, Lcom/applovin/impl/c/f;->m:Lcom/applovin/impl/c/f;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V

    .line 300
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a/g;->a(Ljava/lang/String;)V

    .line 302
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/d;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->c()V

    .line 261
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->e()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->f()V

    .line 105
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/c/a$c;->e:Lcom/applovin/impl/c/a$c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    :goto_0
    const-string v1, "resume"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->k()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->g()V

    .line 96
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/d;->F:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/c/a$c;->e:Lcom/applovin/impl/c/a$c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    :goto_0
    const-string v1, "pause"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->j()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/applovin/impl/c/a$c;->e:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->h()V

    return-void
.end method

.method protected u()V
    .locals 7

    .line 404
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->ad()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->ae()I

    move-result v0

    if-ltz v0, :cond_5

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->ad()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->ad()J

    move-result-wide v0

    goto :goto_1

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    .line 419
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aO()Lcom/applovin/impl/c/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {v1}, Lcom/applovin/impl/c/n;->b()I

    move-result v4

    if-lez v4, :cond_2

    .line 422
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/applovin/impl/c/n;->b()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 426
    :cond_2
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/d;->E:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 428
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/d;->E:J

    add-long/2addr v2, v4

    .line 432
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->t()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_4

    .line 437
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_4
    long-to-double v0, v2

    .line 441
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->ae()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 444
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->b(J)V

    :cond_5
    return-void
.end method

.method protected x()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->x()V

    .line 279
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->l()V

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->y()V

    .line 290
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->m()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 308
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/f;->z()V

    .line 310
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "mute"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unmute"

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d;->G:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/d;->D:Z

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/g;->a(Z)V

    return-void
.end method
