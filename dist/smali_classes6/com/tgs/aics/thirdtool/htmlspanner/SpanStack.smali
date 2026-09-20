.class public Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;
.super Ljava/lang/Object;
.source "SpanStack.java"


# instance fields
.field private lookupCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/htmlcleaner/TagNode;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private rules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;",
            ">;"
        }
    .end annotation
.end field

.field private spanItemStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->spanItemStack:Ljava/util/Stack;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->rules:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->lookupCache:Ljava/util/Map;

    return-void
.end method

.method private static option(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public applySpans(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->spanItemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->spanItemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;

    invoke-interface {v0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;->applySpan(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getStyle(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->lookupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SpanStack"

    if-nez v0, :cond_2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Looking for matching CSS rules for node: <"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->option(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' class=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "class"

    .line 39
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->option(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->rules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;

    .line 43
    invoke-virtual {v3, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->matches(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matching rules."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->lookupCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->lookupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Applying rule "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;->applyStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Original style: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Resulting style: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v0

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public pushSpan(Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->spanItemStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushSpan(Ljava/lang/Object;II)V
    .locals 2

    if-le p3, p2, :cond_0

    .line 79
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Ljava/lang/Object;II)V

    .line 87
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->spanItemStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refusing to put span of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " and length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpanStack"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerCompiledRule(Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->rules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
