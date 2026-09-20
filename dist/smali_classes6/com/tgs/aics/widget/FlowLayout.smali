.class public Lcom/tgs/aics/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private allLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field lineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 14
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    const/16 p1, 0x8

    .line 15
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    .line 14
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    const/16 p1, 0x8

    .line 15
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    .line 14
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    const/16 p1, 0x8

    .line 15
    invoke-static {p1}, Lcom/tgs/aics/widget/FlowLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    return-void
.end method

.method private clearMeasureParams()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .line 139
    iget-object p1, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 141
    invoke-virtual {p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingLeft()I

    move-result p2

    .line 142
    invoke-virtual {p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingTop()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v1, p4

    .line 148
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p3

    .line 157
    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 160
    iget p2, p0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    iget p2, p0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr p3, p2

    .line 166
    invoke-virtual {p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingLeft()I

    move-result p2

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->clearMeasureParams()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingLeft()I

    move-result v4

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingRight()I

    move-result v5

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingTop()I

    move-result v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->getPaddingBottom()I

    move-result v7

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/widget/FlowLayout;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v10, v8, :cond_3

    .line 68
    invoke-virtual {v0, v10}, Lcom/tgs/aics/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 70
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move/from16 v16, v3

    .line 71
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v17, v10

    const/16 v10, 0x8

    if-eq v3, v10, :cond_1

    add-int v3, v4, v5

    .line 78
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v4

    move/from16 v4, p1

    invoke-static {v4, v3, v10}, Lcom/tgs/aics/widget/FlowLayout;->getChildMeasureSpec(III)I

    move-result v3

    add-int v10, v6, v7

    .line 79
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v4, p2

    invoke-static {v4, v10, v9}, Lcom/tgs/aics/widget/FlowLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 81
    invoke-virtual {v15, v3, v9}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 85
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 88
    iget v10, v0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    add-int/2addr v10, v12

    add-int/2addr v10, v3

    if-le v10, v2, :cond_0

    .line 90
    iget-object v10, v0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, v0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v14, v13

    .line 94
    iget v1, v0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr v14, v1

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 104
    :cond_0
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget v10, v0, Lcom/tgs/aics/widget/FlowLayout;->mHorizontalSpacing:I

    add-int/2addr v12, v10

    add-int/2addr v12, v3

    .line 106
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v3, v8, -0x1

    move/from16 v9, v17

    if-ne v9, v3, :cond_2

    .line 110
    iget-object v3, v0, Lcom/tgs/aics/widget/FlowLayout;->allLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, v0, Lcom/tgs/aics/widget/FlowLayout;->lineHeights:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v14, v13

    .line 114
    iget v3, v0, Lcom/tgs/aics/widget/FlowLayout;->mVerticalSpacing:I

    add-int/2addr v14, v3

    goto :goto_1

    :cond_1
    move/from16 v18, v4

    move/from16 v9, v17

    move/from16 v4, p2

    :cond_2
    :goto_1
    add-int/lit8 v10, v9, 0x1

    move/from16 v3, v16

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_3
    move/from16 v4, p2

    move/from16 v16, v3

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 124
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v11

    :goto_2
    if-ne v3, v4, :cond_5

    move/from16 v3, v16

    goto :goto_3

    :cond_5
    move v3, v14

    .line 131
    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/widget/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
