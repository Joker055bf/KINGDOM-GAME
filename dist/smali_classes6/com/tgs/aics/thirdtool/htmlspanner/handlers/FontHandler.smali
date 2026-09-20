.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
.source "FontHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isAllowStyling()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "face"

    .line 44
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    .line 45
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    .line 46
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v0

    .line 50
    invoke-virtual {p5, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontFamily(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    if-eqz v1, :cond_0

    const-string v0, "font-size"

    .line 53
    invoke-static {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;->updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    :cond_0
    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseColoursFromStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {v2, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/FontHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;->updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 70
    invoke-super/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method
