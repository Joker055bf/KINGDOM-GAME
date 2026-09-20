.class public Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;
.super Landroid/text/style/TypefaceSpan;
.source "FontFamilySpan.java"


# instance fields
.field private bold:Z

.field private final fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private italic:Z


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-void
.end method

.method private applyCustomTypeFace(Landroid/graphics/Paint;Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V
    .locals 2

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->bold:Z

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->isFakeBold()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getBoldTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 85
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->italic:Z

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->isFakeItalic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x41800000    # -0.25f

    .line 87
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getItalicTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 93
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->bold:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->italic:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getBoldItalicTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getBoldItalicTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method


# virtual methods
.method public getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->bold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->italic:Z

    return v0
.end method

.method public setBold(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->bold:Z

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->italic:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  font-family: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  bold: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->isBold()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  italic: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->isItalic()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->applyCustomTypeFace(Landroid/graphics/Paint;Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    return-void
.end method

.method public updateMeasureState(Landroid/graphics/Paint;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->applyCustomTypeFace(Landroid/graphics/Paint;Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->applyCustomTypeFace(Landroid/graphics/Paint;Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    return-void
.end method
