.class public Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
.super Ljava/lang/Object;
.source "RecyclerViewTouchHelper.java"


# instance fields
.field private canScrollHeight:I

.field private isScrollTopView:Z

.field private isTopViewStick:Z

.field private lastScrollY:I

.field private maskView:Landroid/view/View;

.field private recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

.field private spanCount:I

.field private stickHeight:I

.field private topView:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/ypx/imagepicker/widget/TouchRecyclerView;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isScrollTopView:Z

    .line 27
    iput-boolean v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isTopViewStick:Z

    .line 64
    iput v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->lastScrollY:I

    .line 192
    iput v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->spanCount:I

    .line 36
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setRecyclerViewPaddingTop(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isTopViewStick:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isTopViewStick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isRecyclerViewScrollToTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isRecyclerViewCanScrollOverScreen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->reset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Lcom/ypx/imagepicker/widget/TouchRecyclerView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isImageGridCantScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getScrollYDistance()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isScrollTopView:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isScrollTopView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->canScrollHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->lastScrollY:I

    return p0
.end method

.method static synthetic access$602(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->lastScrollY:I

    return p1
.end method

.method static synthetic access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setMaskAlpha(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->stickHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isTopViewFullShow()Z

    move-result p0

    return p0
.end method

.method public static create(Lcom/ypx/imagepicker/widget/TouchRecyclerView;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 1

    .line 32
    new-instance v0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;-><init>(Lcom/ypx/imagepicker/widget/TouchRecyclerView;)V

    return-object v0
.end method

.method private getItemHeight()I
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 265
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-gez v2, :cond_1

    move v2, v1

    .line 269
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 273
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getScrollYDistance()I
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 247
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-gez v2, :cond_1

    move v2, v1

    .line 251
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 256
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v3}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->dp(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    .line 257
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getSpanCount()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private getSpanCount()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->spanCount:I

    if-eqz v0, :cond_0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->spanCount:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isImageGridCantScroll()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    const/4 v2, -0x1

    .line 235
    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRecyclerViewCanScrollOverScreen()Z
    .locals 5

    .line 176
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isImageGridCantScroll()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getItemHeight()I

    move-result v2

    .line 184
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getSpanCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    return v1

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getSpanCount()I

    move-result v3

    rem-int v3, v0, v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getSpanCount()I

    move-result v3

    div-int/2addr v0, v3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getSpanCount()I

    move-result v3

    div-int/2addr v0, v3

    add-int/2addr v0, v4

    :goto_1
    mul-int/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    .line 189
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->stickHeight:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method private isRecyclerViewScrollToBottom()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private isRecyclerViewScrollToTop()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isTopViewFullShow()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reset()V
    .locals 4

    .line 277
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->getScrollYDistance()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 281
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    new-instance v2, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$4;-><init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setMaskAlpha(F)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->maskView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->maskView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setRecyclerViewPaddingTop(I)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    .line 61
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v3}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingBottom()I

    move-result v3

    .line 60
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public build()Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 2

    .line 67
    iget v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->canScrollHeight:I

    iget v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->stickHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setRecyclerViewPaddingTop(I)V

    .line 68
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    new-instance v1, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$1;-><init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 74
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->topView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setTouchView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    new-instance v1, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;-><init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 127
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    new-instance v1, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;-><init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setDragScrollListener(Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;)V

    return-object p0
.end method

.method public dp(I)I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->dp(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public setCanScrollHeight(I)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 0

    .line 50
    iput p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->canScrollHeight:I

    return-object p0
.end method

.method public setMaskView(Landroid/view/View;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->maskView:Landroid/view/View;

    return-object p0
.end method

.method public setStickHeight(I)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 0

    .line 55
    iput p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->stickHeight:I

    return-object p0
.end method

.method public setTopView(Landroid/view/View;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->topView:Landroid/view/View;

    return-object p0
.end method

.method public transitTopWithAnim(ZIZ)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->isTopViewFullShow()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 307
    :cond_1
    iget-object p3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->topView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    float-to-int v3, p3

    const/4 p3, 0x2

    if-nez p1, :cond_3

    .line 309
    iget p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->stickHeight:I

    neg-int p1, p1

    div-int/2addr p1, p3

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->canScrollHeight:I

    neg-int p1, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    move v2, p1

    .line 310
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->recyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingTop()I

    move-result v5

    .line 311
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->maskView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array p1, p3, [F

    .line 312
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    new-instance p3, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;

    move-object v0, p3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$5;-><init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;IIFII)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
