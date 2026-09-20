.class public final Lcom/applovin/impl/adview/s;
.super Lcom/applovin/impl/adview/i;
.source "SourceFile"


# static fields
.field private static final c:Landroid/graphics/Paint;

.field private static final d:Landroid/graphics/Paint;


# instance fields
.field private final e:[F

.field private f:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/i;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    .line 21
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/applovin/impl/adview/s;->e:[F

    .line 31
    sget-object p1, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 33
    sget-object p1, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x41f00000    # 30.0f
        0x428c0000    # 70.0f
        0x425c0000    # 55.0f
        0x41f00000    # 30.0f
        0x42960000    # 75.0f
        0x42480000    # 50.0f
        0x425c0000    # 55.0f
        0x428c0000    # 70.0f
    .end array-data
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/adview/s;->e:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 82
    aget v3, v2, v1

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/applovin/impl/adview/s;->a:F

    mul-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    .line 87
    iget-object v2, p0, Lcom/applovin/impl/adview/s;->e:[F

    aget v0, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    iget-object v0, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:[F

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:[F

    const/4 v2, 0x6

    aget v2, v1, v2

    const/4 v3, 0x7

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:[F

    const/16 v2, 0x8

    aget v2, v1, v2

    const/16 v3, 0x9

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:[F

    const/16 v2, 0xa

    aget v2, v1, v2

    const/16 v3, 0xb

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    .line 51
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/s;->setViewScale(F)V

    .line 54
    invoke-direct {p0}, Lcom/applovin/impl/adview/s;->a()V

    return-void
.end method

.method protected getCenter()F
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getStrokeWidth()F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 39
    iget v1, p0, Lcom/applovin/impl/adview/s;->a:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public getStyle()Lcom/applovin/impl/adview/i$a;
    .locals 1

    .line 60
    sget-object v0, Lcom/applovin/impl/adview/i$a;->d:Lcom/applovin/impl/adview/i$a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/i;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getCenter()F

    move-result v0

    .line 70
    sget-object v1, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    sget-object v0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v1, p0, Lcom/applovin/impl/adview/s;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
