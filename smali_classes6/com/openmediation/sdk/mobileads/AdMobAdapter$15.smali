.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createInterstitialListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 872
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 873
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 875
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 876
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Interstitial"

    .line 875
    invoke-static {v3, v1, v2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 2

    .line 863
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 866
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 860
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
