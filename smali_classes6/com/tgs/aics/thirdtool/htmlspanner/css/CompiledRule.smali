.class public Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;
.super Ljava/lang/Object;
.source "CompiledRule.java"


# instance fields
.field private asText:Ljava/lang/String;

.field private matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

.field private styleUpdaters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->matchers:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    .line 31
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->matchers:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->styleUpdaters:Ljava/util/List;

    .line 33
    iput-object p4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->asText:Ljava/lang/String;

    return-void
.end method

.method private static matchesChain(Ljava/util/List;Lorg/htmlcleaner/TagNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;",
            ">;",
            "Lorg/htmlcleaner/TagNode;",
            ")Z"
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;

    .line 69
    invoke-interface {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;->matches(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public applyStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->styleUpdaters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    .line 45
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-interface {v1, p1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;->updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public matches(Lorg/htmlcleaner/TagNode;)Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 56
    invoke-static {v1, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->matchesChain(Ljava/util/List;Lorg/htmlcleaner/TagNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->asText:Ljava/lang/String;

    return-object v0
.end method
