.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

.field final synthetic val$config:Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->val$config:Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->val$config:Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->setAdMobNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 645
    new-instance v0, Lcom/openmediation/sdk/mediation/AdnAdInfo;

    invoke-direct {v0}, Lcom/openmediation/sdk/mediation/AdnAdInfo;-><init>()V

    .line 646
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->val$config:Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setAdnNativeAd(Ljava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iget-object v1, v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-virtual {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->getAdNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setType(I)V

    .line 648
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setTitle(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setDesc(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->setCallToActionText(Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iget-object p1, p1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz p1, :cond_0

    .line 652
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iget-object p1, p1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadSuccess(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 655
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13$1;->this$1:Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    const-string v1, "AdMobAdapter"

    .line 657
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Native"

    .line 656
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    :goto_0
    return-void
.end method
