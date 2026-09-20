.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createBannerAdListener(Lcom/google/android/gms/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adView:Lcom/google/android/gms/ads/AdView;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 948
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 949
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "BannerAd onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 972
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 973
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "BannerAd onAdClosed"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 938
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 939
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAd onAdFailedToLoad : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdMobAdapter"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 941
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 942
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$5000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Banner"

    .line 941
    invoke-static {v3, v1, v2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 3

    .line 954
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 955
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "BannerAd onAdImpression"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 957
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdImpression()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 929
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 930
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "BannerAd onAdLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 932
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadSuccess(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 963
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 964
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "BannerAd onAdOpened"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdAdClicked()V

    :cond_0
    return-void
.end method
