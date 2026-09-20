.class public Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;
.super Landroid/view/View;
.source "NewNpsRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;,
        Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;
    }
.end annotation


# instance fields
.field private active:Z

.field private activeColor:I

.field private activeTextColor:I

.field private final borderPaint:Landroid/graphics/Paint;

.field private count:I

.field private height:I

.field private inactiveColor:I

.field private inactiveTextColor:I

.field private final linePadding:I

.field listener:Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;

.field private max:I

.field private padding:I

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private progressAnimator:Landroid/animation/ObjectAnimator;

.field private progressFraction:F

.field private radius:I

.field private scoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetProgressFraction:F

.field private final textHeight:F

.field private final textPaint:Landroid/graphics/Paint;

.field private width:I

.field private widthMinusPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    .line 58
    iput v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->linePadding:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    :try_start_0
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_max:I

    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    .line 95
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_active_color:I

    const-string p3, "#038CF4"

    .line 96
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->activeColor:I

    .line 97
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_active_text_color:I

    const/high16 p3, -0x1000000

    .line 98
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->activeTextColor:I

    .line 99
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_inactive_color:I

    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->inactiveColor:I

    .line 101
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_inactive_text_color:I

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->inactiveTextColor:I

    .line 103
    sget p2, Lcom/tgs/service/ai/R$styleable;->rsb_RatingSeekBar_rsb_text_size:I

    .line 104
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/tgs/service/ai/R$dimen;->rsb_default_label_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textPaint:Landroid/graphics/Paint;

    .line 114
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const-string v0, "1"

    .line 119
    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 120
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textHeight:F

    .line 122
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    .line 124
    iget p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setMax(I)V

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 127
    fill-array-data p1, :array_0

    const-string p2, "progressFraction"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    .line 128
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    iput-boolean v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    .line 133
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 135
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    throw p2

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private drawLabels(Landroid/graphics/Canvas;I)V
    .locals 7

    .line 333
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    div-int/2addr v0, p2

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->scoreList:Ljava/util/List;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->scoreList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "-999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->scoreList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 339
    :cond_1
    :goto_1
    iget v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v2, v2

    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    add-float/2addr v2, v5

    iget v5, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textHeight:F

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getProgress()I
    .locals 2

    .line 151
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private setTargetProgressFraction(FZ)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 177
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result v0

    .line 179
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    .line 180
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result p1

    if-eqz p2, :cond_1

    .line 182
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressFraction:F

    aput v4, v2, v3

    iget v3, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    aput v3, v2, v1

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 183
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 185
    :cond_1
    iget p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setProgressFraction(F)V

    .line 188
    :goto_0
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->listener:Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;

    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    if-eqz v2, :cond_2

    if-eq p1, v0, :cond_3

    .line 189
    :cond_2
    invoke-interface {p2, p0, p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;->onProgressChanged(Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;I)V

    .line 192
    :cond_3
    iput-boolean v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 406
    const-class v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    return v0
.end method

.method getProgressFraction()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressFraction:F

    return v0
.end method

.method public getTextX(I)F
    .locals 7

    .line 348
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    if-eqz p1, :cond_3

    .line 349
    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1

    .line 354
    :cond_2
    :goto_0
    iget v1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    float-to-double v1, v1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr v0, p1

    float-to-double v3, v0

    const-wide v5, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float p1, v1

    return p1

    .line 350
    :cond_3
    :goto_1
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v1

    .line 351
    :goto_2
    iget v2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v2, v2

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr v2, v0

    int-to-float p1, v1

    sub-float/2addr v2, p1

    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 252
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 257
    iget-object v8, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v11, v1

    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v12, v1

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 259
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->inactiveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 262
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 264
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 266
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v2, v1

    int-to-float v4, v1

    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 267
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v3, v1

    iget v4, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    const-string v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 271
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 273
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v2, v1

    int-to-float v4, v1

    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 274
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    int-to-float v3, v1

    iget v4, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->radius:I

    int-to-float v2, v1

    iget v3, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v3, v3

    iget v4, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressFraction:F

    iget v5, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    .line 279
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 278
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 280
    iget-boolean v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    if-eqz v2, :cond_3

    .line 281
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result v2

    iget v3, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    const/4 v4, 0x5

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    .line 286
    :cond_0
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 291
    :goto_1
    iget-object v8, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    iget v3, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->radius:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v2, v2

    sub-float v11, v1, v2

    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    sub-int/2addr v1, v4

    int-to-float v12, v1

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 293
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/16 v18, 0x0

    const/16 v19, -0x1

    const v20, -0xfc730c

    sget-object v21, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v14, v1

    move/from16 v17, v2

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 300
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 301
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 307
    :cond_3
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->inactiveTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    iget-boolean v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 316
    :cond_4
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    invoke-direct {v0, v7, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->drawLabels(Landroid/graphics/Canvas;I)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 319
    iget-boolean v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->active:Z

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->textPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->activeTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 327
    iget v1, v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    invoke-direct {v0, v7, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->drawLabels(Landroid/graphics/Canvas;I)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 411
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 412
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 413
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 418
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 420
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x2000

    .line 424
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1000

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tgs/service/ai/R$dimen;->rsb_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 198
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 199
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 205
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 210
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 399
    check-cast p1, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;

    .line 400
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 401
    iget p1, p1, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->targetProgressFraction:F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setTargetProgressFraction(FZ)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 391
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;

    invoke-direct {v1, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 393
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->targetProgressFraction:F

    iput v0, v1, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->targetProgressFraction:F

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 216
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->width:I

    .line 217
    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->height:I

    .line 218
    div-int/lit8 p3, p2, 0x2

    iput p3, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->radius:I

    .line 219
    iget p3, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    mul-int/2addr p2, p3

    sub-int/2addr p2, p1

    int-to-float p2, p2

    add-int/lit8 p3, p3, -0x1

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 220
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v3

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1, v3}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setTargetProgressFraction(FZ)V

    return v1

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setTargetProgressFraction(FZ)V

    return v1

    .line 227
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->padding:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->widthMinusPadding:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setTargetProgressFraction(FZ)V

    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 435
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_5

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_4

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 445
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 449
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setProgress(I)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v2

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getMax()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v3, :cond_6

    neg-int p2, p2

    .line 457
    :cond_6
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setProgress(I)Z

    move-result p1

    return p1
.end method

.method public setMax(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->max:I

    add-int/lit8 p1, p1, 0x1

    .line 247
    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->listener:Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)Z
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    .line 157
    iget v0, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->count:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setTargetProgressFraction(FZ)V

    const/4 p1, 0x1

    return p1
.end method

.method setProgressFraction(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->progressFraction:F

    .line 172
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->invalidate()V

    return-void
.end method

.method public setScoreList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->scoreList:Ljava/util/List;

    return-void
.end method
