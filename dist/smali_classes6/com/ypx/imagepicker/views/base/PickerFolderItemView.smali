.class public abstract Lcom/ypx/imagepicker/views/base/PickerFolderItemView;
.super Lcom/ypx/imagepicker/views/base/PBaseLayout;
.source "PickerFolderItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract displayCoverImage(Lcom/ypx/imagepicker/bean/ImageSet;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V
.end method

.method public abstract getItemHeight()I
.end method

.method public abstract loadItem(Lcom/ypx/imagepicker/bean/ImageSet;)V
.end method
