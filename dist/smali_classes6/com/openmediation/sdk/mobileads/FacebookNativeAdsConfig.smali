.class public Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;
.super Ljava/lang/Object;
.source "FacebookNativeAdsConfig.java"


# instance fields
.field private adOptionsView:Lcom/facebook/ads/AdOptionsView;

.field private iconView:Lcom/facebook/ads/MediaView;

.field private mediaView:Lcom/facebook/ads/MediaView;

.field private nativeAd:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdOptionsView()Lcom/facebook/ads/AdOptionsView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->adOptionsView:Lcom/facebook/ads/AdOptionsView;

    return-object v0
.end method

.method public getIconView()Lcom/facebook/ads/MediaView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->iconView:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getMediaView()Lcom/facebook/ads/MediaView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->mediaView:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getNativeAd()Lcom/facebook/ads/NativeAd;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method public setAdOptionsView(Lcom/facebook/ads/AdOptionsView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->adOptionsView:Lcom/facebook/ads/AdOptionsView;

    return-void
.end method

.method public setIconView(Lcom/facebook/ads/MediaView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->iconView:Lcom/facebook/ads/MediaView;

    return-void
.end method

.method public setMediaView(Lcom/facebook/ads/MediaView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->mediaView:Lcom/facebook/ads/MediaView;

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookNativeAdsConfig;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-void
.end method
