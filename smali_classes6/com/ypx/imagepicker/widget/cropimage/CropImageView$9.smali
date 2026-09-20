.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->changeSize(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field final synthetic val$endHeight:I

.field final synthetic val$endWidth:I

.field final synthetic val$startHeight:I

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1577
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iput p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$endWidth:I

    iput p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$startWidth:I

    iput p4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$endHeight:I

    iput p5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$startHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1580
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1581
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1582
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$endWidth:I

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$startWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1583
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$endHeight:I

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->val$startHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1584
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1585
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
