.class public Lcom/openmediation/sdk/nativead/NativeAdView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private adIconView:Lcom/openmediation/sdk/nativead/AdIconView;

.field private callToActionView:Landroid/view/View;

.field private descView:Landroid/view/View;

.field private mediaView:Lcom/openmediation/sdk/nativead/MediaView;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->adIconView:Lcom/openmediation/sdk/nativead/AdIconView;

    return-object v0
.end method

.method public getCallToActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->callToActionView:Landroid/view/View;

    return-object v0
.end method

.method public getDescView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->descView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaView()Lcom/openmediation/sdk/nativead/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->mediaView:Lcom/openmediation/sdk/nativead/MediaView;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->titleView:Landroid/view/View;

    return-object v0
.end method

.method public setAdIconView(Lcom/openmediation/sdk/nativead/AdIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->adIconView:Lcom/openmediation/sdk/nativead/AdIconView;

    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->callToActionView:Landroid/view/View;

    return-void
.end method

.method public setDescView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->descView:Landroid/view/View;

    return-void
.end method

.method public setMediaView(Lcom/openmediation/sdk/nativead/MediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->mediaView:Lcom/openmediation/sdk/nativead/MediaView;

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/NativeAdView;->titleView:Landroid/view/View;

    return-void
.end method
