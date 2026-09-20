.class public Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;
.super Ljava/lang/Object;
.source "StyleCallback.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;


# instance fields
.field private defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private end:I

.field private start:I

.field private useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    .line 32
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    .line 33
    iput p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    .line 34
    iput p4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    return-void
.end method

.method private getFontFamilySpan(Landroid/text/SpannableStringBuilder;II)Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;
    .locals 1

    .line 200
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    invoke-virtual {p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    if-eqz p1, :cond_0

    .line 202
    array-length p2, p1

    if-lez p2, :cond_0

    .line 203
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public applySpan(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontWeight()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 42
    :cond_0
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-direct {p0, p2, v0, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->getFontFamilySpan(Landroid/text/SpannableStringBuilder;II)Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    move-result-object v0

    .line 45
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 46
    new-instance v4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-direct {v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 48
    new-instance v4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance v4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    .line 53
    :goto_0
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontWeight()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 54
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontWeight()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    move-result-object v5

    sget-object v6, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;->BOLD:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    if-ne v5, v6, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->setBold(Z)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 56
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->isBold()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->setBold(Z)V

    .line 59
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-result-object v0

    sget-object v5, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->ITALIC:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    if-ne v0, v5, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->setItalic(Z)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->isItalic()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;->setItalic(Z)V

    .line 68
    :cond_8
    :goto_4
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v4, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    :cond_9
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getContrastPatcher()Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    move-result-object v0

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-interface {v0, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;->patchBackgroundColor(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseColoursFromStyle()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-result-object v4

    if-nez v4, :cond_a

    .line 76
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v4, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBorderStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 82
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v6, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-direct {v0, v4, v5, v6, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;IILcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    iget v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v0, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextDecoration()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextDecoration()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    move-result-object v0

    sget-object v4, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->UNDERLINE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    if-ne v0, v4, :cond_c

    .line 87
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v0, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontSize()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 92
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getFontSize()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v5

    sget-object v6, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v5, v6, :cond_d

    .line 95
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v5

    if-lez v5, :cond_e

    .line 97
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v0

    invoke-direct {v5, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v6, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v5, v0, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 101
    :cond_d
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_e

    .line 103
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v0

    invoke-direct {v5, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v6, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v5, v0, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :cond_e
    :goto_5
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getContrastPatcher()Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;

    move-result-object v0

    iget-object v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-interface {v0, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;->patchFontColor(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseColoursFromStyle()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz v0, :cond_f

    .line 112
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, p1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_f
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextAlignment()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 120
    sget-object p1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback$1;->$SwitchMap$com$tgs$aics$thirdtool$htmlspanner$style$Style$TextAlignment:[I

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextAlignment()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v2, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    const/4 p1, 0x0

    goto :goto_6

    .line 128
    :cond_10
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/AlignOppositeSpan;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/AlignOppositeSpan;-><init>()V

    goto :goto_6

    .line 125
    :cond_11
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/CenterSpan;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/CenterSpan;-><init>()V

    goto :goto_6

    .line 122
    :cond_12
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/AlignNormalSpan;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/AlignNormalSpan;-><init>()V

    .line 133
    :goto_6
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_13
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextIndent()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 141
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getTextIndent()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    .line 143
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    .line 144
    :goto_7
    iget v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    if-ge v0, v2, :cond_14

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 148
    :cond_14
    iget v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    add-int/lit8 v5, v0, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Applying LeadingMarginSpan from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {p2, v0, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StyleCallback"

    .line 150
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v5

    sget-object v6, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v5, v6, :cond_15

    .line 154
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v5

    if-lez v5, :cond_16

    .line 155
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result p1

    invoke-direct {v5, p1, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-virtual {p2, v5, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 160
    :cond_15
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_16

    .line 161
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    sget v6, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->HORIZONTAL_EM_WIDTH:I

    int-to-float v6, v6

    .line 162
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result p1

    mul-float/2addr v6, p1

    float-to-int p1, v6

    invoke-direct {v5, p1, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 161
    invoke-virtual {p2, v5, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 170
    :cond_16
    :goto_8
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginLeft()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 171
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->useStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginLeft()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v0, v1, :cond_17

    .line 174
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v0

    if-lez v0, :cond_18

    .line 175
    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    iget p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    invoke-virtual {p2, v0, p1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    .line 179
    :cond_17
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_18

    .line 180
    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    sget v1, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->HORIZONTAL_EM_WIDTH:I

    int-to-float v1, v1

    .line 181
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-direct {v0, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    iget p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->start:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;->end:I

    .line 180
    invoke-virtual {p2, v0, p1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    :goto_9
    return-void
.end method
