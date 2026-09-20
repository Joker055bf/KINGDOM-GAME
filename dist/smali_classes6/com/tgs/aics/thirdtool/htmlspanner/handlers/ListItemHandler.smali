.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "ListItemHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method

.method private getMyIndex(Lorg/htmlcleaner/TagNode;)I
    .locals 5

    .line 37
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    return v2

    .line 48
    :cond_2
    instance-of v4, v3, Lorg/htmlcleaner/TagNode;

    if-eqz v4, :cond_1

    .line 49
    check-cast v3, Lorg/htmlcleaner/TagNode;

    const-string v4, "li"

    .line 50
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 2

    .line 71
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const-string v0, "\n"

    .line 73
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    const-string p2, "ol"

    .line 76
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;->getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 77
    new-instance p2, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;->getMyIndex(Lorg/htmlcleaner/TagNode;)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;-><init>(I)V

    .line 78
    invoke-virtual {p5, p2, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const-string p2, "ul"

    .line 79
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ListItemHandler;->getParentName(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/ListItemSpan;-><init>()V

    .line 82
    invoke-virtual {p5, p1, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    :cond_2
    :goto_0
    return-void
.end method
