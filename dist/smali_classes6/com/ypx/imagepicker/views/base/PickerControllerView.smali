.class public abstract Lcom/ypx/imagepicker/views/base/PickerControllerView;
.super Lcom/ypx/imagepicker/views/base/PBaseLayout;
.source "PickerControllerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract getCanClickToCompleteView()Landroid/view/View;
.end method

.method public abstract getCanClickToIntentPreviewView()Landroid/view/View;
.end method

.method public abstract getCanClickToToggleFolderListView()Landroid/view/View;
.end method

.method public abstract getViewHeight()I
.end method

.method public isAddInParent()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V
.end method

.method public abstract onTransitImageSet(Z)V
.end method

.method public abstract refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
