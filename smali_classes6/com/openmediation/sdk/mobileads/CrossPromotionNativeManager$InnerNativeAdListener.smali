.class Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crosspromotion/sdk/nativead/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerNativeAdListener"
.end annotation


# instance fields
.field private mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

.field private mAdUnitId:Ljava/lang/String;

.field private mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;Lcom/crosspromotion/sdk/nativead/NativeAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->this$0:Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;Lcom/crosspromotion/sdk/nativead/NativeAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;-><init>(Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;Lcom/crosspromotion/sdk/nativead/NativeAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    return-void
.end method


# virtual methods
.method public onNativeAdClicked(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onNativeAdFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/utils/error/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Native"

    const-string v2, "CrossPromotionAdapter"

    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public onNativeAdReady(Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V
    .locals 2

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-string p2, "CrossPromotionAdapter"

    const-string v0, "NativeAd Load Failed: No Fill"

    const-string v1, "Native"

    invoke-static {v1, p2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    invoke-direct {p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;-><init>()V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/nativead/Ad;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/nativead/AdInfo;->setDesc(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/nativead/AdInfo;->setType(I)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/nativead/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/nativead/AdInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/nativead/Ad;->getCTA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/nativead/AdInfo;->setCallToActionText(Ljava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;

    invoke-direct {v0}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;-><init>()V

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->setContent(Lcom/crosspromotion/sdk/nativead/Ad;)V

    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->setNativeAd(Lcom/crosspromotion/sdk/nativead/NativeAd;)V

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setAdnNativeAd(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadSuccess(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    :cond_2
    return-void
.end method

.method public onNativeAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 0

    return-void
.end method

.method public onNativeAdShowed(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAd onNativeAdShowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OM-CrossPromotion: "

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdImpression()V

    :cond_0
    return-void
.end method
