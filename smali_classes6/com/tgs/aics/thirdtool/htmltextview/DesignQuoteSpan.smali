.class public Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;
.super Ljava/lang/Object;
.source "DesignQuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private backgroundColor:I

.field private gap:F

.field private stripColor:I

.field private stripeWidth:F


# direct methods
.method constructor <init>(IIFF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->backgroundColor:I

    .line 32
    iput p2, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->stripColor:I

    .line 33
    iput p3, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->stripeWidth:F

    .line 34
    iput p4, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->gap:F

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 7

    move-object v0, p2

    .line 59
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    move-object v2, p0

    .line 60
    iget v3, v2, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->backgroundColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v3, p3

    int-to-float v3, v3

    move v4, p5

    int-to-float v4, v4

    move v5, p4

    int-to-float v5, v5

    move v6, p7

    int-to-float v6, v6

    move-object p3, p1

    move p4, v3

    move p5, v4

    move p6, v5

    move p7, v6

    move-object p8, p2

    .line 61
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 48
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget v4, v0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->stripColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v4, p3

    int-to-float v4, v4

    move v5, p5

    int-to-float v5, v5

    move v6, p4

    int-to-float v6, v6

    .line 50
    iget v7, v0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->stripeWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    move v7, p7

    int-to-float v7, v7

    move-object p3, p1

    move p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    move-object/from16 p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 39
    iget p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->stripeWidth:F

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;->gap:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
