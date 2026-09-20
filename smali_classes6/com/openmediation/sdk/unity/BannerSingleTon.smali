.class final Lcom/openmediation/sdk/unity/BannerSingleTon;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;,
        Lcom/openmediation/sdk/unity/BannerSingleTon$BannerHolder;
    }
.end annotation


# static fields
.field private static final EVENT_BANNER_CLICKED:Ljava/lang/String; = "onBannerClicked"

.field private static final EVENT_BANNER_FAILED:Ljava/lang/String; = "onBannerLoadFailed"

.field private static final EVENT_BANNER_READY:Ljava/lang/String; = "onBannerLoadSuccess"


# instance fields
.field private final mBannerAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/banner/BannerAd;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerContainer:Landroid/widget/FrameLayout;

.field private final mBannerViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerAds:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerViews:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/BannerSingleTon$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/BannerSingleTon;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerViews:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerAds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private static getBannerSize(I)Lcom/openmediation/sdk/banner/AdSize;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 147
    sget-object p0, Lcom/openmediation/sdk/banner/AdSize;->BANNER:Lcom/openmediation/sdk/banner/AdSize;

    return-object p0

    .line 145
    :cond_0
    sget-object p0, Lcom/openmediation/sdk/banner/AdSize;->SMART:Lcom/openmediation/sdk/banner/AdSize;

    return-object p0

    .line 143
    :cond_1
    sget-object p0, Lcom/openmediation/sdk/banner/AdSize;->LEADERBOARD:Lcom/openmediation/sdk/banner/AdSize;

    return-object p0

    .line 141
    :cond_2
    sget-object p0, Lcom/openmediation/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/openmediation/sdk/banner/AdSize;

    return-object p0
.end method

.method static getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;
    .locals 1

    .line 48
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerHolder;->access$100()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    return-object v0
.end method

.method private loadBannerAds(Landroid/app/Activity;Lcom/openmediation/sdk/banner/BannerAd;)V
    .locals 2

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/openmediation/sdk/banner/BannerAd;->loadAd()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openmediation/sdk/unity/BannerSingleTon$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/openmediation/sdk/unity/BannerSingleTon$4;-><init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/app/Activity;Lcom/openmediation/sdk/banner/BannerAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method destroyBanner(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openmediation/sdk/unity/BannerSingleTon$1;

    invoke-direct {v1, p0, p1}, Lcom/openmediation/sdk/unity/BannerSingleTon$1;-><init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method displayBanner(Ljava/lang/String;)V
    .locals 2

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    const-string p1, "Om-Unity"

    const-string v0, "Banner ad is not ready to display, please load before display"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openmediation/sdk/unity/BannerSingleTon$2;

    invoke-direct {v1, p0, p1}, Lcom/openmediation/sdk/unity/BannerSingleTon$2;-><init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method hideBanner(Ljava/lang/String;)V
    .locals 2

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    const-string p1, "Om-Unity"

    const-string v0, "no ad need to be hide"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openmediation/sdk/unity/BannerSingleTon$3;

    invoke-direct {v1, p0, p1}, Lcom/openmediation/sdk/unity/BannerSingleTon$3;-><init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method loadBanner(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerAds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/banner/BannerAd;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/openmediation/sdk/banner/BannerAd;

    new-instance v1, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;

    invoke-direct {v1, p2, p4}, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, p1, p2, v1}, Lcom/openmediation/sdk/banner/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V

    .line 55
    iget-object p4, p0, Lcom/openmediation/sdk/unity/BannerSingleTon;->mBannerAds:Ljava/util/Map;

    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-static {p3}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getBannerSize(I)Lcom/openmediation/sdk/banner/AdSize;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/banner/BannerAd;->setAdSize(Lcom/openmediation/sdk/banner/AdSize;)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->loadBannerAds(Landroid/app/Activity;Lcom/openmediation/sdk/banner/BannerAd;)V

    return-void
.end method
