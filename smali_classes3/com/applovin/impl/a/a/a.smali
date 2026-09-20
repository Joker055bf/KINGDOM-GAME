.class public Lcom/applovin/impl/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/utils/j$a;


# static fields
.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/creative/MaxCreativeDebuggerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/applovin/impl/a/a/b/a/b;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/applovin/impl/sdk/utils/j;

.field private i:Lcom/applovin/impl/sdk/utils/p;

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/a/a/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->c:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->d:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->g:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    .line 100
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/a/a/a;->b:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/applovin/impl/a/a/b/a/b;

    invoke-direct {v0, p1}, Lcom/applovin/impl/a/a/b/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->e:Lcom/applovin/impl/a/a/b/a/b;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a/a/a;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/applovin/impl/a/a/a;->j:I

    return p1
.end method

.method private a(Landroid/app/Activity;)Landroid/view/View;
    .locals 5

    const/16 v0, 0x28

    .line 384
    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 385
    div-int/lit8 v1, v0, 0xa

    .line 387
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 388
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    :try_start_0
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/applovin/sdk/R$drawable;->applovin_ic_white_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    mul-int/lit8 v3, v1, 0x2

    .line 396
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u24d8"

    .line 403
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 406
    invoke-virtual {v0, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 407
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 411
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 413
    new-instance v1, Lcom/applovin/impl/a/a/a$6;

    invoke-direct {v1, p0}, Lcom/applovin/impl/a/a/a$6;-><init>(Lcom/applovin/impl/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 425
    invoke-static {p1, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/a/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/applovin/impl/a/a/a;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 68
    sput-object p0, Lcom/applovin/impl/a/a/a;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/a/a/a;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/a/a/a;)Lcom/applovin/impl/a/a/b/a/b;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/applovin/impl/a/a/a;->e:Lcom/applovin/impl/a/a/b/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/a/a/a;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 1

    .line 211
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    goto :goto_0

    .line 215
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/mediation/a/a;

    if-eqz v0, :cond_1

    .line 217
    check-cast p1, Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private d(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 3

    .line 590
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/Utils;->getAdServeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 591
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->am()Lcom/applovin/impl/sdk/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/g;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 598
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 599
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 600
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->toHumanReadableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->put(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d(Lcom/applovin/impl/a/a/a;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->j()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/a/a/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/applovin/impl/a/a/a;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 68
    sget-object v0, Lcom/applovin/impl/a/a/a;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 68
    sget-object v0, Lcom/applovin/impl/a/a/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .line 204
    sget-object v0, Lcom/applovin/impl/a/a/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/a/a/a$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/a/a/a$1;-><init>(Lcom/applovin/impl/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    return-void
.end method

.method private j()V
    .locals 9

    .line 328
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Failed to display Creative Debugger button"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x1020002

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 338
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 340
    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    .line 341
    invoke-direct {p0, v0}, Lcom/applovin/impl/a/a/a;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 343
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x96

    .line 346
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 347
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 350
    new-instance v8, Lcom/applovin/impl/a/a/a$4;

    invoke-direct {v8, p0, v0, v5}, Lcom/applovin/impl/a/a/a$4;-><init>(Lcom/applovin/impl/a/a/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 362
    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    new-instance v1, Lcom/applovin/impl/a/a/a$5;

    move-object v3, v1

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/a/a/a$5;-><init>(Lcom/applovin/impl/a/a/a;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 376
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 364
    invoke-static {v1, v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 378
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/a/a/a;->g:Ljava/lang/ref/WeakReference;

    :cond_3
    :goto_0
    return-void
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 433
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v2, 0x83

    const/16 v3, 0xaa

    const/4 v4, 0x5

    .line 435
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 437
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 438
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v3, 0x62

    const/16 v4, 0x7f

    const/4 v5, 0x2

    .line 439
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 441
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v1, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 442
    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    .line 443
    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method


# virtual methods
.method public a(Lcom/applovin/impl/a/a/a/a;)Ljava/lang/String;
    .locals 5

    .line 508
    invoke-virtual {p1}, Lcom/applovin/impl/a/a/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 509
    new-instance v1, Lcom/applovin/impl/sdk/utils/l;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/l;-><init>()V

    const-string v2, "Ad Info:\n"

    .line 510
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 512
    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/e;

    if-eqz v2, :cond_0

    .line 514
    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/e;

    const-string v3, "Network"

    const-string v4, "APPLOVIN"

    .line 515
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    .line 516
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    .line 517
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/utils/l;->b(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/l;

    goto :goto_0

    .line 519
    :cond_0
    instance-of v2, v0, Lcom/applovin/impl/mediation/a/a;

    if-eqz v2, :cond_1

    .line 521
    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/impl/mediation/a/a;)Lcom/applovin/impl/sdk/utils/l;

    .line 524
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/utils/l;

    .line 525
    invoke-virtual {p1}, Lcom/applovin/impl/a/a/a/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "Epoch Timestamp (ms)"

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    .line 528
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 530
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/s;->v()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 534
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->f()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "\nDebug Info:\n"

    .line 537
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    const-string v3, "fireos"

    .line 538
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Fire OS"

    goto :goto_2

    :cond_3
    const-string p1, "Android"

    :goto_2
    const-string v3, "Platform"

    invoke-virtual {v2, v3, p1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    const-string v2, "AppLovin SDK Version"

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 539
    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->dT:Lcom/applovin/impl/sdk/c/b;

    .line 540
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Plugin Version"

    invoke-virtual {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/a/a/a;->b:Landroid/content/Context;

    .line 541
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "App Package Name"

    invoke-virtual {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "%s %s (%s)"

    .line 542
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device"

    invoke-virtual {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    const-string v2, "OS Version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 543
    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    .line 544
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovin Random Token"

    invoke-virtual {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    const-string v2, "Ad Review Version"

    .line 545
    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    .line 546
    invoke-direct {p0, v0}, Lcom/applovin/impl/a/a/a;->d(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Landroid/os/Bundle;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object p1

    .line 547
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "None"

    :goto_3
    const-string v2, "User ID"

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    .line 549
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/applovin/impl/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->h:Lcom/applovin/impl/sdk/utils/j;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/applovin/impl/sdk/utils/j;

    iget-object v1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/j;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/utils/j$a;)V

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->h:Lcom/applovin/impl/sdk/utils/j;

    .line 119
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/j;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/applovin/impl/a/a/a/a;Landroid/content/Context;Z)V
    .locals 8

    .line 458
    invoke-virtual {p1}, Lcom/applovin/impl/a/a/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 459
    invoke-virtual {p0, p1}, Lcom/applovin/impl/a/a/a;->a(Lcom/applovin/impl/a/a/a/a;)Ljava/lang/String;

    move-result-object p1

    .line 460
    new-instance v1, Lcom/applovin/impl/sdk/utils/l;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/l;-><init>()V

    if-eqz p3, :cond_0

    const-string v2, "Please describe the issue you had with this ad:\n\n\n\n"

    .line 463
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 466
    :cond_0
    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/utils/l;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 468
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "\nBid Response:\n"

    .line 472
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 473
    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 476
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    .line 477
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 478
    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/e;

    const-string v3, "AppLovin Ad Report"

    const-string v4, "MAX Ad Report"

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 479
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "Share Ad Report"

    .line 476
    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 486
    :try_start_0
    new-instance p3, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p3, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {p3, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 488
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "com.google.android.gm"

    .line 489
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 490
    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 494
    :catch_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 499
    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/applovin/impl/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/applovin/impl/a/a/a;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/applovin/impl/a/a/a;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/a/a/a;->c:Ljava/util/List;

    new-instance v2, Lcom/applovin/impl/a/a/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/applovin/impl/a/a/a/a;-><init>(Ljava/lang/Object;J)V

    const/4 p1, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xa

    if-le p1, v1, :cond_4

    .line 148
    iget-object p1, p0, Lcom/applovin/impl/a/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 555
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_0

    .line 557
    check-cast p1, Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getOriginalFullResponse()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 559
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/mediation/a/a;

    if-eqz v0, :cond_2

    .line 562
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    new-instance p1, Lcom/applovin/impl/sdk/ad/c;

    iget-object v1, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 568
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/c;->d()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/applovin/impl/a/a/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/applovin/impl/a/a/a;->c:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->e:Lcom/applovin/impl/a/a/b/a/b;

    iget-object v3, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/a/a/b/a/b;->a(Ljava/util/List;Lcom/applovin/impl/sdk/p;)V

    .line 170
    iget-boolean v0, p0, Lcom/applovin/impl/a/a/a;->k:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/applovin/impl/a/a/a;->i()V

    .line 175
    iput-boolean v2, p0, Lcom/applovin/impl/a/a/a;->k:Z

    .line 178
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/a/a/a;->b:Landroid/content/Context;

    const-class v2, Lcom/applovin/creative/MaxCreativeDebuggerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "AppLovinSdk"

    const-string v2, "Starting Creative Debugger..."

    .line 181
    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/applovin/impl/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 165
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const-string v0, "AppLovinSdk"

    const-string v1, "Creative Debugger is already showing"

    .line 187
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->bV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->isCreativeDebuggerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 4

    .line 278
    iget v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/a/a/a;->a:Lcom/applovin/impl/sdk/p;

    new-instance v3, Lcom/applovin/impl/a/a/a$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/a/a/a$2;-><init>(Lcom/applovin/impl/a/a/a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a/a;->i:Lcom/applovin/impl/sdk/utils/p;

    .line 291
    :cond_0
    iget v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 293
    iput v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 300
    iget v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/2addr v0, v2

    .line 302
    iput v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    .line 305
    :cond_0
    iget v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 308
    new-instance v0, Lcom/applovin/impl/a/a/a$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/a/a/a$3;-><init>(Lcom/applovin/impl/a/a/a;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/applovin/impl/a/a/a;->j:I

    .line 317
    iget-object v0, p0, Lcom/applovin/impl/a/a/a;->i:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->d()V

    :cond_1
    return-void
.end method
