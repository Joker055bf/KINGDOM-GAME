.class public Lcom/ypx/imagepicker/widget/ShowTypeImageView;
.super Landroid/widget/ImageView;
.source "ShowTypeImageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE_GIF:I = 0x1

.field public static final TYPE_IMAGECOUNT:I = 0x4

.field public static final TYPE_LONG:I = 0x2

.field public static final TYPE_NONE:I = 0x3

.field public static final TYPE_VIDEO:I = 0x5


# instance fields
.field private imageCountTip:Ljava/lang/String;

.field protected imageType:I

.field private isSelect:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;

.field private videoBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 33
    iput p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageCountTip:Ljava/lang/String;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->isSelect:Z

    .line 41
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 33
    iput p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageCountTip:Ljava/lang/String;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->isSelect:Z

    .line 46
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 33
    iput p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageCountTip:Ljava/lang/String;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->isSelect:Z

    .line 51
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mMaskPaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mMaskPaint:Landroid/graphics/Paint;

    const-string v2, "#40000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "#90000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->sp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mSelectPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mSelectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$mipmap;->picker_item_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->videoBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public dp(F)I
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 194
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getScreenHeight()I
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 187
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->isSelect:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getWidth()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getHeight()I

    move-result v1

    .line 118
    iget v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x41d80000    # 27.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x40400000    # 3.0f

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto/16 :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->videoBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, v1

    .line 121
    iget-object v9, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mMaskPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->videoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    shr-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->videoBitmap:Landroid/graphics/Bitmap;

    .line 123
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    shr-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v8}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v7}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 144
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 145
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 146
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageCountTip:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0, v5}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v8}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 134
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v7}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 135
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 136
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 137
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v9}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v5}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "\u957f\u56fe"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    shr-int/lit8 v2, v0, 0x1

    int-to-float v4, v2

    shr-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v0, v0

    const v5, 0x3e3851ec

    mul-float/2addr v0, v5

    .line 128
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 129
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "GIF"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setImageCountTip(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageCountTip:Ljava/lang/String;

    const/4 p1, 0x4

    .line 161
    iput p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    .line 162
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->invalidate()V

    return-void
.end method

.method public setSelect(ZI)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->isSelect:Z

    .line 61
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    .line 56
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->invalidate()V

    return-void
.end method

.method public setTypeFromImage(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 167
    iget v0, p0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->imageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    .line 171
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setType(I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isGif()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setType(I)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isLongImage()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 175
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setType(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 177
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setType(I)V

    :goto_0
    return-void
.end method

.method public sp(F)I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
