.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createNativeAdListener(Lcom/openmediation/sdk/mediation/NativeAdCallback;)Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 991
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 992
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v0, :cond_0

    .line 993
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 982
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 983
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v0, :cond_0

    .line 984
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 985
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$5100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Native"

    .line 984
    invoke-static {v3, v1, v2, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 999
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 1000
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;->val$callback:Lcom/openmediation/sdk/mediation/NativeAdCallback;

    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdImpression()V

    :cond_0
    return-void
.end method
