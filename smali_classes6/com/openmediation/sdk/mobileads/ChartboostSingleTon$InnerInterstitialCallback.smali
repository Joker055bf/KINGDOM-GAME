.class Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;
.super Ljava/lang/Object;
.source "ChartboostSingleTon.java"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/InterstitialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerInterstitialCallback"
.end annotation


# instance fields
.field mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

.field mAdUnitId:Ljava/lang/String;

.field mInterstitial:Lcom/chartboost/sdk/ads/Interstitial;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;


# direct methods
.method public constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V
    .locals 2

    .line 273
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onAdClicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ClickError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_1

    .line 278
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V

    :cond_1
    return-void
.end method

.method public onAdDismiss(Lcom/chartboost/sdk/events/DismissEvent;)V
    .locals 2

    .line 327
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onAdDismiss: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 329
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V
    .locals 2

    .line 284
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onAdLoaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CacheError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 286
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    const-string v0, "ChartboostAdapter"

    .line 288
    invoke-virtual {p2}, Lcom/chartboost/sdk/events/CacheError;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Interstitial"

    .line 287
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mInterstitial:Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mInterstitial:Lcom/chartboost/sdk/ads/Interstitial;

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_3

    .line 296
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_3
    return-void
.end method

.method public onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V
    .locals 2

    .line 302
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onAdRequestedToShow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V
    .locals 2

    .line 307
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onAdShown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ShowError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 309
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    const-string v0, "ChartboostAdapter"

    .line 311
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Interstitial"

    .line 310
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_2

    .line 316
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V

    :cond_2
    return-void
.end method

.method public onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V
    .locals 2

    .line 322
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd onImpressionRecorded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInterstitialAd(Ljava/lang/String;Lcom/chartboost/sdk/ads/Interstitial;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdUnitId:Ljava/lang/String;

    .line 267
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mInterstitial:Lcom/chartboost/sdk/ads/Interstitial;

    .line 268
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerInterstitialCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    return-void
.end method
