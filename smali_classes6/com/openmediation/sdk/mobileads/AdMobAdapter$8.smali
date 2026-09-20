.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
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

    .line 405
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "Interstitial"

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v2, :cond_0

    .line 412
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 413
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v1, :cond_2

    .line 419
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_2
    return-void

    .line 423
    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$adUnitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v5, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$adUnitId:Ljava/lang/String;

    iget-object v6, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-static {v4, v5, v6}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 425
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v2, :cond_4

    .line 426
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 427
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown Error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method
