.class public Lcom/openmediation/sdk/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

.field private b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

.field private c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

.field private d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

.field private e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/banner/BannerAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/nativead/NativeAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    return-object p0
.end method

.method static synthetic c(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/video/RewardedVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    return-object p0
.end method

.method static synthetic d(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    return-object p0
.end method

.method static synthetic e(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/promotion/PromotionAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$l;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$l;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$m;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$m;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$n;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$n;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/openmediation/sdk/a/g$o;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$o;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/openmediation/sdk/a/g$p;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$p;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$k;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$v;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$v;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$f;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$g;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$h;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/openmediation/sdk/a/g$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$i;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/openmediation/sdk/a/g$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$j;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$x;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$x;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$y;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$y;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$q;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$q;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$r;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$r;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$s;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$s;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->c:Lcom/crosspromotion/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$z;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$z;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$a0;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$a0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$b0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/openmediation/sdk/a/g$c0;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$c0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/openmediation/sdk/a/g$d0;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/a/g$d0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$b;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$b;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$c;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$c;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$d;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$d;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->d:Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/openmediation/sdk/a/g$e;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$e;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$e0;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$e0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->b:Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/a/g$f0;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$f0;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/openmediation/sdk/a/g$a;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$a;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$u;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$u;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$w;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$w;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/g;->a:Lcom/crosspromotion/sdk/video/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/g$t;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/g$t;-><init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
