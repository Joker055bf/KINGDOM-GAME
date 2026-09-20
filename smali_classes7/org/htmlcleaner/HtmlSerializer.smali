.class public abstract Lorg/htmlcleaner/HtmlSerializer;
.super Lorg/htmlcleaner/Serializer;
.source "HtmlSerializer.java"


# direct methods
.method protected constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/htmlcleaner/Serializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method


# virtual methods
.method protected dontEscape(Lorg/htmlcleaner/TagNode;)Z
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;->isScriptOrStyle(Lorg/htmlcleaner/TagNode;)Z

    move-result p1

    return p1
.end method

.method protected escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {p1, v0}, Lorg/htmlcleaner/Utils;->escapeHtml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->hasChildren()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isEmptyTag()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p1, "\n"

    .line 137
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "xmlns"

    const-string v4, "\""

    const-string v5, "=\""

    const-string v6, " "

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    iget-object v8, p0, Lorg/htmlcleaner/HtmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v8

    invoke-static {v2, v8}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    .line 92
    invoke-static {v7}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 93
    invoke-static {v7}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/htmlcleaner/HtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    .line 101
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 103
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xmlns:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 109
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/htmlcleaner/HtmlSerializer;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_7
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/HtmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, " />"

    .line 115
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_9

    const-string p1, "\n"

    .line 117
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string p1, ">"

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method
