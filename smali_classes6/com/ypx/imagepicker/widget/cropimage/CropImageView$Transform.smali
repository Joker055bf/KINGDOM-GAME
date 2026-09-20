.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transform"
.end annotation


# instance fields
.field C:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$ClipCalculate;

.field isRunning:Z

.field mClipRect:Landroid/graphics/RectF;

.field mClipScroller:Landroid/widget/Scroller;

.field mFlingScroller:Landroid/widget/OverScroller;

.field mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

.field mLastFlingX:I

.field mLastFlingY:I

.field mLastTranslateX:I

.field mLastTranslateY:I

.field mRotateScroller:Landroid/widget/Scroller;

.field mScaleScroller:Landroid/widget/Scroller;

.field mTranslateScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 2

    .line 1176
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    .line 1174
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Lcom/ypx/imagepicker/widget/cropimage/CropImageView$1;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    .line 1177
    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1178
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    .line 1179
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    .line 1180
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    .line 1181
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipScroller:Landroid/widget/Scroller;

    .line 1182
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private applyAnim()V
    .locals 5

    .line 1348
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1349
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1350
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1351
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1352
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1353
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1354
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1355
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    return-void
.end method

.method private postExecute()V
    .locals 1

    .line 1359
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1253
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$602(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1262
    :goto_0
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateX:I

    sub-int/2addr v0, v4

    .line 1264
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateY:I

    sub-int/2addr v4, v5

    .line 1265
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2012(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    .line 1266
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2512(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    .line 1267
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateX:I

    .line 1268
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateY:I

    move v0, v3

    .line 1272
    :cond_2
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingX:I

    sub-int/2addr v0, v4

    .line 1274
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingY:I

    sub-int/2addr v4, v5

    .line 1276
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingX:I

    .line 1277
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iput v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingY:I

    .line 1279
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2012(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    .line 1280
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2512(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    move v0, v3

    .line 1284
    :cond_3
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$302(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F

    move v0, v3

    .line 1289
    :cond_4
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1290
    :cond_5
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 1291
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 1292
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v6}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v7}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->C:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$ClipCalculate;

    invoke-interface {v7}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$ClipCalculate;->calculateTop()F

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1293
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v7}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v1

    if-nez v4, :cond_6

    .line 1296
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v6}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 1297
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v6}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v4, Landroid/graphics/RectF;->right:F

    :cond_6
    cmpl-float v1, v5, v1

    if-nez v1, :cond_7

    .line 1301
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 1302
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 1305
    :cond_7
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mClipRect:Landroid/graphics/RectF;

    invoke-static {v1, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3602(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_8
    if-nez v0, :cond_9

    .line 1308
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->applyAnim()V

    .line 1309
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->postExecute()V

    goto/16 :goto_3

    .line 1311
    :cond_9
    iput-boolean v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    .line 1312
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v0

    if-lez v0, :cond_a

    return-void

    .line 1317
    :cond_a
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1318
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 1319
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2024(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    goto :goto_1

    .line 1320
    :cond_b
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    .line 1321
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2020(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    :cond_c
    :goto_1
    move v3, v2

    .line 1326
    :cond_d
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1327
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 1328
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2524(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I

    goto :goto_2

    .line 1329
    :cond_e
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 1330
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$2520(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I

    goto :goto_2

    :cond_f
    move v2, v3

    :cond_10
    :goto_2
    if-eqz v2, :cond_11

    .line 1336
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->applyAnim()V

    .line 1339
    :cond_11
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    .line 1341
    :goto_3
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1342
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1343
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3902(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mInterpolatorProxy:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;->setTargetInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    .line 1238
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    .line 1239
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->postExecute()V

    return-void
.end method

.method stop()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1244
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1245
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1246
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1247
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1248
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    return-void
.end method

.method withFling(FF)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    const v5, 0x7fffffff

    const/4 v6, 0x0

    if-gez v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    .line 1208
    :goto_0
    iput v7, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingX:I

    cmpl-float v7, v1, v3

    .line 1209
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v8}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v8

    if-lez v7, :cond_1

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    goto :goto_1

    :cond_1
    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v9}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    :goto_1
    float-to-int v8, v8

    if-gez v4, :cond_2

    sub-int v8, v5, v8

    :cond_2
    if-gez v4, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    if-gez v4, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    if-gez v4, :cond_5

    sub-int v8, v5, v9

    :cond_5
    cmpg-float v4, v2, v3

    if-gez v4, :cond_6

    move v11, v5

    goto :goto_4

    :cond_6
    move v11, v6

    .line 1215
    :goto_4
    iput v11, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingY:I

    cmpl-float v3, v2, v3

    .line 1216
    iget-object v11, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v11}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v11

    if-lez v3, :cond_7

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v12}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    goto :goto_5

    :cond_7
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v12}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    :goto_5
    float-to-int v11, v11

    if-gez v4, :cond_8

    sub-int v11, v5, v11

    :cond_8
    if-gez v4, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    move v12, v6

    :goto_6
    if-gez v4, :cond_a

    move v13, v5

    goto :goto_7

    :cond_a
    move v13, v11

    :goto_7
    if-gez v4, :cond_b

    sub-int v11, v5, v12

    :cond_b
    if-nez v7, :cond_c

    move/from16 v19, v6

    move/from16 v20, v19

    goto :goto_8

    :cond_c
    move/from16 v19, v9

    move/from16 v20, v10

    :goto_8
    if-nez v3, :cond_d

    move/from16 v21, v6

    move/from16 v22, v21

    goto :goto_9

    :cond_d
    move/from16 v21, v12

    move/from16 v22, v13

    .line 1232
    :goto_9
    iget-object v14, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    iget v15, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingX:I

    iget v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastFlingY:I

    float-to-int v1, v1

    float-to-int v2, v2

    .line 1233
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_e

    move/from16 v23, v6

    goto :goto_a

    :cond_e
    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v4

    move/from16 v23, v4

    .line 1234
    :goto_a
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_f

    goto :goto_b

    :cond_f
    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v6

    :goto_b
    move/from16 v24, v6

    move/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v2

    .line 1232
    invoke-virtual/range {v14 .. v24}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method withRotate(II)V
    .locals 6

    .line 1200
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    sub-int v3, p2, p1

    const/4 v4, 0x0

    iget-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withRotate(III)V
    .locals 6

    .line 1204
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    sub-int v3, p2, p1

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withScale(FF)V
    .locals 6

    .line 1196
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    const v1, 0x461c4000    # 10000.0f

    mul-float v2, p1, v1

    float-to-int v2, v2

    const/4 v3, 0x0

    sub-float/2addr p2, p1

    mul-float/2addr p2, v1

    float-to-int p1, p2

    const/4 v4, 0x0

    iget-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v5

    move v1, v2

    move v2, v3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withTranslate(IIII)V
    .locals 7

    const/4 v0, 0x0

    .line 1190
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateX:I

    .line 1191
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mLastTranslateY:I

    .line 1192
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->access$3400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I

    move-result v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method
