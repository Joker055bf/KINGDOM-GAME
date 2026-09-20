.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FbIsAdListener"
.end annotation


# instance fields
.field private isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 669
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 670
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 662
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 663
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 654
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Interstitial"

    const-string v2, "FacebookAdapter"

    .line 655
    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialActivityDestroyed()V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 647
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 648
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 676
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbIsAdListener;->isCallback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 677
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowSuccess()V

    :cond_0
    return-void
.end method

.method public onRewardedAdCompleted()V
    .locals 0

    return-void
.end method

.method public onRewardedAdServerFailed()V
    .locals 0

    return-void
.end method

.method public onRewardedAdServerSucceeded()V
    .locals 0

    return-void
.end method
