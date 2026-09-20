.class public Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;,
        Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$Holder;
    }
.end annotation


# static fields
.field private static final PAY_LOAD:Ljava/lang/String; = "pay_load"

.field private static final TAG:Ljava/lang/String; = "OM-CrossPromotion: "


# instance fields
.field private final mBannerAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/crosspromotion/sdk/banner/BannerAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method private getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/crosspromotion/sdk/banner/AdSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/crosspromotion/sdk/banner/AdSize;"
        }
    .end annotation

    invoke-static {p2}, Lcom/openmediation/sdk/mediation/MediationUtil;->getBannerDesc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LEADERBOARD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "SMART"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "RECTANGLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p1, Lcom/crosspromotion/sdk/banner/AdSize;->BANNER:Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/crosspromotion/sdk/banner/AdSize;->LEADERBOARD:Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/crosspromotion/sdk/banner/AdSize;->LEADERBOARD:Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p1

    :cond_3
    sget-object p1, Lcom/crosspromotion/sdk/banner/AdSize;->BANNER:Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/crosspromotion/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p1

    nop

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

.method public static getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$Holder;->access$100()Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyAd(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/crosspromotion/sdk/banner/BannerAd;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/banner/BannerAd;->destroy()V

    :cond_0
    return-void
.end method

.method public isAdAvailable(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "pay_load"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "OM-CrossPromotion: "

    const-string v0, "BannerAd load failed: payload is empty"

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "CrossPromotionAdapter"

    const-string p2, "payload is empty"

    const-string v0, "Banner"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    return-void

    :cond_2
    new-instance v7, Lcom/crosspromotion/sdk/banner/BannerAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, p1}, Lcom/crosspromotion/sdk/banner/BannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;-><init>(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;Lcom/crosspromotion/sdk/banner/BannerAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$1;)V

    invoke-virtual {v7, v8}, Lcom/crosspromotion/sdk/banner/BannerAd;->setAdListener(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->getAdSize(Landroid/content/Context;Ljava/util/Map;)Lcom/crosspromotion/sdk/banner/AdSize;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/crosspromotion/sdk/banner/BannerAd;->setAdSize(Lcom/crosspromotion/sdk/banner/AdSize;)V

    invoke-virtual {v7, v0, p2}, Lcom/crosspromotion/sdk/banner/BannerAd;->loadAdWithPayload(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
