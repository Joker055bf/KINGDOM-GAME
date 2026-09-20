.class public Lcom/openmediation/sdk/nativead/NativeAd;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->addNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method public static destroy(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    return-void
.end method

.method public static loadAd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/OmManager;->loadNativeAd(Ljava/lang/String;)V

    return-void
.end method

.method public static registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/nativead/AdInfo;)V

    return-void
.end method

.method public static removeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/OmManager;->removeNativeAdListener(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method public static setDisplayParams(Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/OmManager;->setDisplayParams(Ljava/lang/String;II)V

    return-void
.end method
