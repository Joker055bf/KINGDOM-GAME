.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;
.source "StyleAttributeHandler.java"


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    return-void
.end method

.method private parseStyleFromAttribute(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 8

    const-string v0, ";"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    move-object v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const-string v6, ":"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 45
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StyleAttributeHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 50
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 51
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v6, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;->updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 9

    const-string v0, "style"

    .line 25
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isAllowStyling()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0, p5, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/StyleAttributeHandler;->parseStyleFromAttribute(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    .line 28
    invoke-super/range {v2 .. v8}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    :goto_0
    return-void
.end method
