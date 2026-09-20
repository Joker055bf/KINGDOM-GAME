.class Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;
.super Ljava/lang/Object;
.source "RecyclerViewTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

.field final synthetic val$scrollY:I


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    iput p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;->val$scrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 287
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 288
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;->val$scrollY:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->scrollBy(II)V

    return-void
.end method
