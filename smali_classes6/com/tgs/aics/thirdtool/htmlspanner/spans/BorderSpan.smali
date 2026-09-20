.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;
.super Ljava/lang/Object;
.source "BorderSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private end:I

.field private spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

.field private start:I

.field private style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;IILcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->start:I

    .line 34
    iput p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->end:I

    .line 36
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    .line 37
    iput-object p4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p7

    .line 50
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginLeft()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginLeft()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v3

    sget-object v4, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v3, v4, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 55
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v2

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 58
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v1

    sget v2, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->HORIZONTAL_EM_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-lez v2, :cond_3

    add-int v1, p3, v2

    move v11, v1

    goto :goto_1

    :cond_3
    move/from16 v11, p3

    .line 69
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    .line 72
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getContrastPatcher()Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    move-result-object v1

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-interface {v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;->patchBackgroundColor(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseColoursFromStyle()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v8

    int-to-float v5, v10

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 77
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    :cond_4
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseColoursFromStyle()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 81
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :cond_5
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderWidth()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderWidth()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v1, v2, :cond_6

    .line 87
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderWidth()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    :goto_2
    int-to-float v2, v1

    .line 92
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-int/2addr v8, v1

    .line 95
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->start:I

    const-string v14, "BorderSpan"

    move/from16 v2, p9

    if-gt v2, v1, :cond_7

    const-string v1, "Drawing first line"

    .line 98
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v11

    int-to-float v5, v9

    int-to-float v4, v8

    move-object/from16 v1, p1

    move v3, v5

    move-object/from16 v6, p2

    .line 99
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    :cond_7
    iget v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;->end:I

    move/from16 v2, p10

    if-lt v2, v1, :cond_8

    const-string v1, "Drawing last line"

    .line 103
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v11

    int-to-float v5, v10

    int-to-float v4, v8

    move-object/from16 v1, p1

    move v3, v5

    move-object/from16 v6, p2

    .line 104
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    int-to-float v1, v11

    int-to-float v2, v9

    int-to-float v3, v10

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v1

    move/from16 p7, v3

    move-object/from16 p8, p2

    .line 107
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v8

    move/from16 p4, v1

    move/from16 p6, v1

    .line 108
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
