.class public Lorg/htmlcleaner/CompactXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "CompactXmlSerializer.java"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method

.method private isWhitespaceString(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/CompactXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 57
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 59
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_3

    .line 64
    check-cast v2, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {v2}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "]]>"

    const-string v4, "]]&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/htmlcleaner/CompactXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/htmlcleaner/CompactXmlSerializer;->isWhitespaceString(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\n"

    .line 69
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_3
    instance-of v3, v2, Lorg/htmlcleaner/CommentNode;

    if-eqz v3, :cond_4

    .line 74
    check-cast v2, Lorg/htmlcleaner/CommentNode;

    invoke-virtual {v2}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_4
    check-cast v2, Lorg/htmlcleaner/BaseToken;

    invoke-interface {v2, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/CompactXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_6
    return-void
.end method
