.class public Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;
.super Landroid/view/View;
.source "ClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;
    }
.end annotation


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private clipBorderWidth:I

.field private clipRadiusWidth:I

.field private clipType:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

.field private clipWidth:I

.field private mHorizontalPadding:F

.field private paint:Landroid/graphics/Paint;

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    .line 34
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipType:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    .line 48
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipBorderWidth:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->xfermode:Landroid/graphics/Xfermode;

    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 133
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 157
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 144
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method


# virtual methods
.method public getClipRect()Landroid/graphics/Rect;
    .locals 3

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 93
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 95
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 97
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    const-string v0, "#a8000000"

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 64
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 66
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipType:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipType:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->RECTANGLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    if-ne v0, v1, :cond_1

    .line 73
    iget v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->mHorizontalPadding:F

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 74
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->mHorizontalPadding:F

    sub-float v5, v0, v1

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 73
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v9, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->mHorizontalPadding:F

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v10, v0

    .line 77
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->mHorizontalPadding:F

    sub-float v11, v0, v1

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v12, v0

    iget-object v13, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    move-object v8, p1

    .line 76
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setClipBorderWidth(I)V
    .locals 1

    .line 107
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipBorderWidth:I

    .line 108
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->borderPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->invalidate()V

    return-void
.end method

.method public setClipType(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipType:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    return-void
.end method

.method public setmHorizontalPadding(F)V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v3, 0x42480000    # 50.0f

    .line 120
    invoke-direct {p0, v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->dp2px(F)I

    move-result v4

    add-int/2addr v4, v1

    if-le v2, v4, :cond_0

    .line 121
    invoke-direct {p0, v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 123
    :cond_0
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->mHorizontalPadding:F

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 128
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipRadiusWidth:I

    mul-int/lit8 p1, p1, 0x2

    .line 129
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->clipWidth:I

    return-void
.end method
