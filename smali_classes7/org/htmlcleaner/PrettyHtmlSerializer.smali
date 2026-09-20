.class public Lorg/htmlcleaner/PrettyHtmlSerializer;
.super Lorg/htmlcleaner/HtmlSerializer;
.source "PrettyHtmlSerializer.java"


# static fields
.field private static final DEFAULT_INDENTATION_STRING:Ljava/lang/String; = "\t"


# instance fields
.field private indentString:Ljava/lang/String;

.field private indents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1

    const-string v0, "\t"

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    const-string p1, "\t"

    .line 50
    iput-object p1, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    .line 59
    iput-object p2, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized getIndent(I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-gt v0, p1, :cond_2

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    :goto_1
    iget-object v2, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lorg/htmlcleaner/PrettyHtmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getIndentedText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 85
    invoke-direct {p0, p2}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n\r"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 104
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lorg/htmlcleaner/ContentNode;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 63
    invoke-virtual/range {v0 .. v5}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V

    return-void
.end method

.method protected serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 143
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-virtual/range {p1 .. p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {v6, v9}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v2

    const-string v12, "\n"

    if-nez p4, :cond_2

    if-nez p5, :cond_1

    .line 150
    invoke-virtual {v8, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {v8, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    const/4 v13, 0x1

    .line 154
    invoke-virtual {v6, v7, v8, v13}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    const/4 v14, 0x0

    if-nez p4, :cond_4

    const-string v2, "pre"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v15, v14

    goto :goto_2

    :cond_4
    :goto_1
    move v15, v13

    .line 160
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 161
    invoke-direct {v6, v0}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v16

    if-nez v15, :cond_6

    if-eqz v5, :cond_6

    .line 164
    invoke-virtual/range {p0 .. p1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6, v5}, Lorg/htmlcleaner/PrettyHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v5

    :goto_3
    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v19, v5

    move/from16 v18, v14

    goto/16 :goto_c

    .line 166
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v14

    .line 167
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 168
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_8

    .line 170
    move-object v1, v0

    check-cast v1, Lorg/htmlcleaner/TagNode;

    if-eqz v10, :cond_7

    move v3, v9

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v9, 0x1

    move v3, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v15

    move-object/from16 v19, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializePrettyHtml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;IZZ)V

    move/from16 v18, v14

    goto/16 :goto_b

    :cond_8
    move-object/from16 v19, v5

    .line 172
    instance-of v1, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v1, :cond_11

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v16, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v6, v0}, Lorg/htmlcleaner/PrettyHtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    if-nez v16, :cond_10

    if-eqz v15, :cond_a

    goto :goto_8

    .line 177
    :cond_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v18, :cond_b

    .line 179
    invoke-virtual {v8, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move/from16 v18, v14

    .line 182
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 183
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_c

    move v1, v9

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v9, 0x1

    :goto_7
    invoke-direct {v6, v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    .line 188
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 189
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 192
    invoke-virtual {v8, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_f
    move/from16 v18, v13

    goto :goto_b

    .line 176
    :cond_10
    :goto_8
    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    .line 197
    :cond_11
    instance-of v1, v0, Lorg/htmlcleaner/CommentNode;

    if-eqz v1, :cond_15

    if-nez v18, :cond_12

    if-nez v15, :cond_12

    .line 200
    invoke-virtual {v8, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move/from16 v18, v14

    .line 203
    :cond_12
    check-cast v0, Lorg/htmlcleaner/CommentNode;

    .line 204
    invoke-virtual {v0}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v16, :cond_13

    goto :goto_a

    :cond_13
    if-eqz v10, :cond_14

    move v1, v9

    goto :goto_9

    :cond_14
    add-int/lit8 v1, v9, 0x1

    .line 205
    :goto_9
    invoke-direct {v6, v0, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_15
    :goto_b
    move-object/from16 v5, v19

    goto/16 :goto_4

    :cond_16
    move-object/from16 v19, v5

    :goto_c
    if-nez v19, :cond_18

    if-nez v15, :cond_18

    if-nez v18, :cond_17

    .line 212
    invoke-virtual {v8, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    :cond_17
    invoke-virtual {v8, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    :cond_18
    invoke-virtual {v6, v7, v8, v14}, Lorg/htmlcleaner/PrettyHtmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_19
    return-void
.end method
