.class Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "AdMobSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Splash"

    const-string v3, "AdMobAdapter"

    .line 94
    invoke-static {v2, v3, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->access$200(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->access$300(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$adUnitId:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdLoadSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
