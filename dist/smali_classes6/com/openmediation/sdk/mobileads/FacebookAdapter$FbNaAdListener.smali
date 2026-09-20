.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FbNaAdListener"
.end annotation


# instance fields
.field private callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

.field private nativeAd:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    .line 751
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 784
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    .line 785
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 769
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    .line 770
    new-instance p1, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;

    invoke-direct {p1}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;-><init>()V

    .line 771
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 772
    new-instance v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    invoke-direct {v0}, Lcom/openmediation/sdk/mediation/AdnAdInfo;-><init>()V

    .line 773
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setAdnNativeAd(Ljava/lang/Object;)V

    .line 774
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setDesc(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 775
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setType(I)V

    .line 776
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setCallToActionText(Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setTitle(Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadSuccess(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 761
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Native"

    const-string v2, "FacebookAdapter"

    .line 762
    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 791
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "FacebookAdapter"

    const-string v1, "NativeAd onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbNaAdListener;->callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    .line 793
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdImpression()V

    :cond_0
    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
