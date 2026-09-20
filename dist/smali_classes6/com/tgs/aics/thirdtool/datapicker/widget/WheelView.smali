.class public Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SCROLL_STATE_DRAGGING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_STATE_IDLE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_STATE_SCROLLING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected atmosphericEnabled:Z

.field private final camera:Landroid/graphics/Camera;

.field protected currentPosition:I

.field protected curtainColor:I

.field protected curtainCorner:I

.field protected curtainEnabled:Z

.field protected curtainRadius:F

.field protected curvedEnabled:Z

.field protected curvedIndicatorSpace:I

.field protected curvedMaxAngle:I

.field protected cyclicEnabled:Z

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field protected defaultItem:Ljava/lang/Object;

.field protected defaultItemPosition:I

.field private downPointYCoordinate:I

.field private drawnCenterXCoordinate:I

.field private drawnCenterYCoordinate:I

.field private drawnItemCount:I

.field protected formatter:Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;

.field private halfDrawnItemCount:I

.field private halfItemHeight:I

.field private halfWheelHeight:I

.field private final handler:Landroid/os/Handler;

.field protected indicatorColor:I

.field protected indicatorEnabled:Z

.field protected indicatorSize:F

.field private isClick:Z

.field private isForceFinishScroll:Z

.field private itemHeight:I

.field protected itemSpace:I

.field private lastPointYCoordinate:I

.field private lastScrollPosition:I

.field private final matrixDepth:Landroid/graphics/Matrix;

.field private final matrixRotate:Landroid/graphics/Matrix;

.field private maxFlingYCoordinate:I

.field protected maxWidthText:Ljava/lang/String;

.field private final maximumVelocity:I

.field private minFlingYCoordinate:I

.field private final minimumVelocity:I

.field private onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

.field private final paint:Landroid/graphics/Paint;

.field private final rectCurrentItem:Landroid/graphics/Rect;

.field private final rectDrawn:Landroid/graphics/Rect;

.field private final rectIndicatorFoot:Landroid/graphics/Rect;

.field private final rectIndicatorHead:Landroid/graphics/Rect;

.field protected sameWidthEnabled:Z

.field private scrollOffsetYCoordinate:I

.field private final scroller:Landroid/widget/Scroller;

.field protected selectedTextBold:Z

.field protected selectedTextColor:I

.field protected selectedTextSize:F

.field protected textAlign:I

.field protected textColor:I

.field private textMaxHeight:I

.field private textMaxWidth:I

.field protected textSize:F

.field private final touchSlop:I

.field private tracker:Landroid/view/VelocityTracker;

.field protected visibleItemCount:I

.field private wheelCenterXCoordinate:I

.field private wheelCenterYCoordinate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    sget v0, Lcom/tgs/service/ai/R$attr;->WheelStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    const/16 v0, 0x5a

    .line 76
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handler:Landroid/os/Handler;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x45

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorHead:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorFoot:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixDepth:Landroid/graphics/Matrix;

    .line 119
    sget v0, Lcom/tgs/service/ai/R$style;->WheelDefault:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->initTextPaint()V

    .line 121
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->updateVisibleItemCount()V

    .line 122
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    .line 123
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->minimumVelocity:I

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maximumVelocity:I

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->touchSlop:I

    .line 127
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->generatePreviewData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->notifyDataSetChanged(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    return p1
.end method

.method private cancelTracker()V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1122
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private clamp(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    .line 883
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private computeAndSetAtmospheric(I)V
    .locals 2

    .line 921
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->atmosphericEnabled:Z

    if-eqz v0, :cond_0

    .line 922
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 923
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 924
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private computeCurrentItemRect()V
    .locals 6

    .line 707
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfItemHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfItemHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeDegree(IF)F
    .locals 2

    .line 871
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    neg-float p2, v0

    .line 876
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    int-to-float v1, v0

    mul-float/2addr p2, v1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    neg-int p1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {p0, p2, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private computeDepth(F)I
    .locals 6

    .line 1001
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfWheelHeight:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfWheelHeight:I

    int-to-double v4, p1

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private computeDistanceToEndPoint(I)I
    .locals 2

    .line 1132
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfItemHeight:I

    if-le v0, v1, :cond_1

    .line 1133
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    if-gez v0, :cond_0

    .line 1134
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    neg-int v0, v0

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 1136
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private computeDrawnCenterCoordinate()V
    .locals 3

    .line 669
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 678
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterXCoordinate:I

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterXCoordinate:I

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterXCoordinate:I

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterXCoordinate:I

    .line 681
    :goto_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    .line 682
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    return-void
.end method

.method private computeFlingLimitYCoordinate()V
    .locals 3

    .line 686
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    mul-int/2addr v0, v1

    .line 687
    iget-boolean v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    if-eqz v2, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    neg-int v1, v1

    .line 688
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->minFlingYCoordinate:I

    .line 689
    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffffff

    :cond_1
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxFlingYCoordinate:I

    return-void
.end method

.method private computeIndicatorRect()V
    .locals 7

    .line 693
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedIndicatorSpace:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 697
    :goto_0
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 698
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfItemHeight:I

    add-int v4, v2, v3

    add-int/2addr v4, v0

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 700
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorHead:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v5, v4, v1

    iget-object v6, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v1

    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computePosition(I)I
    .locals 2

    .line 1187
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    mul-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    add-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method private computeTextWidthAndHeight()V
    .locals 4

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxHeight:I

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    .line 207
    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sameWidthEnabled:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    goto :goto_1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxWidthText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxWidthText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 215
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 216
    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 220
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxHeight:I

    return-void
.end method

.method private computeYCoordinateAtAngle(F)F
    .locals 1

    .line 993
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sinDegree(F)F

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sinDegree(F)F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfWheelHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private drawAllItem(Landroid/graphics/Canvas;)V
    .locals 14

    .line 728
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    mul-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfDrawnItemCount:I

    sub-int/2addr v0, v1

    .line 729
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    add-int/2addr v2, v0

    mul-int/lit8 v1, v1, -0x1

    .line 731
    :goto_0
    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnItemCount:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    .line 734
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->initTextPaint()V

    .line 735
    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnItemCount:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 737
    :goto_1
    iget v6, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    iget v7, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    mul-int v8, v1, v7

    add-int/2addr v8, v6

    iget v9, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    rem-int/2addr v9, v7

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 739
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 741
    iget v7, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    sub-int/2addr v7, v6

    iget-object v9, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v7, v9

    iget v9, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    iget-object v10, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v7, v9

    .line 743
    invoke-direct {p0, v8, v7}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDegree(IF)F

    move-result v7

    .line 744
    invoke-direct {p0, v7}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeYCoordinateAtAngle(F)F

    move-result v9

    .line 746
    iget-boolean v10, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz v10, :cond_3

    .line 747
    iget v10, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterXCoordinate:I

    .line 748
    iget v11, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    if-eq v11, v4, :cond_2

    if-eq v11, v5, :cond_1

    goto :goto_2

    .line 753
    :cond_1
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 750
    :cond_2
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->left:I

    .line 759
    :goto_2
    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    int-to-float v4, v4

    sub-float/2addr v4, v9

    .line 761
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 762
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5, v7}, Landroid/graphics/Camera;->rotateX(F)V

    .line 763
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    iget-object v11, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v5, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 764
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 765
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    neg-int v11, v10

    int-to-float v11, v11

    neg-float v12, v4

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 766
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    int-to-float v10, v10

    invoke-virtual {v5, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 768
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 769
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-direct {p0, v7}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDepth(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v13, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 770
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    iget-object v7, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 771
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 772
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 773
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v5, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 774
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 777
    :cond_3
    invoke-direct {p0, v6}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeAndSetAtmospheric(I)V

    .line 779
    iget-boolean v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterYCoordinate:I

    int-to-float v4, v4

    sub-float/2addr v4, v9

    goto :goto_3

    :cond_4
    int-to-float v4, v8

    .line 781
    :goto_3
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemRect(Landroid/graphics/Canvas;IZF)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private drawCurtain(Landroid/graphics/Canvas;)V
    .locals 12

    .line 930
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 934
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 935
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 936
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 938
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainCorner:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_5

    if-eq v2, v10, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    new-array v1, v6, [F

    .line 966
    fill-array-data v1, :array_0

    goto :goto_1

    :cond_1
    new-array v2, v6, [F

    aput v1, v2, v5

    aput v1, v2, v11

    .line 961
    iget v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    aput v5, v2, v10

    aput v5, v2, v9

    aput v5, v2, v8

    aput v5, v2, v7

    aput v1, v2, v4

    aput v1, v2, v3

    goto :goto_0

    :cond_2
    new-array v2, v6, [F

    .line 956
    iget v6, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    aput v6, v2, v5

    aput v6, v2, v11

    aput v1, v2, v10

    aput v1, v2, v9

    aput v1, v2, v8

    aput v1, v2, v7

    aput v6, v2, v4

    aput v6, v2, v3

    goto :goto_0

    :cond_3
    new-array v2, v6, [F

    aput v1, v2, v5

    aput v1, v2, v11

    aput v1, v2, v10

    aput v1, v2, v9

    .line 951
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    aput v1, v2, v8

    aput v1, v2, v7

    aput v1, v2, v4

    aput v1, v2, v3

    goto :goto_0

    :cond_4
    new-array v2, v6, [F

    .line 946
    iget v6, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    aput v6, v2, v5

    aput v6, v2, v11

    aput v6, v2, v10

    aput v6, v2, v9

    aput v1, v2, v8

    aput v1, v2, v7

    aput v1, v2, v4

    aput v1, v2, v3

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_5
    new-array v1, v6, [F

    .line 940
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    aput v2, v1, v5

    aput v2, v1, v11

    aput v2, v1, v10

    aput v2, v1, v9

    aput v2, v1, v8

    aput v2, v1, v7

    aput v2, v1, v4

    aput v2, v1, v3

    .line 969
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 970
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 973
    :cond_6
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 2

    .line 978
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 982
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 983
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorHead:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 984
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawItemRect(Landroid/graphics/Canvas;IZF)V
    .locals 3

    .line 787
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    if-nez v0, :cond_1

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 790
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 791
    iget-boolean p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz p3, :cond_0

    .line 792
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 794
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemText(Landroid/graphics/Canvas;IF)V

    .line 795
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 799
    :cond_1
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextBold:Z

    if-nez v1, :cond_5

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
    iget-boolean p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz p3, :cond_2

    .line 803
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 805
    :cond_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_3

    .line 806
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 808
    :cond_3
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 810
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemText(Landroid/graphics/Canvas;IF)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    iget-boolean p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz p3, :cond_4

    .line 815
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 817
    :cond_4
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectCurrentItem:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 818
    invoke-direct {p0, p1, p2, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemText(Landroid/graphics/Canvas;IF)V

    .line 819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    if-nez p3, :cond_7

    .line 825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 826
    iget-boolean p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz p3, :cond_6

    .line 827
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 829
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemText(Landroid/graphics/Canvas;IF)V

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 835
    :cond_7
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextSize:F

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 837
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextBold:Z

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 838
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 839
    iget-boolean p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz p3, :cond_8

    .line 840
    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 842
    :cond_8
    invoke-direct {p0, p1, p2, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawItemText(Landroid/graphics/Canvas;IF)V

    .line 843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawItemText(Landroid/graphics/Canvas;IF)V
    .locals 7

    .line 849
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getMeasuredWidth()I

    move-result v0

    .line 850
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 851
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->obtainItemText(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    .line 852
    :goto_0
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v5, v1

    int-to-float v6, v0

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 854
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 856
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move v4, v6

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 865
    :cond_1
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnCenterXCoordinate:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findPosition(Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatter:Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;->formatItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatter:Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;

    invoke-interface {v6, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;->formatItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 329
    :cond_3
    instance-of v4, v3, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;

    if-eqz v4, :cond_4

    .line 330
    move-object v4, v3

    check-cast v4, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;

    invoke-interface {v4}, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;->provideText()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v5, v0

    :goto_1
    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    return v0
.end method

.method private handleActionCancel(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1105
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1108
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cancelTracker()V

    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->obtainOrClearTracker()V

    .line 1036
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1037
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1039
    iput-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isForceFinishScroll:Z

    .line 1041
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->lastPointYCoordinate:I

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->downPointYCoordinate:I

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    rem-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDistanceToEndPoint(I)I

    move-result v0

    .line 1046
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->downPointYCoordinate:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_0

    if-lez v0, :cond_0

    .line 1047
    iput-boolean v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isClick:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1050
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isClick:Z

    .line 1051
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v0, :cond_2

    .line 1055
    invoke-interface {v0, p0, v2}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 1058
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->lastPointYCoordinate:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1059
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    return-void

    .line 1062
    :cond_3
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->lastPointYCoordinate:I

    .line 1064
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1068
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1071
    :cond_0
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isClick:Z

    if-eqz v0, :cond_1

    return-void

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1077
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maximumVelocity:I

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1078
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    move v6, p1

    goto :goto_0

    :cond_2
    move v6, v1

    .line 1082
    :goto_0
    iput-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isForceFinishScroll:Z

    .line 1083
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->minimumVelocity:I

    if-le p1, v0, :cond_3

    .line 1084
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->minFlingYCoordinate:I

    iget v10, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxFlingYCoordinate:I

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1086
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    rem-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDistanceToEndPoint(I)I

    move-result p1

    .line 1087
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    .line 1089
    :cond_3
    iget p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    rem-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDistanceToEndPoint(I)I

    move-result p1

    .line 1090
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    invoke-virtual {v0, v1, v2, v1, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1093
    :goto_1
    iget-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    if-nez p1, :cond_5

    .line 1094
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxFlingYCoordinate:I

    if-le p1, v0, :cond_4

    .line 1095
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_2

    .line 1096
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->minFlingYCoordinate:I

    if-ge p1, v0, :cond_5

    .line 1097
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1100
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cancelTracker()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 154
    sget-object v2, Lcom/tgs/service/ai/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_visibleItemCount:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    .line 156
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_sameWidthEnabled:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sameWidthEnabled:Z

    .line 157
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_maxWidthText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxWidthText:Ljava/lang/String;

    .line 158
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextColor:I

    const p4, -0x777778

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textColor:I

    .line 159
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextColorSelected:I

    const/high16 p4, -0x1000000

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    .line 160
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextSize:I

    const/high16 p4, 0x41700000    # 15.0f

    mul-float/2addr v1, p4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    .line 161
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextSizeSelected:I

    iget p4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextSize:F

    .line 162
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextBoldSelected:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextBold:Z

    .line 163
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemTextAlign:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    .line 164
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_itemSpace:I

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemSpace:I

    .line 165
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_cyclicEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    .line 166
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_indicatorEnabled:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    .line 167
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_indicatorColor:I

    const p4, -0x363637

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorColor:I

    .line 168
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_indicatorSize:I

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr v0, p4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorSize:F

    .line 169
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curvedIndicatorSpace:I

    float-to-int p4, v0

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedIndicatorSpace:I

    .line 170
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curtainEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainEnabled:Z

    .line 171
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curtainColor:I

    const/4 p4, -0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainColor:I

    .line 172
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curtainCorner:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainCorner:I

    .line 173
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curtainRadius:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    .line 174
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_atmosphericEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->atmosphericEnabled:Z

    .line 175
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curvedEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    .line 176
    sget p2, Lcom/tgs/service/ai/R$styleable;->WheelView_wheel_curvedMaxAngle:I

    const/16 p3, 0x5a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initTextPaint()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 136
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isPositionInRange(II)Z
    .locals 0

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private measureSize(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 641
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    return p2
.end method

.method private notifyDataSetChanged(I)V
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 597
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 598
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    .line 599
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItem:Ljava/lang/Object;

    .line 600
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->defaultItemPosition:I

    .line 601
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->currentPosition:I

    .line 602
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->updatePaintTextAlign()V

    .line 605
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeFlingLimitYCoordinate()V

    .line 606
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 607
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeCurrentItemRect()V

    .line 608
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 609
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method private obtainItemText(I)Ljava/lang/String;
    .locals 2

    .line 888
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItemCount()I

    move-result v0

    .line 889
    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 891
    rem-int/2addr p1, v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    .line 893
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatItem(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 896
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isPositionInRange(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatItem(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private obtainOrClearTracker()V
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1113
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->tracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private sinDegree(F)F
    .locals 2

    float-to-double v0, p1

    .line 997
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private updatePaintTextAlign()V
    .locals 2

    .line 567
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method private updateVisibleItemCount()V
    .locals 3

    .line 193
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 198
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 199
    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    .line 201
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawnItemCount:I

    .line 202
    div-int/2addr v0, v1

    iput v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfDrawnItemCount:I

    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Visible item count can not be less than 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public formatItem(I)Ljava/lang/String;
    .locals 0

    .line 904
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 911
    :cond_0
    instance-of v0, p1, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;

    if-eqz v0, :cond_1

    .line 912
    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;

    invoke-interface {p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/TextProvider;->provideText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatter:Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;

    if-eqz v0, :cond_2

    .line 915
    invoke-interface {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;->formatItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 917
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected generatePreviewData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u8d35\u5dde\u7a7f\u9752\u4eba"

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u5927\u5b9a\u5e9c\u7fa1\u6c11"

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u4e0d\u5728\u4e94\u5341\u516d\u4e2a\u6c11\u65cf\u4e4b\u5185"

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u5df2\u8bc6\u522b\u5f85\u5b9a\u6c11\u65cf"

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u7a7f\u9752\u5c71\u9b48\u4eba\u9a6c"

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u674e\u88d5\u6c5f"

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCurrentItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 252
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->currentPosition:I

    return v0
.end method

.method public getCurtainColor()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainColor:I

    return v0
.end method

.method public getCurtainCorner()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainCorner:I

    return v0
.end method

.method public getCurtainRadius()F
    .locals 1

    .line 517
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    return v0
.end method

.method public getCurvedIndicatorSpace()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedIndicatorSpace:I

    return v0
.end method

.method public getCurvedMaxAngle()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorColor:I

    return v0
.end method

.method public getIndicatorSize()F
    .locals 1

    .line 452
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorSize:F

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p1, v0

    .line 232
    rem-int/2addr p1, v0

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemSpace()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemSpace:I

    return v0
.end method

.method public getMaxWidthText()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxWidthText:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSelectedTextBold()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextBold:Z

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    return v0
.end method

.method public getSelectedTextSize()F
    .locals 1

    .line 408
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextSize:F

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 396
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    return v0
.end method

.method public isAtmosphericEnabled()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->atmosphericEnabled:Z

    return v0
.end method

.method public isCurtainEnabled()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainEnabled:Z

    return v0
.end method

.method public isCurvedEnabled()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    return v0
.end method

.method public isCyclicEnabled()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    return v0
.end method

.method public isIndicatorEnabled()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    return v0
.end method

.method public isSameWidthEnabled()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sameWidthEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v0, :cond_0

    .line 717
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    invoke-interface {v0, p0, v1}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelScrolled(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 719
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfDrawnItemCount:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawCurtain(Landroid/graphics/Canvas;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->drawAllItem(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 614
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 615
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 616
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 617
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 619
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxWidth:I

    .line 620
    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textMaxHeight:I

    iget v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    mul-int/2addr v3, v4

    iget v5, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemSpace:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 622
    iget-boolean v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 627
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 629
    invoke-direct {p0, v0, p1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->measureSize(III)I

    move-result p1

    .line 630
    invoke-direct {p0, v1, p2, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->measureSize(III)I

    move-result p2

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 650
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 651
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 650
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 653
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterXCoordinate:I

    .line 654
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->wheelCenterYCoordinate:I

    .line 656
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDrawnCenterCoordinate()V

    .line 657
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfWheelHeight:I

    .line 658
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    .line 659
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->halfItemHeight:I

    .line 661
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeFlingLimitYCoordinate()V

    .line 663
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 665
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeCurrentItemRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1006
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handleActionCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1015
    :cond_2
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1009
    :cond_3
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 1024
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isClick:Z

    if-eqz p1, :cond_5

    .line 1026
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->performClick()Z

    :cond_5
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1128
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 1145
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v0, :cond_1

    .line 1151
    invoke-interface {v0, p0, v1}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    :cond_1
    return-void

    .line 1155
    :cond_2
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isForceFinishScroll:Z

    if-nez v2, :cond_5

    .line 1156
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computePosition(I)I

    move-result v2

    if-gez v2, :cond_3

    add-int/2addr v2, v0

    .line 1158
    :cond_3
    iput v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->currentPosition:I

    .line 1159
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v0, :cond_4

    .line 1160
    invoke-interface {v0, p0, v2}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelSelected(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 1161
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    invoke-interface {v0, p0, v1}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 1163
    :cond_4
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->postInvalidate()V

    return-void

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1168
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    .line 1169
    invoke-interface {v1, p0, v2}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 1171
    :cond_6
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    .line 1172
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computePosition(I)I

    move-result v1

    .line 1173
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->lastScrollPosition:I

    if-eq v2, v1, :cond_8

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_7

    .line 1175
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    if-eqz v0, :cond_7

    .line 1176
    invoke-interface {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;->onWheelLoopFinished(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V

    .line 1179
    :cond_7
    iput v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->lastScrollPosition:I

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->postInvalidate()V

    .line 1182
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method public scrollTo(I)V
    .locals 1

    .line 1191
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAtmosphericEnabled(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->atmosphericEnabled:Z

    .line 531
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurtainColor(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainColor:I

    .line 502
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurtainCorner(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainCorner:I

    .line 512
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurtainEnabled(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 489
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeCurrentItemRect()V

    .line 492
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurtainRadius(F)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curtainRadius:F

    .line 522
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedEnabled(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedEnabled:Z

    .line 540
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 541
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedIndicatorSpace(I)V
    .locals 0

    .line 477
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedIndicatorSpace:I

    .line 478
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 479
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 0

    .line 549
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->curvedMaxAngle:I

    .line 550
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 551
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setCyclicEnabled(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->cyclicEnabled:Z

    .line 271
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeFlingLimitYCoordinate()V

    .line 272
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;I)V

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->data:Ljava/util/List;

    .line 300
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->notifyDataSetChanged(I)V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 292
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->findPosition(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;I)V

    return-void
.end method

.method public setDefaultPosition(I)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->notifyDataSetChanged(I)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->findPosition(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method public setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->formatter:Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorColor:I

    .line 468
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorEnabled:Z

    .line 446
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 447
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setIndicatorSize(F)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->indicatorSize:F

    .line 457
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 458
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemSpace:I

    .line 436
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 437
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setMaxWidthText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 367
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->maxWidthText:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 369
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 370
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Maximum width text can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnWheelChangedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->onWheelChangedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;

    return-void
.end method

.method public setSameWidthEnabled(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->sameWidthEnabled:Z

    .line 354
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 355
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 356
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedTextBold(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextBold:Z

    .line 424
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 425
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 426
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextColor:I

    .line 390
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeCurrentItemRect()V

    .line 391
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setSelectedTextSize(F)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->selectedTextSize:F

    .line 413
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 414
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 415
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/tgs/service/ai/R$attr;->WheelStyle:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->initTextPaint()V

    .line 142
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->updatePaintTextAlign()V

    .line 143
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 144
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeFlingLimitYCoordinate()V

    .line 145
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeIndicatorRect()V

    .line 146
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeCurrentItemRect()V

    .line 147
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setTextAlign(I)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textAlign:I

    .line 561
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->updatePaintTextAlign()V

    .line 562
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeDrawnCenterCoordinate()V

    .line 563
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textColor:I

    .line 380
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->textSize:F

    .line 401
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 402
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 403
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 590
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->computeTextWidthAndHeight()V

    .line 591
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    .line 592
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->invalidate()V

    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->visibleItemCount:I

    .line 261
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->updateVisibleItemCount()V

    .line 262
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->requestLayout()V

    return-void
.end method

.method public final smoothScrollTo(I)V
    .locals 4

    .line 1200
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollTo(I)V

    return-void

    .line 1204
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->currentPosition:I

    sub-int/2addr v0, p1

    .line 1205
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollOffsetYCoordinate:I

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->itemHeight:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 1206
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1207
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1208
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$2;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1215
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$3;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$3;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1221
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
