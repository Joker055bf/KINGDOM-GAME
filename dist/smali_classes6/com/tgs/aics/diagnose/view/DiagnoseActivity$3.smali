.class Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->loadCheckAnimation(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$202(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;F)F

    .line 361
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$302(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;F)F

    .line 364
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 366
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-static {v2, v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$402(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 368
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 369
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 370
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 372
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 385
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
