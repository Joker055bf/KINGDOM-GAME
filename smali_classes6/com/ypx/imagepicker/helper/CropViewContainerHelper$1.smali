.class Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;
.super Ljava/lang/Object;
.source "CropViewContainerHelper.java"

# interfaces
.implements Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->loadCropView(Landroid/content/Context;Lcom/ypx/imagepicker/bean/ImageItem;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

.field final synthetic val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field final synthetic val$loadComplete:Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/CropViewContainerHelper;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->this$0:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    iput-object p2, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object p3, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->val$loadComplete:Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(FF)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    float-to-int p1, p1

    iput p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 74
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    float-to-int p2, p2

    iput p2, p1, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 75
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$1;->val$loadComplete:Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;->loadComplete()V

    :cond_0
    return-void
.end method
