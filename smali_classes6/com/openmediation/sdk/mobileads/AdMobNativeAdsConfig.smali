.class public Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;
.super Ljava/lang/Object;
.source "AdMobNativeAdsConfig.java"


# instance fields
.field private mAdLoader:Lcom/google/android/gms/ads/AdLoader;

.field private mAdMobNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private mUnifiedNativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdLoader()Lcom/google/android/gms/ads/AdLoader;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    return-object v0
.end method

.method public getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mAdMobNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-object v0
.end method

.method public getUnifiedNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mUnifiedNativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object v0
.end method

.method public setAdLoader(Lcom/google/android/gms/ads/AdLoader;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    return-void
.end method

.method public setAdMobNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mAdMobNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method

.method public setUnifiedNativeAdView(Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->mUnifiedNativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-void
.end method
