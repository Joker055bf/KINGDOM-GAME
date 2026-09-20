.class public Lcom/openmediation/sdk/banner/BannerAd;
.super Ljava/lang/Object;


# instance fields
.field private mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-direct {p1, p2, p3}, Lcom/openmediation/sdk/core/imp/banner/BnManager;-><init>(Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V

    iput-object p1, p0, Lcom/openmediation/sdk/banner/BannerAd;->mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-direct {v0, p1, p2}, Lcom/openmediation/sdk/core/imp/banner/BnManager;-><init>(Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V

    iput-object v0, p0, Lcom/openmediation/sdk/banner/BannerAd;->mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/banner/BannerAd;->mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->destroy()V

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/banner/BannerAd;->mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    :cond_0
    return-void
.end method

.method public setAdSize(Lcom/openmediation/sdk/banner/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/banner/BannerAd;->mBanner:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->setAdSize(Lcom/openmediation/sdk/banner/AdSize;)V

    :cond_0
    return-void
.end method
