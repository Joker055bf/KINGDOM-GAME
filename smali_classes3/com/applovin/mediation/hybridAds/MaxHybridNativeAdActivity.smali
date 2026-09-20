.class public Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;
.super Lcom/applovin/mediation/hybridAds/b;
.source "SourceFile"


# instance fields
.field private c:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/applovin/mediation/hybridAds/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->c:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p3, p4}, Lcom/applovin/mediation/hybridAds/b;->a(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    .line 29
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget p4, Lcom/applovin/sdk/R$layout;->max_hybrid_native_ad_view:I

    invoke-direct {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_title_text_view:I

    .line 30
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_body_text_view:I

    .line 31
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_advertiser_text_view:I

    .line 32
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_icon_image_view:I

    .line 33
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_media_content_view:I

    .line 34
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_options_view:I

    .line 35
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget p4, Lcom/applovin/sdk/R$id;->applovin_native_cta_button:I

    .line 36
    invoke-virtual {p1, p4}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    .line 38
    new-instance p4, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-direct {p4, p2, p1, p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    iput-object p4, p0, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->c:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 39
    invoke-virtual {p4, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->renderCustomNativeAdView(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    .line 41
    new-instance p1, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity$1;

    invoke-direct {p1, p0, p2}, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity$1;-><init>(Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    .line 55
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->shouldPrepareViewForInteractionOnMainThread()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p2

    new-instance p4, Lcom/applovin/impl/sdk/e/z;

    invoke-direct {p4, p3, p1}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/sdk/e/o$a;->k:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p2, p4, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/applovin/mediation/hybridAds/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 70
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->c:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;->a:Lcom/applovin/mediation/hybridAds/a;

    invoke-virtual {p1}, Lcom/applovin/mediation/hybridAds/a;->bringToFront()V

    return-void
.end method
