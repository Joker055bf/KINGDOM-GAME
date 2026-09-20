.class Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crosspromotion/sdk/banner/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerBannerAdListener"
.end annotation


# instance fields
.field private mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

.field private mAdUnitId:Ljava/lang/String;

.field private mBannerAd:Lcom/crosspromotion/sdk/banner/BannerAd;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;Lcom/crosspromotion/sdk/banner/BannerAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mBannerAd:Lcom/crosspromotion/sdk/banner/BannerAd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;Lcom/crosspromotion/sdk/banner/BannerAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;-><init>(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;Lcom/crosspromotion/sdk/banner/BannerAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onBannerAdFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->access$300(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Banner"

    const-string v2, "CrossPromotionAdapter"

    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onBannerAdReady(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;->access$300(Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mBannerAd:Lcom/crosspromotion/sdk/banner/BannerAd;

    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadSuccess(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBannerAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method
