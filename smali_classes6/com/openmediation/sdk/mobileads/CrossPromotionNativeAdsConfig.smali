.class public Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;
.super Ljava/lang/Object;


# instance fields
.field private mAd:Lcom/crosspromotion/sdk/nativead/Ad;

.field private mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/crosspromotion/sdk/nativead/Ad;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->mAd:Lcom/crosspromotion/sdk/nativead/Ad;

    return-object v0
.end method

.method public getNativeAd()Lcom/crosspromotion/sdk/nativead/NativeAd;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;

    return-object v0
.end method

.method public setContent(Lcom/crosspromotion/sdk/nativead/Ad;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->mAd:Lcom/crosspromotion/sdk/nativead/Ad;

    return-void
.end method

.method public setNativeAd(Lcom/crosspromotion/sdk/nativead/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->mNativeAd:Lcom/crosspromotion/sdk/nativead/NativeAd;

    return-void
.end method
