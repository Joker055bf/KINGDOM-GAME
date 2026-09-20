.class Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdMobSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 199
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 182
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdDismissed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 4

    .line 189
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 190
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Splash"

    const-string v3, "AdMobAdapter"

    .line 191
    invoke-static {v2, v3, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 207
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowSuccess()V

    :cond_0
    return-void
.end method
