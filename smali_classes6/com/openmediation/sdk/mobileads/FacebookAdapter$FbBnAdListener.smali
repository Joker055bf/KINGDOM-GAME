.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FbBnAdListener"
.end annotation


# instance fields
.field private adView:Lcom/facebook/ads/AdView;

.field private callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->adView:Lcom/facebook/ads/AdView;

    .line 711
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 731
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 732
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 724
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->adView:Lcom/facebook/ads/AdView;

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadSuccess(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 716
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Banner"

    const-string v2, "FacebookAdapter"

    .line 717
    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 738
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbBnAdListener;->callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 739
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdImpression()V

    :cond_0
    return-void
.end method
