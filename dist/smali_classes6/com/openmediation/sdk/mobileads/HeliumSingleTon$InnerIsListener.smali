.class Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;
.super Ljava/lang/Object;
.source "HeliumSingleTon.java"

# interfaces
.implements Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerIsListener"
.end annotation


# instance fields
.field private final mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

.field private final mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

.field private mHeliumInterstitialAd:Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    .line 283
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method


# virtual methods
.method public onAdCached(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;",
            ")V"
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Helium Interstitial onAdCached, placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    if-nez p4, :cond_1

    .line 294
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$800(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mHeliumInterstitialAd:Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p2, :cond_0

    .line 296
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0, p3, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    .line 298
    :cond_0
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    if-eqz p2, :cond_1

    .line 299
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0, p3, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    :cond_1
    if-eqz p4, :cond_4

    .line 304
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Helium Interstitial onAdCached failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V

    .line 307
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    const-string p2, "HeliumAdapter"

    .line 308
    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Interstitial"

    .line 307
    invoke-static {v0, p2, p3}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    if-eqz p1, :cond_3

    .line 311
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V

    :cond_3
    return-void

    .line 315
    :cond_4
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Helium Interstitial onAdCached: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_5

    .line 317
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_5
    return-void
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 3

    .line 323
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium Interstitial onAdClicked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;->didInterstitialClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 3

    .line 331
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium Interstitial onAdClosed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 332
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 333
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;->didInterstitialClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdImpressionRecorded(Ljava/lang/String;)V
    .locals 3

    .line 339
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium Interstitial onAdImpressionRecorded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdShown(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 350
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium Interstitial onAdShown failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;->didInterstitialShowFailed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V

    :cond_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Helium Interstitial onAdShown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 358
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$900(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mobileads/HeliumInterstitialCallback;->didInterstitialShowed(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setHeliumAd(Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerIsListener;->mHeliumInterstitialAd:Lcom/chartboost/heliumsdk/ad/HeliumInterstitialAd;

    return-void
.end method
