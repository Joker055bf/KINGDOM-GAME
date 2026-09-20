.class public Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final MEDIUM_TEMPLATE_1:Ljava/lang/String; = "medium_template_1"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/FrameLayout;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/widget/FrameLayout;

.field private final i:Landroid/view/ViewGroup;

.field private final j:Landroid/view/ViewGroup;

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Landroid/widget/Button;

.field private m:Lcom/applovin/impl/mediation/ads/b;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V
    .locals 4

    .line 154
    invoke-direct {p0, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v0, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->templateType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 159
    :goto_1
    iget-object v3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->mainView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 161
    iget-object p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->mainView:Landroid/view/View;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->templateType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)I

    move-result v0

    goto :goto_2

    .line 171
    :cond_3
    iget v0, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->layoutResourceId:I

    .line 174
    :goto_2
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 175
    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    .line 178
    :goto_3
    iget-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->addView(Landroid/view/View;)V

    .line 180
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->titleTextViewId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    .line 181
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->advertiserTextViewId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    .line 182
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->bodyTextViewId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    .line 183
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->iconImageViewId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    .line 184
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->iconContentViewId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    .line 185
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->optionsContentViewGroupId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Landroid/view/ViewGroup;

    .line 186
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->optionsContentFrameLayoutId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    .line 187
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->starRatingContentViewGroupId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    .line 188
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->mediaContentViewGroupId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->j:Landroid/view/ViewGroup;

    .line 189
    iget p3, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->mediaContentFrameLayoutId:I

    invoke-virtual {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    .line 190
    iget p2, p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;->callToActionButtonId:I

    invoke-virtual {p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 194
    invoke-direct {p0, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 120
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    .line 121
    invoke-virtual {v0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTemplateType(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_title_text_view:I

    .line 122
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_advertiser_text_view:I

    .line 123
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_body_text_view:I

    .line 124
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_icon_image_view:I

    .line 125
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_icon_view:I

    .line 126
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconContentViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_options_view:I

    .line 127
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_options_view:I

    .line 128
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentFrameLayoutId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_star_rating_view:I

    .line 129
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setStarRatingContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_media_content_view:I

    .line 130
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_media_content_view:I

    .line 131
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentFrameLayoutId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_cta_button:I

    .line 132
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0, p1, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)I
    .locals 2

    .line 286
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, v0, :cond_2

    const-string/jumbo p2, "small_template_1"

    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 290
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_small_template_1:I

    return p1

    :cond_0
    const-string p2, "medium_template_1"

    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 294
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_medium_template_1:I

    return p1

    .line 298
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to render MAX native ad with invalid format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 301
    :cond_2
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, v0, :cond_7

    const-string/jumbo p2, "vertical_banner_template"

    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 305
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_vertical_banner_view:I

    return p1

    :cond_3
    const-string p2, "media_banner_template"

    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "no_body_banner_template"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p2, "vertical_media_banner_template"

    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 313
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_vertical_media_banner_view:I

    return p1

    .line 317
    :cond_5
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_banner_view:I

    return p1

    .line 309
    :cond_6
    :goto_0
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_media_banner_view:I

    return p1

    .line 320
    :cond_7
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, v0, :cond_9

    const-string/jumbo p2, "vertical_leader_template"

    .line 322
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 324
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_vertical_leader_view:I

    return p1

    .line 328
    :cond_8
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_leader_view:I

    return p1

    .line 331
    :cond_9
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, p1, :cond_a

    .line 333
    sget p1, Lcom/applovin/sdk/R$layout;->max_native_ad_mrec_view:I

    return p1

    .line 337
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported ad format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 4

    .line 612
    sget v0, Lcom/applovin/sdk/R$id;->applovin_native_inner_parent_layout:I

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 616
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 620
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 623
    new-instance v3, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$3;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "MaxNativeAdView"

    const-string v2, "Rendering template ad view without title text view"

    .line 345
    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    const/4 v2, 0x4

    if-eqz v0, :cond_7

    .line 373
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 380
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 382
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 393
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 400
    :cond_8
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v3, :cond_9

    goto :goto_4

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 402
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIcon()Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 415
    iget-object v3, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    if-eqz v3, :cond_10

    if-eqz v0, :cond_e

    .line 417
    iget-object v5, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    if-eqz v5, :cond_e

    .line 419
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 421
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 423
    :cond_c
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 425
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_6

    .line 429
    :cond_d
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_f

    .line 434
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 436
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 440
    :cond_f
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 444
    :cond_10
    :goto_6
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getOptionsView()Landroid/view/View;

    move-result-object v0

    .line 445
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    .line 447
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_7

    :cond_11
    if-eqz v2, :cond_12

    .line 453
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 456
    :cond_12
    :goto_7
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Landroid/view/View;

    move-result-object v0

    .line 457
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    if-eqz v0, :cond_13

    .line 461
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 465
    :cond_13
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v2, :cond_14

    .line 467
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    :cond_14
    :goto_8
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 474
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 477
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 479
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;

    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;-><init>(Ljava/lang/Double;Landroid/content/Context;)V

    .line 480
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 486
    :cond_15
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    :cond_16
    :goto_9
    invoke-direct {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a()V

    .line 493
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$2;

    invoke-direct {p1, p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$2;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->m:Lcom/applovin/impl/mediation/ads/b;

    return-object v0
.end method

.method public getAdvertiserTextView()Landroid/widget/TextView;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBodyTextView()Landroid/widget/TextView;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallToActionButton()Landroid/widget/Button;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    return-object v0
.end method

.method public getClickableViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 763
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_2
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_3
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getIconContentView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getMediaContentView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMediaContentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->k:Landroid/widget/FrameLayout;

    :goto_0
    return-object v0
.end method

.method public getOptionsContentView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOptionsContentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Landroid/widget/FrameLayout;

    :goto_0
    return-object v0
.end method

.method public getStarRatingContentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 742
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 744
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->m:Lcom/applovin/impl/mediation/ads/b;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/ads/b;->b()V

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MaxNativeAdView"

    const-string v1, "Attached to non-hardware accelerated window: some native ad views require hardware accelerated Activities to render properly."

    .line 752
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->m:Lcom/applovin/impl/mediation/ads/b;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/ads/b;->a()V

    .line 256
    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->m:Lcom/applovin/impl/mediation/ads/b;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 268
    invoke-virtual {p0, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->removeView(Landroid/view/View;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public render(Lcom/applovin/impl/mediation/a/d;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/impl/sdk/p;)V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->recycle()V

    .line 210
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->H()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->G()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Lcom/applovin/impl/mediation/ads/b;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/applovin/impl/mediation/ads/b;-><init>(Lcom/applovin/impl/mediation/a/d;Landroid/view/ViewGroup;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->m:Lcom/applovin/impl/mediation/ads/b;

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object p2

    .line 218
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->E()Z

    move-result v0

    const-string v1, "MaxNativeAdView"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->isContainerClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "Enabling container click"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$1;

    invoke-direct {v0, p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView$1;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 234
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p3, "Rendering template ad view"

    invoke-virtual {p1, v1, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_4
    invoke-direct {p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    goto :goto_0

    .line 239
    :cond_5
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p3, "Rendering custom ad view"

    invoke-virtual {p1, v1, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_6
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->renderCustomNativeAdView(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V

    :goto_0
    return-void
.end method

.method public renderCustomNativeAdView(Lcom/applovin/mediation/nativeAds/MaxNativeAd;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->l:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIcon()Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 536
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 538
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 540
    :cond_4
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 542
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 551
    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Landroid/view/View;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->j:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    .line 558
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v0, :cond_9

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 566
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 569
    :cond_8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 574
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getOptionsView()Landroid/view/View;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 577
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v0, :cond_b

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 585
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 588
    :cond_a
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 594
    :cond_b
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 596
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 598
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 601
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;

    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;-><init>(Ljava/lang/Double;Landroid/content/Context;)V

    .line 602
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinStarRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    return-void
.end method
