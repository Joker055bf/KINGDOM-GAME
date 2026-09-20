.class Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;
.super Ljava/lang/Object;
.source "RecyclerViewTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->transitTopWithAnim(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

.field final synthetic val$endTop:I

.field final synthetic val$scrollToPosition:I

.field final synthetic val$startAlpha:F

.field final synthetic val$startPadding:I

.field final synthetic val$startTop:I


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;IIFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    iput p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$endTop:I

    iput p3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startTop:I

    iput p4, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startAlpha:F

    iput p5, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startPadding:I

    iput p6, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$scrollToPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 318
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 319
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$endTop:I

    iget v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 320
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 321
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$endTop:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startAlpha:F

    neg-float v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startAlpha:F

    sub-float v2, v1, v0

    :goto_0
    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    .line 322
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    .line 323
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$endTop:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$800(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$startPadding:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 324
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v2, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 326
    iget p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$scrollToPosition:I

    if-nez p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->scrollToPosition(I)V

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 329
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    move-result-object p1

    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;->val$scrollToPosition:I

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->smoothScrollToPosition(I)V

    :cond_3
    :goto_2
    return-void
.end method
