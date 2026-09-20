.class public Lorg/htmlcleaner/PrettyXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "PrettyXmlSerializer.java"


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

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    const-string p1, "\t"

    .line 51
    iput-object p1, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized getIndent(I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-gt v0, p1, :cond_2

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_1
    iget-object v2, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lorg/htmlcleaner/PrettyXmlSerializer;->indents:Ljava/util/List;

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

    .line 87
    invoke-direct {p0, p2}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object p2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n\r"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;
    .locals 5
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

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 109
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 112
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0, v2}, Lorg/htmlcleaner/PrettyXmlSerializer;->ltrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-direct {p0, v2}, Lorg/htmlcleaner/PrettyXmlSerializer;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "\n"

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const-string v1, "\r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v4

    .line 133
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ltrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v0, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private rtrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 211
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V

    return-void
.end method

.method protected serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, p3}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 142
    invoke-virtual {p0, p1, p2, v3}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 144
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 145
    invoke-direct {p0, v0}, Lorg/htmlcleaner/PrettyXmlSerializer;->getSingleLineOfChildren(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v5

    const-string v6, "]]&gt;"

    const-string v7, "]]>"

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/PrettyXmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 149
    invoke-virtual {p0, v4}, Lorg/htmlcleaner/PrettyXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 151
    :cond_1
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    if-nez v1, :cond_3

    const-string v8, "\n"

    .line 155
    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 158
    instance-of v9, v8, Lorg/htmlcleaner/TagNode;

    if-eqz v9, :cond_6

    .line 159
    check-cast v8, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_5

    move v9, p3

    goto :goto_2

    :cond_5
    add-int/lit8 v9, p3, 0x1

    :goto_2
    invoke-virtual {p0, v8, p2, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializePrettyXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;I)V

    goto :goto_1

    .line 160
    :cond_6
    instance-of v9, v8, Lorg/htmlcleaner/CData;

    if-eqz v9, :cond_7

    .line 161
    check-cast v8, Lorg/htmlcleaner/CData;

    invoke-virtual {p0, v8, p1, p2}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializeCData(Lorg/htmlcleaner/CData;Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    goto :goto_1

    .line 162
    :cond_7
    instance-of v9, v8, Lorg/htmlcleaner/ContentNode;

    if-eqz v9, :cond_a

    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_8

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v8}, Lorg/htmlcleaner/PrettyXmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    if-eqz v1, :cond_9

    move v9, p3

    goto :goto_4

    :cond_9
    add-int/lit8 v9, p3, 0x1

    .line 164
    :goto_4
    invoke-direct {p0, v8, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_a
    instance-of v9, v8, Lorg/htmlcleaner/CommentNode;

    if-eqz v9, :cond_4

    .line 166
    check-cast v8, Lorg/htmlcleaner/CommentNode;

    .line 167
    invoke-virtual {v8}, Lorg/htmlcleaner/CommentNode;->getCommentedContent()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_b

    move v9, p3

    goto :goto_5

    :cond_b
    add-int/lit8 v9, p3, 0x1

    .line 168
    :goto_5
    invoke-direct {p0, v8, v9}, Lorg/htmlcleaner/PrettyXmlSerializer;->getIndentedText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    :goto_6
    if-nez v4, :cond_d

    .line 174
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 177
    :cond_d
    invoke-virtual {p0, p1, p2, v3}, Lorg/htmlcleaner/PrettyXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_e
    return-void
.end method
