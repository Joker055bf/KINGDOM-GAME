.class public Lorg/htmlcleaner/CompactHtmlSerializer;
.super Lorg/htmlcleaner/HtmlSerializer;
.source "CompactHtmlSerializer.java"


# instance fields
.field private openPreTags:I


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pre"

    .line 55
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 57
    iget v2, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    :cond_0
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, v2}, Lorg/htmlcleaner/CompactHtmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 62
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v3

    .line 63
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactHtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 64
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 66
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 67
    instance-of v5, v4, Lorg/htmlcleaner/ContentNode;

    if-eqz v5, :cond_7

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    iget v5, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    if-lez v5, :cond_2

    .line 70
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v2

    .line 73
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    .line 74
    :goto_2
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CompactHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v4}, Lorg/htmlcleaner/CompactHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/16 v7, 0x20

    if-eqz v5, :cond_6

    .line 77
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 80
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 96
    :cond_7
    instance-of v5, v4, Lorg/htmlcleaner/CommentNode;

    if-eqz v5, :cond_8

    .line 97
    check-cast v4, Lorg/htmlcleaner/CommentNode;

    invoke-virtual {v4}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_8
    instance-of v5, v4, Lorg/htmlcleaner/BaseToken;

    if-eqz v5, :cond_1

    .line 100
    check-cast v4, Lorg/htmlcleaner/BaseToken;

    invoke-interface {v4, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 104
    :cond_9
    invoke-virtual {p0, p1, p2, v2}, Lorg/htmlcleaner/CompactHtmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    if-eqz v0, :cond_a

    .line 106
    iget p1, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/htmlcleaner/CompactHtmlSerializer;->openPreTags:I

    :cond_a
    return-void
.end method
