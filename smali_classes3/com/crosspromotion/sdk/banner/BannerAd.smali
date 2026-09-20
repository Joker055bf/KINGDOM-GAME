.class public Lcom/crosspromotion/sdk/banner/BannerAd;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mBannerImp:Lcom/openmediation/sdk/a/c;

.field private mScreenVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mScreenVisibility:I

    new-instance p1, Lcom/openmediation/sdk/a/c;

    invoke-direct {p1, p2, p0}, Lcom/openmediation/sdk/a/c;-><init>(Ljava/lang/String;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/c;->f()V

    return-void
.end method

.method public loadAdWithPayload(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/crosspromotion/sdk/core/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mScreenVisibility:I

    invoke-static {v0, p1}, Lcom/crosspromotion/sdk/utils/Visibility;->hasScreenVisibilityChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mScreenVisibility:I

    iget-object v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/c;->a(I)V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/c;->a(Lcom/crosspromotion/sdk/banner/BannerAdListener;)V

    return-void
.end method

.method public setAdSize(Lcom/crosspromotion/sdk/banner/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/banner/BannerAd;->mBannerImp:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/c;->a(Lcom/crosspromotion/sdk/banner/AdSize;)V

    return-void
.end method
