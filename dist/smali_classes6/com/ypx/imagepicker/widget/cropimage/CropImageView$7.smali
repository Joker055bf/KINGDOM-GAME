.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->anim(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field final synthetic val$finalBottom:F

.field final synthetic val$finalLeft:F

.field final synthetic val$finalRight:F

.field final synthetic val$finalTop:F

.field final synthetic val$oldBottom:F

.field final synthetic val$oldLeft:F

.field final synthetic val$oldRight:F

.field final synthetic val$oldTop:F


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1547
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iput p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalLeft:F

    iput p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldLeft:F

    iput p4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalTop:F

    iput p5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldTop:F

    iput p6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalRight:F

    iput p7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldRight:F

    iput p8, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalBottom:F

    iput p9, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldBottom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1551
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalLeft:F

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldLeft:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1552
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalTop:F

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldTop:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1553
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalRight:F

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldRight:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1554
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$finalBottom:F

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->val$oldBottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1555
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$4102(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z

    .line 1556
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    .line 1557
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method
