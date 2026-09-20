.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "PreHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method

.method private getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 41
    instance-of v0, p2, Lorg/htmlcleaner/ContentNode;

    if-eqz v0, :cond_0

    .line 43
    check-cast p2, Lorg/htmlcleaner/ContentNode;

    .line 44
    invoke-virtual {p2}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 44
    invoke-static {p2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->replaceHtmlEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 49
    :cond_0
    instance-of v0, p2, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_1

    .line 50
    check-cast p2, Lorg/htmlcleaner/TagNode;

    .line 51
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;->getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    .line 61
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    invoke-direct {p0, p4, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;->getPlainText(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getFontResolver()Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    move-result-object p1

    invoke-interface {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;->getMonoSpaceFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p1

    .line 67
    new-instance p4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;

    invoke-direct {p4, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/FontFamilySpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p5, p4, p3, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 69
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/PreHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    return-void
.end method

.method public rendersContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
