.class public abstract Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
.super Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.source "ClassicsAbstract.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scwang/smart/refresh/classics/ClassicsAbstract<",
        "*>;>",
        "Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;",
        "Lcom/scwang/smart/refresh/layout/api/RefreshComponent;"
    }
.end annotation


# static fields
.field public static final ID_IMAGE_ARROW:I

.field public static final ID_IMAGE_PROGRESS:I

.field public static final ID_TEXT_TITLE:I


# instance fields
.field protected mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

.field protected mArrowView:Landroid/widget/ImageView;

.field protected mBackgroundColor:I

.field protected mFinishDuration:I

.field protected mMinHeightOfContent:I

.field protected mPaddingBottom:I

.field protected mPaddingTop:I

.field protected mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

.field protected mProgressView:Landroid/widget/ImageView;

.field protected mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

.field protected mSetAccentColor:Z

.field protected mSetPrimaryColor:Z

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget v0, Lcom/scwang/smart/refresh/footer/classics/R$id;->srl_classics_title:I

    sput v0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->ID_TEXT_TITLE:I

    .line 34
    sget v0, Lcom/scwang/smart/refresh/footer/classics/R$id;->srl_classics_arrow:I

    sput v0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->ID_IMAGE_ARROW:I

    .line 35
    sget v0, Lcom/scwang/smart/refresh/footer/classics/R$id;->srl_classics_progress:I

    sput v0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->ID_IMAGE_PROGRESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 48
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mFinishDuration:I

    const/16 p1, 0x14

    .line 49
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    .line 50
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingBottom:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    .line 56
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    .line 102
    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 105
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 150
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 151
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mFinishDuration:I

    return p1
.end method

.method public onInitialized(Lcom/scwang/smart/refresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 124
    iget p2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mBackgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 62
    iget v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingBottom:I

    .line 65
    iget v2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 68
    iget v3, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v3, :cond_1

    invoke-static {v4}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    :cond_1
    iput v3, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    .line 69
    iget v3, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingBottom:I

    if-nez v3, :cond_2

    invoke-static {v4}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingBottom:I

    .line 70
    iget v4, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    invoke-virtual {p0, v0, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 75
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_6

    .line 76
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 77
    iget v2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    if-ge v0, v2, :cond_5

    sub-int/2addr v0, v2

    .line 78
    div-int/lit8 v0, v0, 0x2

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 84
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mPaddingBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->onMeasure(II)V

    .line 87
    iget p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    if-nez p1, :cond_8

    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 91
    iget p2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    if-ge p2, p1, :cond_7

    .line 92
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mMinHeightOfContent:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onReleased(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object p2, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 133
    instance-of p3, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p3, :cond_0

    .line 134
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x470ca000    # 36000.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/32 p2, 0x186a0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method protected self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public setAccentColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetAccentColor:Z

    .line 232
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lcom/scwang/smart/drawable/PaintDrawable;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0, p1}, Lcom/scwang/smart/drawable/PaintDrawable;->setColor(I)V

    .line 239
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setAccentColorId(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setAccentColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    .line 253
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setArrowBitmap(Landroid/graphics/Bitmap;)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 200
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 206
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setArrowResource(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 212
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableArrowSize(F)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 322
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableArrowSizePx(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 329
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableMarginRight(F)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    .line 279
    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 282
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 283
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableMarginRightPx(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 290
    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 291
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 292
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableProgressSize(F)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 338
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableProgressSizePx(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 345
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableSize(F)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    .line 299
    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 302
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 304
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableSizePx(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 312
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setFinishDuration(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 257
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mFinishDuration:I

    .line 258
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetPrimaryColor:Z

    .line 223
    iput p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mBackgroundColor:I

    .line 224
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p0, p1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;I)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryColorId(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setPrimaryColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    .line 247
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3

    .line 163
    array-length v0, p1

    if-lez v0, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetPrimaryColor:Z

    if-nez v0, :cond_0

    .line 166
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setPrimaryColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    .line 167
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetPrimaryColor:Z

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetAccentColor:Z

    if-nez v0, :cond_2

    .line 170
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 171
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setAccentColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    .line 173
    :cond_1
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSetAccentColor:Z

    :cond_2
    return-void
.end method

.method public setProgressBitmap(Landroid/graphics/Bitmap;)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 182
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 188
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setProgressResource(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 194
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setSpinnerStyle(Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;",
            ")TT;"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .line 218
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setTextSizeTitle(F)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 263
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 264
    invoke-interface {p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method

.method public setTextSizeTitle(IF)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    iget-object p1, p0, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 272
    invoke-interface {p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->self()Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    return-object p1
.end method
