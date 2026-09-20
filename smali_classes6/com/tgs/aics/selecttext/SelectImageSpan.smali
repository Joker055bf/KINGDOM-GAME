.class public Lcom/tgs/aics/selecttext/SelectImageSpan;
.super Landroid/text/style/ImageSpan;
.source "SelectImageSpan.java"


# instance fields
.field private bgColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 24
    iput p2, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->bgColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 30
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    iget p3, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->bgColor:I

    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p6

    .line 35
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    add-float v3, p5, p3

    int-to-float v4, p8

    move-object v0, p1

    move v1, p5

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p8, p3

    .line 39
    iget p4, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->mVerticalAlignment:I

    const/4 p7, 0x1

    if-ne p4, p7, :cond_0

    .line 40
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, p4

    goto :goto_0

    .line 41
    :cond_0
    iget p4, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->mVerticalAlignment:I

    const/4 p7, 0x2

    if-ne p4, p7, :cond_1

    sub-int/2addr p8, p6

    .line 42
    div-int/2addr p8, p7

    add-int/2addr p6, p8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, p7

    sub-int p3, p6, p3

    :cond_1
    :goto_0
    int-to-float p3, p3

    .line 44
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBgColor()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->bgColor:I

    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectImageSpan;->bgColor:I

    return-void
.end method
