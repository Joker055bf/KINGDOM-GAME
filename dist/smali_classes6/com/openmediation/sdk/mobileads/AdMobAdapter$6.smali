.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createRvCallback(Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/FullScreenContentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 347
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 348
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "RewardedAd onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 3

    .line 337
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 338
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "RewardedAd onAdDismissedFullScreenContent"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    .line 341
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 4

    .line 317
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 318
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "RewardedAd onAdFailedToShowFullScreenContent"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 321
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Rewarded Video"

    .line 320
    invoke-static {v3, v1, v2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 3

    .line 327
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 328
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "AdMobAdapter"

    const-string v2, "RewardedAd onAdShowedFullScreenContent"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    .line 331
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method
