.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmapFromView(I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setShowImageRectLine(Z)V

    .line 1385
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$4002(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 1386
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method
