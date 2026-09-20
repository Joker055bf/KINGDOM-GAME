.class public Lcom/tgs/aics/widget/VideoLoadingView;
.super Landroid/view/View;
.source "VideoLoadingView.java"


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private borderWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field objectAnimator:Landroid/animation/ObjectAnimator;

.field rectF:Landroid/graphics/RectF;

.field rotateAngle:F

.field rotateAnimator:Landroid/animation/ObjectAnimator;

.field sweepAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/tgs/aics/widget/VideoLoadingView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    .line 34
    invoke-direct {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/tgs/aics/widget/VideoLoadingView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    .line 39
    invoke-direct {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/tgs/aics/widget/VideoLoadingView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    .line 44
    invoke-direct {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->init()V

    return-void
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init()V
    .locals 6

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 49
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 54
    fill-array-data v2, :array_0

    const-string v3, "sweepAngle"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    .line 58
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 59
    iget-object v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/CycleInterpolator;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v0, [F

    .line 60
    fill-array-data v2, :array_1

    const-string v4, "rotateAngle"

    invoke-static {p0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAnimator:Landroid/animation/ObjectAnimator;

    .line 61
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    iget-object v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 63
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    .line 64
    iget-object v4, p0, Lcom/tgs/aics/widget/VideoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 66
    iget-object v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x44340000    # 720.0f
    .end array-data
.end method


# virtual methods
.method public getRotateAngle()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->sweepAngle:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 73
    iget v0, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAngle:F

    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 74
    iget-object v4, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v6, p0, Lcom/tgs/aics/widget/VideoLoadingView;->sweepAngle:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tgs/aics/widget/VideoLoadingView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 80
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    iget-object p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/tgs/aics/widget/VideoLoadingView;->borderWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->rotateAngle:F

    .line 100
    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->postInvalidate()V

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/tgs/aics/widget/VideoLoadingView;->sweepAngle:F

    .line 91
    invoke-virtual {p0}, Lcom/tgs/aics/widget/VideoLoadingView;->postInvalidate()V

    return-void
.end method
