.class public Lorg/htmlcleaner/DomBuilder;
.super Ljava/lang/Object;
.source "DomBuilder.java"

# interfaces
.implements Lorg/htmlcleaner/XmlVisitor;


# static fields
.field private static final CSS_COMMENT_START:Ljava/lang/String; = "/*"


# instance fields
.field protected deserializeCdataEntities:Z

.field private destinationElement:Lorg/w3c/dom/Element;

.field private document:Lorg/w3c/dom/Document;

.field protected escapeXml:Z

.field private props:Lorg/htmlcleaner/CleanerProperties;

.field protected strictErrorChecking:Z


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;ZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 31
    iput-boolean p2, p0, Lorg/htmlcleaner/DomBuilder;->escapeXml:Z

    .line 32
    iput-boolean p3, p0, Lorg/htmlcleaner/DomBuilder;->deserializeCdataEntities:Z

    .line 33
    iput-boolean p4, p0, Lorg/htmlcleaner/DomBuilder;->strictErrorChecking:Z

    return-void
.end method

.method private shouldEscapeOrTranslateEntities()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/htmlcleaner/DomBuilder;->escapeXml:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected createDocument(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 193
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/DoctypeToken;->getPart1()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    if-nez v0, :cond_0

    move-object v0, v4

    .line 215
    :cond_0
    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    const-string v3, "HTML"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    const-string v0, ""

    .line 221
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 225
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    :goto_1
    iget-object v1, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/htmlcleaner/DomBuilder;->strictErrorChecking:Z

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 232
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->setStrictErrorChecking(Z)V

    .line 239
    :cond_4
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 241
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 242
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v3

    if-nez v3, :cond_6

    .line 250
    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_5

    .line 253
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    :cond_7
    iget-boolean v3, p0, Lorg/htmlcleaner/DomBuilder;->escapeXml:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 256
    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v3

    invoke-static {v1, v3}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v1, v3, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method protected deserializeCdataEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public head(Lorg/htmlcleaner/HtmlNode;I)V
    .locals 5

    .line 50
    instance-of p2, p1, Lorg/htmlcleaner/TagNode;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    move-object v1, p1

    check-cast v1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    const-string v3, "/*"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 53
    iget-object v1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    instance-of v1, p1, Lorg/htmlcleaner/CommentNode;

    if-eqz v1, :cond_1

    .line 58
    check-cast p1, Lorg/htmlcleaner/CommentNode;

    .line 59
    iget-object p2, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5

    .line 62
    :cond_1
    instance-of v1, p1, Lorg/htmlcleaner/ContentNode;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 64
    move-object p2, p1

    check-cast p2, Lorg/htmlcleaner/ContentNode;

    .line 65
    invoke-virtual {p2}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p2

    .line 66
    iget-object v1, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-interface {p1}, Lorg/htmlcleaner/HtmlNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v1

    .line 68
    invoke-direct {p0}, Lorg/htmlcleaner/DomBuilder;->shouldEscapeOrTranslateEntities()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 69
    iget-object v3, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {p2, v3, v2}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz v1, :cond_3

    .line 72
    instance-of v2, p1, Lorg/htmlcleaner/CData;

    if-eqz v2, :cond_3

    .line 77
    check-cast p1, Lorg/htmlcleaner/CData;

    invoke-virtual {p1}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz v1, :cond_4

    .line 80
    iget-boolean p1, p0, Lorg/htmlcleaner/DomBuilder;->deserializeCdataEntities:Z

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p0, p2}, Lorg/htmlcleaner/DomBuilder;->deserializeCdataEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-eqz v0, :cond_5

    .line 85
    invoke-interface {v0, p2}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 87
    :cond_5
    iget-object p1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5

    :cond_6
    if-eqz p2, :cond_10

    .line 93
    check-cast p1, Lorg/htmlcleaner/TagNode;

    .line 101
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    .line 107
    new-instance p2, Lorg/htmlcleaner/ContentNode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/htmlcleaner/ContentNode;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {p1, p2, v2}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5

    .line 114
    :cond_7
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    if-nez v0, :cond_8

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/DomBuilder;->createDocument(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 123
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 128
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    iget-boolean v4, p0, Lorg/htmlcleaner/DomBuilder;->escapeXml:Z

    if-eqz v4, :cond_a

    .line 135
    iget-object v4, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v4

    invoke-static {v1, v4}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v4, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v1, v4, v2}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_a
    iget-object v4, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v4

    if-nez v4, :cond_b

    .line 143
    iget-object v4, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b
    if-eqz v3, :cond_9

    .line 146
    invoke-static {v3}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lorg/htmlcleaner/DomBuilder;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 147
    :cond_c
    invoke-interface {p2, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    invoke-interface {p2, v3, v2}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_2

    .line 157
    :cond_d
    iget-object v0, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    if-nez v0, :cond_e

    .line 158
    iget-object p2, p0, Lorg/htmlcleaner/DomBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    iput-object p2, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    goto :goto_3

    .line 160
    :cond_e
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    iput-object p2, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    .line 167
    :goto_3
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v1, :cond_f

    .line 169
    check-cast v0, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/ContentNode;->setParent(Lorg/htmlcleaner/TagNode;)V

    goto :goto_4

    :cond_10
    :goto_5
    return-void
.end method

.method public tail(Lorg/htmlcleaner/HtmlNode;I)V
    .locals 0

    .line 183
    instance-of p1, p1, Lorg/htmlcleaner/TagNode;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    instance-of p1, p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lorg/htmlcleaner/DomBuilder;->destinationElement:Lorg/w3c/dom/Element;

    :cond_0
    return-void
.end method
