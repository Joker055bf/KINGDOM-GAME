.class public Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;
.super Landroid/widget/LinearLayout;
.source "BaseRatingBar.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/ratingbar/SimpleRatingBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleRatingBar"


# instance fields
.field private mClearRatingEnabled:Z

.field private mEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilledDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsClickable:Z

.field private mIsIndicator:Z

.field private mIsScrollable:Z

.field private mMinimumStars:F

.field private mNumStars:I

.field private mOnRatingChangeListener:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;

.field private mPadding:I

.field protected mPartialViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/ratingbar/PartialView;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRating:F

.field private mRating:F

.field private mStarHeight:I

.field private mStarWidth:I

.field private mStartX:F

.field private mStartY:F

.field private mStepSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x14

    .line 33
    iput p3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    .line 39
    iput p3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPreviousRating:F

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsIndicator:Z

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsScrollable:Z

    .line 43
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsClickable:Z

    .line 44
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mClearRatingEnabled:Z

    .line 73
    sget-object v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_rating:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 76
    invoke-direct {p0, p2, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->initParamsValue(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->verifyParamsValue()V

    .line 78
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->initRatingView()V

    .line 79
    invoke-virtual {p0, p3}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method private getPartialView(IIIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tgs/aics/thirdtool/ratingbar/PartialView;
    .locals 7

    .line 137
    new-instance v6, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;-><init>(Landroid/content/Context;IIII)V

    .line 138
    invoke-virtual {v6, p5}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v6, p6}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method private handleClickEvent(F)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 419
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isPositionInRatingView(FLandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    invoke-static {v1, v0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->calculateRating(Lcom/tgs/aics/thirdtool/ratingbar/PartialView;FF)F

    move-result p1

    .line 425
    :goto_1
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPreviousRating:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isClearRatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(FZ)V

    goto :goto_2

    .line 428
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(FZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private handleMoveEvent(F)V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 400
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 401
    iget p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    invoke-direct {p0, p1, v3}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(FZ)V

    return-void

    .line 405
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isPositionInRatingView(FLandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    iget v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    invoke-static {v1, v2, p1}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->calculateRating(Lcom/tgs/aics/thirdtool/ratingbar/PartialView;FF)F

    move-result v1

    .line 411
    iget v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 412
    invoke-direct {p0, v1, v3}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(FZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initParamsValue(Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 3

    .line 83
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_numStars:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    .line 84
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_stepSize:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    .line 85
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_minimumStars:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    .line 86
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_starPadding:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    .line 87
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_starWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarWidth:I

    .line 88
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_starHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarHeight:I

    .line 89
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_drawableEmpty:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_drawableEmpty:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_drawableFilled:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_drawableFilled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    sget p2, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_isIndicator:I

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsIndicator:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsIndicator:Z

    .line 92
    sget p2, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_scrollable:I

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsScrollable:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsScrollable:Z

    .line 93
    sget p2, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_clickable:I

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsClickable:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsClickable:Z

    .line 94
    sget p2, Lcom/tgs/service/ai/R$styleable;->BaseRatingBar_srb_clearRatingEnabled:I

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mClearRatingEnabled:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mClearRatingEnabled:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initRatingView()V
    .locals 8

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    if-gt v0, v1, :cond_0

    .line 128
    iget v3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarWidth:I

    iget v4, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarHeight:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    iget-object v6, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getPartialView(IIIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->addView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isPositionInRatingView(FLandroid/view/View;)Z
    .locals 1

    .line 435
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setRating(FZ)V
    .locals 2

    .line 196
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float p1, v0

    .line 200
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 204
    :cond_1
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 210
    :cond_2
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    mul-float/2addr p1, v0

    .line 212
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    .line 214
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mOnRatingChangeListener:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;

    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v0, p0, p1, p2}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;->onRatingChange(Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;FZ)V

    .line 218
    :cond_3
    iget p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->fillRatingBar(F)V

    return-void
.end method

.method private verifyParamsValue()V
    .locals 3

    .line 99
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    .line 100
    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    .line 103
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tgs/service/ai/R$mipmap;->tgs_aics_star_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tgs/service/ai/R$mipmap;->tgs_aics_star_checked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    :cond_3
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 116
    iput v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    goto :goto_0

    :cond_4
    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 118
    iput v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    .line 121
    :cond_5
    :goto_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    iget v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->getValidMinimumStars(FIF)F

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    return-void
.end method


# virtual methods
.method protected emptyRatingBar()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->fillRatingBar(F)V

    return-void
.end method

.method protected fillRatingBar(F)V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 156
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    float-to-double v3, p1

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v2

    cmpl-double v2, v5, v3

    if-lez v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmpty()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 165
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setPartialFilled(F)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setFilled()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getNumStars()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    return v0
.end method

.method public getRating()F
    .locals 1

    .line 223
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    return v0
.end method

.method public getStarHeight()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarHeight:I

    return v0
.end method

.method public getStarPadding()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    return v0
.end method

.method public getStarWidth()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarWidth:I

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 352
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    return v0
.end method

.method public isClearRatingEnabled()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mClearRatingEnabled:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsClickable:Z

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsIndicator:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 453
    check-cast p1, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;

    .line 454
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 456
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;->getRating()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 444
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 445
    new-instance v1, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;

    invoke-direct {v1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 447
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    invoke-virtual {v1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/SavedState;->setRating(F)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 367
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isIndicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_3

    const/4 p1, 0x2

    if-eq v3, p1, :cond_1

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isScrollable()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 384
    :cond_2
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->handleMoveEvent(F)V

    goto :goto_1

    .line 387
    :cond_3
    iget v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStartX:F

    iget v3, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStartY:F

    invoke-static {v2, v3, p1}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->isClickEvent(FFLandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->isClickable()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 391
    :cond_4
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->handleClickEvent(F)V

    goto :goto_1

    :cond_5
    :goto_0
    return v1

    .line 375
    :cond_6
    iput v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStartX:F

    .line 376
    iput v2, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStartY:F

    .line 377
    iget p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mRating:F

    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPreviousRating:F

    .line 394
    :goto_1
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4
.end method

.method public setClearRatingEnabled(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mClearRatingEnabled:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsClickable:Z

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 291
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 293
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmptyDrawableRes(I)V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 299
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 301
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFilledDrawableRes(I)V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsIndicator:Z

    return-void
.end method

.method public setMinimumStars(F)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    invoke-static {p1, v0, v1}, Lcom/tgs/aics/thirdtool/ratingbar/RatingBarUtils;->getValidMinimumStars(FIF)F

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mMinimumStars:F

    return-void
.end method

.method public setNumStars(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->removeAllViews()V

    .line 181
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mNumStars:I

    .line 182
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->initRatingView()V

    return-void
.end method

.method public setOnRatingChangeListener(Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mOnRatingChangeListener:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;

    return-void
.end method

.method public setRating(F)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(FZ)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mIsScrollable:Z

    return-void
.end method

.method public setStarHeight(I)V
    .locals 2

    .line 243
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarHeight:I

    .line 244
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 245
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setStarHeight(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStarPadding(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 260
    :cond_0
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    .line 262
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 263
    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStarWidth(I)V
    .locals 2

    .line 229
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStarWidth:I

    .line 230
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 231
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setStarWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->mStepSize:F

    return-void
.end method
