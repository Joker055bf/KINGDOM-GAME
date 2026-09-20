.class public Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;
.super Ljava/lang/Object;
.source "IronSourceBannerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;,
        Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$BannerHolder;
    }
.end annotation


# instance fields
.field private mBannerLoaded:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDidBannerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mDidBannerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mBannerLoaded:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mBannerLoaded:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private getAdSize(Ljava/util/Map;)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/mediationsdk/ISBannerSize;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->getBannerDesc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LEADERBOARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 145
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 139
    :pswitch_0
    new-instance p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    const/16 v0, 0x2d8

    const/16 v1, 0x5a

    invoke-direct {p1, v0, v1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(II)V

    return-object p1

    .line 143
    :pswitch_1
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    .line 141
    :pswitch_2
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_2
        0x4b59da9 -> :sswitch_1
        0x1aa2fb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;
    .locals 1

    .line 39
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$BannerHolder;->access$100()Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyAd(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 76
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mBannerLoaded:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    :cond_0
    return-void
.end method

.method public initAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "AppKey"

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 45
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 46
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mDidBannerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p3}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_0

    const-string p2, "IronSourceAdapter"

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Banner"

    .line 52
    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mBannerLoaded:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInit()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mDidBannerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->destroyAd(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->getAdSize(Ljava/util/Map;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p3

    .line 62
    invoke-static {p1, p3}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p1

    .line 63
    new-instance p3, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;-><init>(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$1;)V

    .line 64
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 65
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->mIrBannerLayouts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method
