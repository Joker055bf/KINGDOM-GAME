.class public abstract Lcom/ypx/imagepicker/views/base/SingleCropControllerView;
.super Lcom/ypx/imagepicker/views/base/PBaseLayout;
.source "SingleCropControllerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract getCompleteView()Landroid/view/View;
.end method

.method public abstract setCropViewParams(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/view/ViewGroup$MarginLayoutParams;)V
.end method

.method public abstract setStatusBar()V
.end method
