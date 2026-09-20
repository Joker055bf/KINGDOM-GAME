.class Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/utils/RoundedImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedCornerDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapWidth:I

.field private mBounds:Landroid/graphics/RectF;

.field private mBoundsConfigured:Z

.field private mPath:Landroid/graphics/Path;

.field private mRadii:[F


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V
    .locals 4

    .line 139
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBounds:Landroid/graphics/RectF;

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapRect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 133
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mRadii:[F

    .line 135
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBoundsConfigured:Z

    .line 140
    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 141
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 143
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapWidth:I

    .line 144
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapHeight:I

    int-to-float p2, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v2, v2, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 149
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

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

.method static synthetic access$000(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 124
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;
    .locals 0

    .line 124
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->fromBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    move-result-object p0

    return-object p0
.end method

.method private applyScaleToRadii(Landroid/graphics/Matrix;)V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 209
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    move v1, p1

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mRadii:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 211
    aget v3, v2, v1

    aget v4, v0, p1

    div-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private configureBounds(Landroid/graphics/Canvas;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->applyScaleToRadii(Landroid/graphics/Matrix;)V

    .line 204
    iget-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 181
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 182
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static fromBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;
    .locals 1

    if-eqz p0, :cond_0

    .line 154
    new-instance v0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_3

    .line 160
    instance-of v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    if-eqz v0, :cond_0

    return-object p0

    .line 162
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 163
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 164
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 172
    :cond_2
    invoke-static {p0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 173
    new-instance p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    :cond_3
    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 218
    iget-boolean v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBoundsConfigured:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->configureBounds(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBoundsConfigured:Z

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 223
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x3

    :goto_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 245
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 251
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->invalidateSelf()V

    return-void
.end method

.method setCornerRadii([F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mRadii:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "radii[] needs 8 values"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDither(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->invalidateSelf()V

    return-void
.end method
