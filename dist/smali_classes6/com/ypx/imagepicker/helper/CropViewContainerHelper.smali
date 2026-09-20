.class public Lcom/ypx/imagepicker/helper/CropViewContainerHelper;
.super Ljava/lang/Object;
.source "CropViewContainerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;,
        Lcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;
    }
.end annotation


# instance fields
.field private cropViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            "Lcom/ypx/imagepicker/widget/cropimage/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field private parentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->parentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getParent()Landroid/view/ViewGroup;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->parentReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->parentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addCropView(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public generateCropUrls(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 140
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    if-nez v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->requestLayout()V

    .line 146
    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v3

    sget v4, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_GAP:I

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    .line 147
    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmapFromView(I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 151
    :goto_1
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "crop_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 151
    invoke-static {v2, v3, v4, v5}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->saveBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 155
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 157
    :cond_2
    invoke-virtual {v1, v2}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropUrl(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, p2}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lcom/ypx/imagepicker/bean/ImageItem;->setPress(Z)V

    goto :goto_0

    .line 161
    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public loadCropView(Landroid/content/Context;Lcom/ypx/imagepicker/bean/ImageItem;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
    .locals 2

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 59
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iput-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    .line 64
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->enable()V

    .line 66
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setMaxScale(F)V

    .line 67
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCanShowTouchLine(Z)V

    .line 68
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setShowImageRectLine(Z)V

    .line 69
    iget p1, p2, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    if-nez p1, :cond_2

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    new-instance v1, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;

    invoke-direct {v1, p0, p2, p5}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;-><init>(Lcom/ypx/imagepicker/helper/CropViewContainerHelper;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;)V

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setOnImageLoadListener(Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;)V

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, p1, p4, p2}, Lcom/ypx/imagepicker/helper/DetailImageLoadHelper;->displayDetailImage(ZLandroid/widget/ImageView;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->getParent()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->getParent()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 88
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 92
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->getParent()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    return-object p1
.end method

.method public refreshAllState(Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/List;Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p5, :cond_2

    .line 126
    invoke-interface {p5, v1}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;->resetAllCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 129
    sget v2, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 130
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    .line 135
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public removeCropView(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->cropViewList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
