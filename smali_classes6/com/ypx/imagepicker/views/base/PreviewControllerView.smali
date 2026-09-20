.class public abstract Lcom/ypx/imagepicker/views/base/PreviewControllerView;
.super Lcom/ypx/imagepicker/views/base/PBaseLayout;
.source "PreviewControllerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract getCompleteView()Landroid/view/View;
.end method

.method public getExoPlayerViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIjkPlayerViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lxyz/doikki/videoplayer/player/VideoView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemView(Landroidx/fragment/app/Fragment;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 114
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 117
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;-><init>(Landroid/content/Context;)V

    .line 119
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBounceEnable(Z)V

    .line 122
    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->enable()V

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setShowImageRectLine(Z)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCanShowTouchLine(Z)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 125
    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setMaxScale(F)V

    .line 126
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xd

    .line 135
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    :goto_0
    new-instance v2, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;

    invoke-direct {v2, p0, p2}, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;-><init>(Lcom/ypx/imagepicker/views/base/PreviewControllerView;Lcom/ypx/imagepicker/bean/ImageItem;)V

    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-static {v1, v0, p3, p2}, Lcom/ypx/imagepicker/helper/DetailImageLoadHelper;->displayDetailImage(ZLandroid/widget/ImageView;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-object p1
.end method

.method public abstract initData(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            "Lcom/ypx/imagepicker/views/PickerUiConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPageSelected(ILcom/ypx/imagepicker/bean/ImageItem;I)V
.end method

.method public abstract setStatusBar()V
.end method

.method public abstract singleTap()V
.end method
