.class public Lcom/openmediation/sdk/core/imp/splash/SpAdManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/imp/splash/SpAdManager$SplashHolder;
    }
.end annotation


# instance fields
.field private mSplashAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/core/imp/splash/SpManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/splash/SplashAdListener;",
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

    iput-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashAds:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/core/imp/splash/SpAdManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager$SplashHolder;->access$100()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    return-object v0
.end method

.method private getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashAds:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/core/imp/splash/SpManager;

    return-object p1
.end method


# virtual methods
.method public initSplashAd(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashAds:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/imp/splash/SpManager;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpManager;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object v0

    const/16 v1, 0x1f7

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x1f6

    :cond_1
    invoke-static {v1, p1, v3, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    return v0
.end method

.method public load(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(Ljava/lang/String;II)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/openmediation/sdk/utils/error/Error;

    const-string v0, "SplashAd Load Failed: Placement Not Found"

    const/4 v1, -0x1

    const/16 v2, 0xf2

    invoke-direct {p2, v2, v0, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-interface {v0, p1, p2}, Lcom/openmediation/sdk/splash/SplashAdListener;->onSplashAdFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setLoadTimeout(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->setLoadTimeout(J)V

    return-void
.end method

.method public setSize(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->setSize(II)V

    return-void
.end method

.method public setSplashAdListener(Ljava/lang/String;Lcom/openmediation/sdk/splash/SplashAdListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->setAdListener(Lcom/openmediation/sdk/splash/SplashAdListener;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x1f5

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    const-string v1, "SplashAd Show Failed: Placement Not Found"

    const/4 v2, -0x1

    const/16 v3, 0x156

    invoke-direct {v0, v3, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-interface {v1, p1, v0}, Lcom/openmediation/sdk/splash/SplashAdListener;->onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->showSplashAd()V

    return-void
.end method

.method public show(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x1f5

    invoke-static {v2, p1, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getSplashAd(Ljava/lang/String;)Lcom/openmediation/sdk/core/imp/splash/SpManager;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/openmediation/sdk/utils/error/Error;

    const-string v0, "SplashAd Show Failed: Placement Not Found"

    const/4 v1, -0x1

    const/16 v2, 0x156

    invoke-direct {p2, v2, v0, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->mSplashListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-interface {v0, p1, p2}, Lcom/openmediation/sdk/splash/SplashAdListener;->onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/core/imp/splash/SpManager;->showSplashAd(Landroid/view/ViewGroup;)V

    return-void
.end method
