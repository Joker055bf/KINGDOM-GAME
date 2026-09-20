.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CropImageView.java"


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

    .line 949
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1061
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->stop()V

    .line 1066
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1067
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 1069
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1070
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1071
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2002(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    .line 1072
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2502(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    .line 1074
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 1075
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result p1

    goto :goto_0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v0

    .line 1079
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v3

    .line 1080
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v4, v5, p1}, Landroid/graphics/PointF;->set(FF)V

    move p1, v0

    .line 1083
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1084
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1085
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1086
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1087
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v2

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1088
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1089
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1090
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1091
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/graphics/RectF;)V

    .line 1093
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withScale(FF)V

    .line 1095
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->start()V

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 959
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 960
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1302(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 961
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 962
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 968
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    if-eqz v0, :cond_2

    return v1

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 979
    :goto_1
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, p4

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v1

    .line 983
    :goto_3
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v3

    rem-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_a

    .line 984
    :cond_7
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    .line 985
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v3

    rem-float/2addr v3, v4

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    add-float/2addr v1, v4

    goto :goto_4

    :cond_8
    const/high16 v5, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    sub-float/2addr v1, v4

    .line 992
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object v3

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withRotate(II)V

    .line 993
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$302(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    .line 995
    :cond_a
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withFling(FF)V

    .line 996
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 952
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 953
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1002
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    if-eqz p1, :cond_0

    .line 1003
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->stop()V

    .line 1005
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1, p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canScrollHorizontallySelf(F)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    cmpg-float p1, p3, v0

    if-gez p1, :cond_1

    .line 1006
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 1007
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p3, p1, Landroid/graphics/RectF;->left:F

    :cond_1
    cmpl-float p1, p3, v0

    if-lez p1, :cond_2

    .line 1008
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float p3, p1, p3

    .line 1011
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float v1, p3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1012
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2024(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    goto/16 :goto_0

    .line 1013
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1014
    :cond_4
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    .line 1015
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    cmpg-float p1, p3, v0

    if-gez p1, :cond_6

    .line 1016
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    .line 1017
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F

    move-result p3

    :cond_6
    cmpl-float p1, p3, v0

    if-lez p1, :cond_7

    .line 1018
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    .line 1019
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F

    move-result p3

    .line 1022
    :cond_7
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2024(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    .line 1023
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1024
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 1027
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1, p4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canScrollVerticallySelf(F)Z

    move-result p1

    if-eqz p1, :cond_b

    cmpg-float p1, p4, v0

    if-gez p1, :cond_9

    .line 1028
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_9

    .line 1029
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p4, p1, Landroid/graphics/RectF;->top:F

    :cond_9
    cmpl-float p1, p4, v0

    if-lez p1, :cond_a

    .line 1030
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_a

    .line 1031
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float p4, p1, p3

    .line 1033
    :cond_a
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1034
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2524(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    goto/16 :goto_1

    .line 1035
    :cond_b
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1036
    :cond_c
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    .line 1037
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_d
    cmpg-float p1, p4, v0

    if-gez p1, :cond_e

    .line 1038
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_e

    .line 1039
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F

    move-result p4

    :cond_e
    cmpl-float p1, p4, v0

    if-lez p1, :cond_f

    .line 1040
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_f

    .line 1041
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F

    move-result p4

    .line 1044
    :cond_f
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1045
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2524(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    .line 1046
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 1049
    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1055
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method
