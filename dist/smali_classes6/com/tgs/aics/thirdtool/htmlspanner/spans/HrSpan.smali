.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/HrSpan;
.super Landroid/text/style/ReplacementSpan;
.source "HrSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 19
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 20
    invoke-static {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int/2addr p6, p8

    .line 22
    div-int/lit8 p6, p6, 0x2

    const/4 v1, 0x0

    int-to-float v4, p6

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float v3, p2

    move-object v0, p1

    move v2, v4

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
