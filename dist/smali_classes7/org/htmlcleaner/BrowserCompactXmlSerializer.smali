.class public Lorg/htmlcleaner/BrowserCompactXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "BrowserCompactXmlSerializer.java"


# static fields
.field private static final BR_TAG:Ljava/lang/String; = "<br />"

.field private static final LINE_BREAK:Ljava/lang/String; = "\n"

.field private static final PRE_TAG:Ljava/lang/String; = "pre"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method

.method private isContentOrInline(Ljava/lang/Object;)Z
    .locals 3

    .line 143
    instance-of v0, p1, Lorg/htmlcleaner/ContentNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    check-cast p1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getDisplay()Lorg/htmlcleaner/Display;

    move-result-object p1

    sget-object v0, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 68
    iget-object v1, p0, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 70
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 72
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 73
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_12

    .line 74
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 76
    instance-of v7, v5, Lorg/htmlcleaner/ContentNode;

    if-eqz v7, :cond_f

    const-string v8, "pre"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 77
    move-object v7, v5

    check-cast v7, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {v7}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "]]>"

    const-string v9, "]]&gt;"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v7}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const-string v8, "^\u00a0+"

    const-string v9, " "

    .line 79
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u00a0+$"

    .line 80
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getDisplay()Lorg/htmlcleaner/Display;

    move-result-object v8

    invoke-virtual {v8}, Lorg/htmlcleaner/Display;->isLeadingAndEndWhitespacesAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v0

    .line 82
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v6

    goto :goto_4

    :cond_4
    move v9, v0

    .line 83
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_5

    :cond_5
    move v10, v0

    .line 84
    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_e

    .line 87
    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v11, 0x2

    if-lt v5, v11, :cond_6

    add-int/lit8 v5, v5, -0x1

    .line 89
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 90
    invoke-direct {p0, v5}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->isContentOrInline(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_6

    :cond_6
    move v5, v0

    :goto_6
    const/16 v11, 0x20

    if-eqz v9, :cond_8

    if-nez v8, :cond_7

    if-eqz v5, :cond_8

    .line 94
    :cond_7
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 97
    :cond_8
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v9, "\n"

    invoke-direct {v5, v7, v9, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, ""

    .line 99
    :goto_7
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 100
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "<br />"

    .line 102
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 104
    :cond_9
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 105
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    goto :goto_8

    .line 107
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_8
    move-object v6, v7

    goto :goto_7

    .line 113
    :cond_b
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 114
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 115
    invoke-direct {p0, v5}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->isContentOrInline(Ljava/lang/Object;)Z

    move-result v5

    .line 116
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_9

    :cond_c
    move v5, v0

    :goto_9
    if-eqz v10, :cond_1

    if-nez v8, :cond_d

    if-eqz v5, :cond_1

    .line 120
    :cond_d
    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 123
    :cond_e
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_1

    :cond_f
    if-eqz v7, :cond_10

    .line 126
    check-cast v5, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {v5}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_10
    instance-of v6, v5, Lorg/htmlcleaner/CommentNode;

    if-eqz v6, :cond_11

    .line 129
    check-cast v5, Lorg/htmlcleaner/CommentNode;

    invoke-virtual {v5}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    :cond_11
    check-cast v5, Lorg/htmlcleaner/BaseToken;

    invoke-interface {v5, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto/16 :goto_1

    :cond_12
    if-eqz v1, :cond_13

    .line 137
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getDisplay()Lorg/htmlcleaner/Display;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlcleaner/Display;->isAfterTagLineBreakNeeded()Z

    move-result v1

    if-eqz v1, :cond_13

    move v0, v6

    :cond_13
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_14
    return-void
.end method
