.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
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

    .line 874
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 877
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 879
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-lez v1, :cond_1

    return v2

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$632(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    .line 887
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 888
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 889
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    return v2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
