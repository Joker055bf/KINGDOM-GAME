.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "StyleNodeHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method

.method private parseCSSFromText(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 2

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/osbcp/cssparser/CSSParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/osbcp/cssparser/Rule;

    .line 38
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->compile(Lcom/osbcp/cssparser/Rule;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->registerCompiledRule(Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "StyleNodeHandler"

    const-string v0, "Unparseable CSS definition"

    .line 41
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isAllowStyling()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 24
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of p2, p1, Lorg/htmlcleaner/ContentNode;

    if-eqz p2, :cond_0

    .line 27
    check-cast p1, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {p1}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyleNodeHandler;->parseCSSFromText(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    :cond_0
    return-void
.end method

.method public rendersContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
