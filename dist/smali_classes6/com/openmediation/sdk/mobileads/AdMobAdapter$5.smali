.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createRvLoadListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 302
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 303
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 306
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Rewarded Video"

    .line 305
    invoke-static {v3, v1, v2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 2

    .line 294
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 292
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
