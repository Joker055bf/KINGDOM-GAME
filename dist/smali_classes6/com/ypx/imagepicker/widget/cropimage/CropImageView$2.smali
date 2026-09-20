.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;


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

    .line 858
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(FFF)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$116(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    .line 862
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$316(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    .line 864
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    .line 867
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 868
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$102(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    :cond_1
    :goto_0
    return-void
.end method
