.class public Lcom/applovin/impl/adview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/b$a;,
        Lcom/applovin/impl/adview/b$b;,
        Lcom/applovin/impl/adview/b$c;
    }
.end annotation


# instance fields
.field private volatile A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile B:Lcom/applovin/adview/AppLovinAdViewEventListener;

.field private volatile C:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile D:Lcom/applovin/impl/adview/g;

.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private e:Lcom/applovin/impl/sdk/y;

.field private f:Lcom/applovin/communicator/AppLovinCommunicator;

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

.field private h:Lcom/applovin/sdk/AppLovinAdSize;

.field private i:Ljava/lang/String;

.field private j:Lcom/applovin/impl/sdk/d/d;

.field private k:Lcom/applovin/impl/adview/e;

.field private l:Lcom/applovin/impl/adview/b$c;

.field private m:Lcom/applovin/impl/adview/d;

.field private n:Lcom/applovin/impl/adview/u;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private volatile q:Lcom/applovin/impl/sdk/ad/e;

.field private volatile r:Lcom/applovin/sdk/AppLovinAd;

.field private s:Lcom/applovin/impl/adview/l;

.field private t:Lcom/applovin/impl/adview/l;

.field private final u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Z

.field private volatile z:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->g:Ljava/util/Map;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    .line 94
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->r:Lcom/applovin/sdk/AppLovinAd;

    .line 95
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    .line 96
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->t:Lcom/applovin/impl/adview/l;

    .line 98
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->w:Z

    .line 101
    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->x:Z

    .line 102
    iput-boolean v1, p0, Lcom/applovin/impl/adview/b;->y:Z

    .line 109
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->D:Lcom/applovin/impl/adview/g;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/d;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/l;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->t:Lcom/applovin/impl/adview/l;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/u;)Lcom/applovin/impl/adview/u;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->n:Lcom/applovin/impl/adview/u;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/d/d;)Lcom/applovin/impl/sdk/d/d;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->j:Lcom/applovin/impl/sdk/d/d;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/applovin/impl/adview/b;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 118
    iput-object p2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    .line 119
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 120
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    .line 121
    invoke-static {p5}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->f:Lcom/applovin/communicator/AppLovinCommunicator;

    .line 123
    iput-object p3, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    .line 124
    iput-object p4, p0, Lcom/applovin/impl/adview/b;->i:Ljava/lang/String;

    .line 127
    instance-of p4, p5, Lcom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    .line 128
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->b:Landroid/view/ViewGroup;

    .line 130
    new-instance p1, Lcom/applovin/impl/adview/e;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/p;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->k:Lcom/applovin/impl/adview/e;

    .line 132
    new-instance p1, Lcom/applovin/impl/adview/b$a;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/b$a;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->p:Ljava/lang/Runnable;

    .line 133
    new-instance p1, Lcom/applovin/impl/adview/b$b;

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/b$b;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/b$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->o:Ljava/lang/Runnable;

    .line 135
    new-instance p1, Lcom/applovin/impl/adview/b$c;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/b$c;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/p;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->l:Lcom/applovin/impl/adview/b$c;

    .line 137
    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad size specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    .line 805
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/l;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    return-object p1
.end method

.method private static b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 201
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 208
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v5}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 214
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v3, p1

    .line 221
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_5

    .line 224
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    :cond_5
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_6

    .line 232
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/b;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/u;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->n:Lcom/applovin/impl/adview/u;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/b;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/b;)Lcom/applovin/adview/AppLovinAdViewEventListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->B:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/d/d;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->j:Lcom/applovin/impl/sdk/d/d;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/adview/b;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/applovin/impl/adview/b;->y:Z

    return p0
.end method

.method static synthetic m(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/impl/adview/b;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->v()V

    return-void
.end method

.method static synthetic o(Lcom/applovin/impl/adview/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic p(Lcom/applovin/impl/adview/b;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->z:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->t:Lcom/applovin/impl/adview/l;

    return-object p0
.end method

.method static synthetic r(Lcom/applovin/impl/adview/b;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->x()V

    return-void
.end method

.method static synthetic s(Lcom/applovin/impl/adview/b;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/applovin/impl/adview/b;->g:Ljava/util/Map;

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinAdView"

    const-string v2, "Destroying..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    .line 344
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->z:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 345
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 346
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->C:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 347
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->B:Lcom/applovin/adview/AppLovinAdViewEventListener;

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->x:Z

    return-void
.end method

.method static synthetic t(Lcom/applovin/impl/adview/b;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/applovin/impl/adview/b;->x:Z

    return p0
.end method

.method private u()V
    .locals 1

    .line 395
    new-instance v0, Lcom/applovin/impl/adview/b$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/b$3;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private v()V
    .locals 1

    .line 855
    new-instance v0, Lcom/applovin/impl/adview/b$10;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/b$10;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private w()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->j:Lcom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->c()V

    const/4 v0, 0x0

    .line 888
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->j:Lcom/applovin/impl/sdk/d/d;

    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    .line 894
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    .line 895
    new-instance v1, Lcom/applovin/impl/sdk/utils/l;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/l;-><init>()V

    .line 897
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->a()Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    .line 898
    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    .line 899
    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->r()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/impl/sdk/utils/l;

    .line 901
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->a()Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    const-string v3, "Fullscreen Ad Properties"

    .line 904
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    .line 905
    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/utils/l;->b(Lcom/applovin/impl/sdk/ad/e;)Lcom/applovin/impl/sdk/utils/l;

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/utils/l;

    .line 910
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->a()Lcom/applovin/impl/sdk/utils/l;

    .line 912
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v2, "AppLovinAdView"

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->l:Lcom/applovin/impl/adview/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->w:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->l:Lcom/applovin/impl/adview/b$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    .line 287
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(I)V
    .locals 1

    .line 769
    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->x:Z

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->p:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    .line 776
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/b$9;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b$9;-><init>(Lcom/applovin/impl/adview/b;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 1

    .line 587
    new-instance v0, Lcom/applovin/impl/adview/b$6;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b$6;-><init>(Lcom/applovin/impl/adview/b;Landroid/graphics/PointF;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/b$4;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b$4;-><init>(Lcom/applovin/impl/adview/b;Landroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->r:Lcom/applovin/sdk/AppLovinAd;

    if-eq v0, v1, :cond_2

    .line 542
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    iput-object v0, p0, Lcom/applovin/impl/adview/b;->r:Lcom/applovin/sdk/AppLovinAd;

    .line 544
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/a/a;->a(Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 548
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    const-string v1, "javascript:al_onAdViewRendered();"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    new-instance v3, Lcom/applovin/impl/adview/b$5;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/adview/b$5;-><init>(Lcom/applovin/impl/adview/b;Landroid/webkit/WebView;)V

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AppLovinAdView"

    const-string v1, "Exception while notifying ad display listener"

    .line 581
    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/adview/AppLovinAdView;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    const-string p1, "AppLovinAdView"

    const-string p2, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    .line 245
    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 253
    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_1

    .line 256
    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_1
    move-object v3, p3

    if-nez p5, :cond_2

    .line 263
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p5

    :cond_2
    if-eqz p5, :cond_3

    .line 268
    iget-object v2, p5, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/p;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    .line 271
    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/c;->b(Landroid/util/AttributeSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->a()V

    :cond_3
    return-void

    .line 242
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->B:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/g;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->D:Lcom/applovin/impl/adview/g;

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 707
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-boolean v6, p0, Lcom/applovin/impl/adview/b;->y:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/b;Landroid/net/Uri;Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 711
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string p3, "AppLovinAdView"

    const-string p4, "Unable to process ad click - AppLovinAdView destroyed prematurely"

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->C:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/d;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/d;->setStatsManagerHelper(Lcom/applovin/impl/sdk/d/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_b

    .line 456
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/Utils;->validateAdSdkKey(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/p;)V

    .line 458
    iget-boolean p2, p0, Lcom/applovin/impl/adview/b;->w:Z

    const-string v0, "AppLovinAdView"

    if-eqz p2, :cond_9

    .line 460
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/Utils;->maybeRetrieveNonDummyAd(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/p;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/e;

    if-eqz p1, :cond_5

    .line 462
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    if-eq p1, p2, :cond_5

    .line 464
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rendering ad #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 468
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-eq p2, v0, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->w()V

    .line 473
    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 475
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/a/b;->e()V

    .line 479
    :cond_2
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 480
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->r:Lcom/applovin/sdk/AppLovinAd;

    .line 482
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    .line 485
    iget-boolean p2, p0, Lcom/applovin/impl/adview/b;->x:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 488
    iget-object p2, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/e;)V

    .line 491
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    if-eqz p1, :cond_4

    .line 493
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->u()V

    .line 496
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->o:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    .line 502
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string p2, "Unable to render ad. Ad is null. Internal inconsistency error."

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is already showing, ignoring"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_7
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->cn:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 510
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to display ad - ad can only be displayed once. Load the next ad."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "Unable to render ad: AppLovinAdView is not initialized."

    .line 517
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/y;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void

    .line 452
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->C:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/applovin/impl/adview/b;->z:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method protected a(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 5

    const/4 v0, 0x1

    .line 144
    :try_start_0
    new-instance v1, Lcom/applovin/impl/adview/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->k:Lcom/applovin/impl/adview/e;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    iget-object v4, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/e;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/d;->setBackgroundColor(I)V

    .line 153
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/d;->setWillNotCacheDrawing(Z)V

    .line 155
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 156
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    invoke-static {v1, p1}, Lcom/applovin/impl/adview/b;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 161
    iget-boolean p1, p0, Lcom/applovin/impl/adview/b;->w:Z

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->p:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    .line 168
    :cond_0
    new-instance p1, Lcom/applovin/impl/adview/b$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/b$1;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    .line 177
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->w:Z

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "AppLovinAdView"

    const-string v2, "Failed to initialize AdWebView"

    .line 148
    invoke-static {v1, v2, p1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object p1, p0, Lcom/applovin/impl/adview/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->h:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    const-string v0, "AppLovinAdView"

    if-eqz p1, :cond_2

    .line 726
    iget-boolean v1, p0, Lcom/applovin/impl/adview/b;->x:Z

    if-nez v1, :cond_0

    .line 728
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 734
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v2, "Ad view has paused when an ad was received, ad saved for later"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_1
    :goto_0
    new-instance v0, Lcom/applovin/impl/adview/b$8;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b$8;-><init>(Lcom/applovin/impl/adview/b;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 761
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v1, "No provided when to the view controller"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, -0x1

    .line 763
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/b;->a(I)V

    :goto_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->x:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->u:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_1
    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->x:Z

    return-void
.end method

.method public f()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->k()V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->t()V

    return-void
.end method

.method public g()Lcom/applovin/adview/AppLovinAdViewEventListener;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->B:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "b"

    return-object v0
.end method

.method public h()Lcom/applovin/impl/adview/g;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->D:Lcom/applovin/impl/adview/g;

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/d/f;->o:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/applovin/impl/adview/b;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 428
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->isBML(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->e()V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_3

    .line 435
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v2, "onDetachedFromWindowCalled with expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/adview/b;->u()V

    goto :goto_0

    .line 440
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    const-string v2, "onDetachedFromWindowCalled without an expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 659
    new-instance v0, Lcom/applovin/impl/adview/b$7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/b$7;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->s:Lcom/applovin/impl/adview/l;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->t:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->e:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->p:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    .line 696
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->A:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    goto :goto_1

    .line 689
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/b;->k()V

    :goto_1
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->y:Z

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/applovin/impl/adview/b;->y:Z

    return-void
.end method

.method public o()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->G()Lcom/applovin/impl/sdk/ad/e$a;

    move-result-object v0

    .line 816
    sget-object v1, Lcom/applovin/impl/sdk/ad/e$a;->b:Lcom/applovin/impl/sdk/ad/e$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/applovin/impl/adview/k;

    .line 821
    invoke-interface {v0}, Lcom/applovin/impl/adview/k;->dismiss()V

    :cond_1
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 1

    const-string v0, "crash_applovin_ad_webview"

    .line 920
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 922
    new-instance p1, Lcom/applovin/impl/adview/b$2;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/b$2;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p()Lcom/applovin/impl/sdk/ad/e;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->q:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public q()Lcom/applovin/impl/sdk/p;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->c:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public r()Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public s()Lcom/applovin/impl/adview/d;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->m:Lcom/applovin/impl/adview/d;

    return-object v0
.end method
