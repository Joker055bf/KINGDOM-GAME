.class public Lorg/htmlcleaner/XmlTraversor;
.super Ljava/lang/Object;
.source "XmlTraversor.java"


# instance fields
.field private visitor:Lorg/htmlcleaner/XmlVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static traverse(Lorg/htmlcleaner/XmlVisitor;Lorg/htmlcleaner/HtmlNode;)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 25
    invoke-interface {p0, v1, v2}, Lorg/htmlcleaner/XmlVisitor;->head(Lorg/htmlcleaner/HtmlNode;I)V

    .line 26
    instance-of v3, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->hasChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/HtmlNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v1}, Lorg/htmlcleaner/HtmlNode;->getSiblings()Ljava/util/List;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    if-lez v2, :cond_1

    .line 33
    invoke-interface {p0, v1, v2}, Lorg/htmlcleaner/XmlVisitor;->tail(Lorg/htmlcleaner/HtmlNode;I)V

    .line 34
    invoke-interface {v1}, Lorg/htmlcleaner/HtmlNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 37
    :cond_1
    invoke-interface {p0, v1, v2}, Lorg/htmlcleaner/XmlVisitor;->tail(Lorg/htmlcleaner/HtmlNode;I)V

    if-ne v1, p1, :cond_2

    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/HtmlNode;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
