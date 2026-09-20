.class public Lcom/ypx/imagepicker/widget/TouchRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "TouchRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;
    }
.end annotation


# instance fields
.field private dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

.field firstY:F

.field lastY:F

.field private touchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->firstY:F

    .line 31
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->firstY:F

    .line 31
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->firstY:F

    .line 31
    iput p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    return-void
.end method

.method private isTouchPointInView(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    int-to-float p1, v4

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    return v3

    :cond_1
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 42
    iget v1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->touchView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->isTouchPointInView(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

    if-eqz v1, :cond_4

    .line 45
    iget v1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 46
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 47
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;->onScrollOverTop(I)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

    if-eqz v2, :cond_4

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 52
    invoke-interface {v2, v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;->onScrollDown(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    .line 59
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

    if-eqz v0, :cond_4

    .line 60
    invoke-interface {v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;->onScrollUp()V

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->lastY:F

    .line 64
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragScrollListener(Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->dragScrollListener:Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;

    return-void
.end method

.method public setTouchView(Landroid/view/View;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->touchView:Landroid/view/View;

    return-void
.end method
