.class public Lcom/applovin/impl/adview/activity/b/g;
.super Lcom/applovin/impl/adview/activity/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/adview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/activity/b/g$a;
    }
.end annotation


# instance fields
.field private A:D

.field private B:D

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private E:Z

.field private F:J

.field private G:J

.field private final v:Lcom/applovin/impl/adview/activity/a/d;

.field private final w:Lcom/applovin/impl/adview/m;

.field private final x:Landroid/widget/ImageView;

.field private final y:Lcom/applovin/impl/adview/a;

.field private final z:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 3
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

    .line 87
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 55
    new-instance p3, Lcom/applovin/impl/adview/activity/a/d;

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/g;->e:Landroid/app/Activity;

    iget-object p7, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p3, p5, p6, p7}, Lcom/applovin/impl/adview/activity/a/d;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/g;->v:Lcom/applovin/impl/adview/activity/a/d;

    .line 66
    iget-object p3, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/e;->f()Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/impl/adview/activity/b/g;->z:Z

    .line 71
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/g;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/g;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {p5}, Lcom/applovin/impl/sdk/utils/Utils;->isVideoMutedInitially(Lcom/applovin/impl/sdk/p;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    const-wide/16 p5, -0x2

    .line 76
    iput-wide p5, p0, Lcom/applovin/impl/adview/activity/b/g;->F:J

    const-wide/16 p5, 0x0

    .line 77
    iput-wide p5, p0, Lcom/applovin/impl/adview/activity/b/g;->G:J

    .line 89
    new-instance p7, Lcom/applovin/impl/adview/activity/b/g$a;

    const/4 v0, 0x0

    invoke-direct {p7, p0, v0}, Lcom/applovin/impl/adview/activity/b/g$a;-><init>(Lcom/applovin/impl/adview/activity/b/g;Lcom/applovin/impl/adview/activity/b/g$1;)V

    .line 92
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v1

    cmp-long p5, v1, p5

    const/16 p6, 0x8

    if-ltz p5, :cond_0

    .line 95
    new-instance p5, Lcom/applovin/impl/adview/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->x()Lcom/applovin/impl/adview/i$a;

    move-result-object p1

    invoke-direct {p5, p1, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/i$a;Landroid/app/Activity;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    .line 96
    invoke-virtual {p5, p6}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 97
    invoke-virtual {p5, p7}, Lcom/applovin/impl/adview/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 101
    :cond_0
    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    .line 105
    :goto_0
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-static {p1, p4}, Lcom/applovin/impl/adview/activity/b/g;->a(ZLcom/applovin/impl/sdk/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    .line 108
    sget-object p5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p5, 0x1

    .line 109
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/g;->d(Z)V

    goto :goto_1

    .line 116
    :cond_1
    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    :goto_1
    if-eqz p3, :cond_2

    .line 123
    new-instance p1, Lcom/applovin/impl/adview/a;

    sget-object p3, Lcom/applovin/impl/sdk/c/b;->cP:Lcom/applovin/impl/sdk/c/b;

    .line 124
    invoke-virtual {p4, p3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0x101007a

    invoke-direct {p1, p2, p3, p4}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    const-string p2, "#75FFFFFF"

    .line 126
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/applovin/impl/adview/a;->setColor(I)V

    const-string p2, "#00000000"

    .line 127
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/applovin/impl/adview/a;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {p1, p6}, Lcom/applovin/impl/adview/a;->setVisibility(I)V

    goto :goto_2

    .line 134
    :cond_2
    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    :goto_2
    return-void
.end method

.method private A()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/g$3;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/g$3;-><init>(Lcom/applovin/impl/adview/activity/b/g;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/g;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/g;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/g;->F:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/g;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/g;->A()V

    return-void
.end method

.method private static a(ZLcom/applovin/impl/sdk/p;)Z
    .locals 2

    .line 485
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 490
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    .line 500
    :cond_1
    sget-object p0, Lcom/applovin/impl/sdk/c/b;->cH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/g;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/g;->G:J

    return-wide p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/g;)Lcom/applovin/impl/adview/m;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/activity/b/g;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    .line 510
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->e:Landroid/app/Activity;

    if-eqz p1, :cond_0

    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 516
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 517
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 525
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aE()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aF()Landroid/net/Uri;

    move-result-object p1

    .line 528
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 530
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(D)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_setVideoMuted("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/g;->A()V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->m()V

    .line 336
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/g;->B:D

    .line 339
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->u()V

    .line 342
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->am()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 346
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->t:Lcom/applovin/impl/sdk/b/b;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/b/b;->a(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->v:Lcom/applovin/impl/adview/activity/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/g;->h:Lcom/applovin/impl/adview/m;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/g;->g:Lcom/applovin/impl/adview/u;

    iget-object v6, p0, Lcom/applovin/impl/adview/activity/b/g;->f:Lcom/applovin/adview/AppLovinAdView;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/adview/activity/a/d;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/a;Lcom/applovin/impl/adview/u;Lcom/applovin/adview/AppLovinAdView;Landroid/view/ViewGroup;)V

    .line 150
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/impl/adview/g;)V

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/activity/b/g;->a(Z)V

    .line 156
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/applovin/impl/adview/a;->a()V

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->g:Lcom/applovin/impl/adview/u;

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/u;->a()V

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 171
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/g$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/g$1;-><init>(Lcom/applovin/impl/adview/activity/b/g;)V

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    .line 180
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->s()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/e/z;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/g$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/g$2;-><init>(Lcom/applovin/impl/adview/activity/b/g;)V

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    .line 209
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->x()V

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 359
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/g;->A:D

    return-void
.end method

.method public c()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/g;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public g_()V
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->y()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->m()V

    .line 389
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    return-void
.end method

.method public h_()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->a()V

    :cond_0
    return-void
.end method

.method protected m()V
    .locals 8

    .line 424
    iget-wide v0, p0, Lcom/applovin/impl/adview/activity/b/g;->A:D

    double-to-int v3, v0

    iget-boolean v4, p0, Lcom/applovin/impl/adview/activity/b/g;->z:Z

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->r()Z

    move-result v5

    iget-wide v6, p0, Lcom/applovin/impl/adview/activity/b/g;->F:J

    move-object v2, p0

    invoke-super/range {v2 .. v7}, Lcom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method protected r()Z
    .locals 4

    .line 405
    iget-wide v0, p0, Lcom/applovin/impl/adview/activity/b/g;->A:D

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->Q()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected s()Z
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u()V
    .locals 8

    .line 432
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v0

    if-ltz v0, :cond_5

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    goto :goto_2

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 447
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/g;->B:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    .line 449
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/g;->B:D

    double-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 452
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->l()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_3

    .line 457
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    goto :goto_1

    .line 461
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->t()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_4

    .line 464
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    :goto_1
    long-to-double v0, v2

    .line 469
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 472
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/g;->b(J)V

    :cond_5
    return-void
.end method

.method public w()V
    .locals 2

    .line 307
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->w()V

    .line 309
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->v:Lcom/applovin/impl/adview/activity/a/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->i:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/d;->a(Lcom/applovin/impl/adview/m;)V

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/g;->k:J

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 313
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/g;->A:D

    return-void
.end method

.method public x()V
    .locals 4

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/g;->G:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/g;->F:J

    .line 238
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping video with skip time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/g;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->f()V

    .line 242
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/g;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/g;->m:I

    .line 244
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->h()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->y()V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v3, "Showing postitial..."

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "javascript:al_showPostitial();"

    .line 260
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->w:Lcom/applovin/impl/adview/m;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->y:Lcom/applovin/impl/adview/a;

    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->h:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->h:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/g;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/g$4;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/g$4;-><init>(Lcom/applovin/impl/adview/activity/b/g;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/g;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->h:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 298
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/g;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->n()V

    .line 300
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/g;->v()V

    :cond_6
    return-void
.end method

.method protected z()V
    .locals 3

    .line 535
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_setVideoMuted("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    .line 539
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/g;->d(Z)V

    .line 540
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/g;->E:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/g;->a(ZJ)V

    return-void
.end method
