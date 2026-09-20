.class public abstract Lorg/htmlcleaner/XmlSerializer;
.super Lorg/htmlcleaner/Serializer;
.source "XmlSerializer.java"


# static fields
.field public static final XMLNS_NAMESPACE:Ljava/lang/String; = "xmlns"


# instance fields
.field private creatingHtmlDom:Z


# direct methods
.method protected constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/htmlcleaner/Serializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method


# virtual methods
.method protected dontEscape(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p0}, Lorg/htmlcleaner/XmlSerializer;->isCreatingHtmlDom()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXmlAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXmlAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->getAsString(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCreatingHtmlDom()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/htmlcleaner/XmlSerializer;->creatingHtmlDom:Z

    return v0
.end method

.method protected isForbiddenAttribute(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 273
    iget-object p1, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "xmlns"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "xmlns:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isForbiddenTag(Lorg/htmlcleaner/TagNode;)Z
    .locals 0

    .line 235
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isHeadOrBody(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "head"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isMinimizedTagPermitted()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 137
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isUseEmptyElementTags()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->isEmptyTag()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected serializeAttribute(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_2

    .line 260
    invoke-static {p3}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/htmlcleaner/XmlSerializer;->isForbiddenAttribute(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "=\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p4}, Lorg/htmlcleaner/XmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected serializeCData(Lorg/htmlcleaner/CData;Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p2}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/CData;->getContentWithStartAndEndTokens()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected serializeContentToken(Lorg/htmlcleaner/ContentNode;Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p2}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p1}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/XmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    return-void
.end method

.method protected serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->isForbiddenTag(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/*]]>*/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 297
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 298
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 308
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/XmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    return-void
.end method

.method protected serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->isForbiddenTag(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lorg/htmlcleaner/XmlSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isAddNewlineToHeadAndBody()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/XmlSerializer;->isHeadOrBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 193
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 194
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/htmlcleaner/XmlSerializer;->serializeAttribute(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, " />"

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 205
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/XmlSerializer;->dontEscape(Lorg/htmlcleaner/TagNode;)Z

    move-result p3

    const-string v0, ">"

    if-eqz p3, :cond_3

    .line 210
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "/*<![CDATA[*/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 212
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 218
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0xa

    if-eq p1, p3, :cond_4

    const/16 p3, 0xd

    if-eq p1, p3, :cond_4

    .line 219
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCreatingHtmlDom(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/htmlcleaner/XmlSerializer;->creatingHtmlDom:Z

    return-void
.end method

.method public writeXml(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->write(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public writeXmlToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V

    return-void
.end method

.method public writeXmlToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->writeToFile(Lorg/htmlcleaner/TagNode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeXmlToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-super {p0, p1, p2}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeXmlToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-super {p0, p1, p2, p3}, Lorg/htmlcleaner/Serializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
