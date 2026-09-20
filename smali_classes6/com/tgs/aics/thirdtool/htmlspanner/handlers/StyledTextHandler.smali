.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "StyledTextHandler.java"


# instance fields
.field private style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    .line 23
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    return-void
.end method

.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    return-void
.end method


# virtual methods
.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->getStyle(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getDisplayStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->BLOCK:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 42
    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginTop()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginTop()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne v0, v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;-><init>(Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 55
    invoke-virtual {p3, v0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 61
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;-><init>(Ljava/lang/Float;)V

    .line 63
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 62
    invoke-virtual {p3, v0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->style:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    return-object v0
.end method

.method public final handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 8

    .line 75
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->getStyle(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 76
    invoke-virtual/range {v1 .. v7}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method

.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 1

    .line 81
    invoke-virtual {p5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getDisplayStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    move-result-object p1

    sget-object p4, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->BLOCK:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    if-ne p1, p4, :cond_1

    .line 82
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 86
    invoke-virtual {p5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginBottom()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getMarginBottom()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object p4

    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    if-ne p4, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result p4

    if-lez p4, :cond_1

    .line 92
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 93
    new-instance p4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;-><init>(Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 93
    invoke-virtual {p6, p4, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result p4

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    .line 98
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 100
    new-instance p4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->getFloatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/VerticalMarginSpan;-><init>(Ljava/lang/Float;)V

    .line 101
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 100
    invoke-virtual {p6, p4, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-le p1, p3, :cond_2

    .line 109
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object p4

    invoke-virtual {p4}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getFontResolver()Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    move-result-object p4

    .line 110
    invoke-interface {p4}, Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;->getDefaultFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p4

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p1, p4, p5, p3, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;II)V

    .line 109
    invoke-virtual {p6, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;)V

    goto :goto_1

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Refusing to push span of length "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StyledTextHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
