.class public Lorg/htmlcleaner/SimpleHtmlSerializer;
.super Lorg/htmlcleaner/HtmlSerializer;
.source "SimpleHtmlSerializer.java"


# instance fields
.field escape:Z


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lorg/htmlcleaner/SimpleHtmlSerializer;->escape:Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    .line 51
    iput-boolean p2, p0, Lorg/htmlcleaner/SimpleHtmlSerializer;->escape:Z

    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/SimpleHtmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/SimpleHtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 62
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_3

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/SimpleHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/htmlcleaner/SimpleHtmlSerializer;->escape:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/htmlcleaner/SimpleHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    instance-of v3, v2, Lorg/htmlcleaner/BaseToken;

    if-eqz v3, :cond_0

    .line 67
    check-cast v2, Lorg/htmlcleaner/BaseToken;

    invoke-interface {v2, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/SimpleHtmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_5
    return-void
.end method
