.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Native"

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v2, :cond_0

    .line 633
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 634
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 638
    :cond_1
    new-instance v1, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    invoke-direct {v1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;-><init>()V

    .line 639
    new-instance v2, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 640
    new-instance v3, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;

    invoke-direct {v3, p0, v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 662
    new-instance v3, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    const/4 v4, 0x0

    .line 664
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 665
    invoke-virtual {v3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    .line 666
    invoke-static {v3, v4}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/NativeAdCallback;)Lcom/google/android/gms/ads/AdListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v2

    .line 667
    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->setAdLoader(Lcom/google/android/gms/ads/AdLoader;)V

    .line 668
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 670
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v2, :cond_2

    .line 671
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 672
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

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

    .line 671
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method
