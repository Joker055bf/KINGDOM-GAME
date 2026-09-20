.class public Lcom/ypx/imagepicker/helper/DetailImageLoadHelper;
.super Ljava/lang/Object;
.source "DetailImageLoadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayDetailImage(ZLandroid/widget/ImageView;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    if-eqz p2, :cond_2

    if-nez p0, :cond_1

    .line 16
    invoke-static {}, Lcom/ypx/imagepicker/ImagePicker;->isPreviewWithHighQuality()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/ImageItem;->isOver2KImage()Z

    move-result v0

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, p0, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    :cond_2
    :goto_1
    return-void
.end method
