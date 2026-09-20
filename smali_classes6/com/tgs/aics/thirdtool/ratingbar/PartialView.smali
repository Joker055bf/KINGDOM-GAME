.class Lcom/tgs/aics/thirdtool/ratingbar/PartialView;
.super Landroid/widget/RelativeLayout;
.source "PartialView.java"


# instance fields
.field private mEmptyView:Landroid/widget/ImageView;

.field private mFilledView:Landroid/widget/ImageView;

.field private mStarHeight:I

.field private mStarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput p3, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    .line 28
    iput p4, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setTag(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0, p5, p5, p5, p5}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setPadding(IIII)V

    .line 32
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    .line 21
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    .line 37
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    .line 21
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    .line 42
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    iget v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    if-nez v1, :cond_0

    move v1, v2

    .line 54
    :cond_0
    iget v3, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    .line 58
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    .line 62
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmpty()V

    return-void
.end method


# virtual methods
.method public setEmpty()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 105
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800005

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 87
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFilled()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 92
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800003

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 76
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPartialFilled(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x2710

    if-nez p1, :cond_0

    move p1, v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 100
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setStarHeight(I)V
    .locals 1

    .line 118
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    .line 120
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 121
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStarWidth(I)V
    .locals 1

    .line 109
    iput p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    .line 111
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 112
    iget v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mStarWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mFilledView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->mEmptyView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
