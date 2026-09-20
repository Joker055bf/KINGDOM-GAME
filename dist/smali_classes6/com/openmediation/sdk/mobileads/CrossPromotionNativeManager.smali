.class public Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;,
        Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$Holder;
    }
.end annotation


# static fields
.field private static final PAY_LOAD:Ljava/lang/String; = "pay_load"

.field private static final TAG:Ljava/lang/String; = "OM-CrossPromotion: "


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$Holder;->access$100()Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->getNativeAd()Lcom/crosspromotion/sdk/nativead/NativeAd;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->getNativeAd()Lcom/crosspromotion/sdk/nativead/NativeAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/nativead/NativeAd;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadAd(Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "pay_load"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string p2, "OM-CrossPromotion: "

    const-string v0, "NativeAd load failed: payload is empty"

    invoke-virtual {p1, p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "CrossPromotionAdapter"

    const-string p2, "payload is empty"

    const-string v0, "Native"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_1
    return-void

    :cond_2
    new-instance v7, Lcom/crosspromotion/sdk/nativead/NativeAd;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, p1}, Lcom/crosspromotion/sdk/nativead/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$InnerNativeAdListener;-><init>(Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager;Lcom/crosspromotion/sdk/nativead/NativeAd;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;Lcom/openmediation/sdk/mobileads/CrossPromotionNativeManager$1;)V

    invoke-virtual {v7, v8}, Lcom/crosspromotion/sdk/nativead/NativeAd;->setAdListener(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V

    invoke-virtual {v7, v0, p2}, Lcom/crosspromotion/sdk/nativead/NativeAd;->loadAdWithPayload(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public registerNativeView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->getContent()Lcom/crosspromotion/sdk/nativead/Ad;

    move-result-object p3

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object p4

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/crosspromotion/sdk/nativead/Ad;->getContent()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/crosspromotion/sdk/nativead/Ad;->getContent()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v0, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v0, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/crosspromotion/sdk/nativead/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/crosspromotion/sdk/nativead/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/CrossPromotionNativeAdsConfig;->getNativeAd()Lcom/crosspromotion/sdk/nativead/NativeAd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/crosspromotion/sdk/nativead/NativeAd;->registerNativeAdView(Lcom/openmediation/sdk/nativead/NativeAdView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
