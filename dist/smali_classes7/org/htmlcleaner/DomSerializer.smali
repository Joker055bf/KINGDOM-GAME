.class public Lorg/htmlcleaner/DomSerializer;
.super Ljava/lang/Object;
.source "DomSerializer.java"


# static fields
.field private static final CSS_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final CSS_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field protected deserializeCdataEntities:Z

.field protected escapeXml:Z

.field protected props:Lorg/htmlcleaner/CleanerProperties;

.field protected strictErrorChecking:Z


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/DomSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/htmlcleaner/DomSerializer;->deserializeCdataEntities:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/htmlcleaner/DomSerializer;->strictErrorChecking:Z

    .line 105
    iput-object p1, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 106
    iput-boolean p2, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;ZZ)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/htmlcleaner/DomSerializer;->strictErrorChecking:Z

    .line 95
    iput-object p1, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 96
    iput-boolean p2, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    .line 97
    iput-boolean p3, p0, Lorg/htmlcleaner/DomSerializer;->deserializeCdataEntities:Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;ZZZ)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 84
    iput-boolean p2, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    .line 85
    iput-boolean p3, p0, Lorg/htmlcleaner/DomSerializer;->deserializeCdataEntities:Z

    .line 86
    iput-boolean p4, p0, Lorg/htmlcleaner/DomSerializer;->strictErrorChecking:Z

    return-void
.end method


# virtual methods
.method public createDOM(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/DomSerializer;->createDocument(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    return-object v0
.end method

.method protected createDocument(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 121
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/DoctypeToken;->getPart1()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlcleaner/DoctypeToken;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlcleaner/DoctypeToken;->getSystemId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    if-nez v0, :cond_0

    move-object v0, v4

    .line 143
    :cond_0
    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    const-string v3, "HTML"

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    const-string v0, ""

    .line 149
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    :goto_1
    iget-object v1, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/htmlcleaner/DomSerializer;->strictErrorChecking:Z

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 160
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->setStrictErrorChecking(Z)V

    .line 167
    :cond_4
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 169
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v3

    if-nez v3, :cond_6

    .line 178
    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_5

    .line 181
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    :cond_7
    iget-boolean v3, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 184
    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v3

    invoke-static {v1, v3}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v1, v3, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method protected createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "+",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_14

    .line 257
    iget-object v0, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/*"

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 258
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 259
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 260
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 264
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 266
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 267
    instance-of v3, v2, Lorg/htmlcleaner/CommentNode;

    if-eqz v3, :cond_2

    .line 269
    check-cast v2, Lorg/htmlcleaner/CommentNode;

    .line 270
    invoke-virtual {v2}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    .line 271
    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 273
    :cond_2
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 275
    move-object v3, v2

    check-cast v3, Lorg/htmlcleaner/ContentNode;

    .line 276
    invoke-virtual {v3}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 277
    iget-object v5, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v5

    .line 279
    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v6}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v6}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 280
    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v6}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v6

    invoke-static {v3, v6}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 283
    :cond_3
    iget-boolean v6, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v6}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-nez v5, :cond_5

    .line 284
    iget-object v6, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v3, v6, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v5, :cond_6

    .line 287
    instance-of v4, v2, Lorg/htmlcleaner/CData;

    if-eqz v4, :cond_6

    .line 292
    check-cast v2, Lorg/htmlcleaner/CData;

    invoke-virtual {v2}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-eqz v5, :cond_7

    .line 295
    iget-boolean v2, p0, Lorg/htmlcleaner/DomSerializer;->deserializeCdataEntities:Z

    if-eqz v2, :cond_7

    .line 296
    invoke-virtual {p0, v3}, Lorg/htmlcleaner/DomSerializer;->deserializeCdataEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v0, :cond_8

    .line 300
    invoke-interface {v0, v3}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_8
    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 306
    :cond_9
    instance-of v3, v2, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_10

    .line 308
    check-cast v2, Lorg/htmlcleaner/TagNode;

    .line 316
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v5}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    .line 322
    new-instance v3, Lorg/htmlcleaner/ContentNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/htmlcleaner/ContentNode;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v2, v3, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 329
    :cond_a
    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 330
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v5

    .line 331
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 332
    :cond_b
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 333
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 335
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 336
    iget-boolean v8, p0, Lorg/htmlcleaner/DomSerializer;->escapeXml:Z

    if-eqz v8, :cond_c

    .line 337
    invoke-static {v6, v4}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 338
    iget-object v8, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-static {v6, v8, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v6

    .line 344
    :cond_c
    iget-object v8, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v8

    if-nez v8, :cond_d

    .line 345
    iget-object v8, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_d
    if-eqz v7, :cond_b

    .line 348
    invoke-static {v7}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 349
    :cond_e
    invoke-interface {v3, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "id"

    .line 354
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 355
    invoke-interface {v3, v7, v4}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_2

    .line 362
    :cond_f
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    .line 364
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 366
    :cond_10
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 367
    check-cast v2, Ljava/util/List;

    .line 368
    invoke-virtual {p0, p1, p2, v2}, Lorg/htmlcleaner/DomSerializer;->createSubnodes(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_11
    if-eqz v0, :cond_14

    .line 374
    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object p3

    const-string v2, "\n"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const-string v3, "*/"

    if-nez p3, :cond_12

    .line 375
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "*/\n"

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/w3c/dom/CDATASection;->setData(Ljava/lang/String;)V

    goto :goto_3

    .line 377
    :cond_12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/w3c/dom/CDATASection;->setData(Ljava/lang/String;)V

    .line 379
    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_13

    .line 381
    invoke-interface {v0, v2}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    .line 383
    :cond_13
    invoke-interface {v0, v1}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    .line 384
    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_14
    return-void
.end method

.method protected deserializeCdataEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected dontEscape(Lorg/w3c/dom/Element;)Z
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/htmlcleaner/DomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isScriptOrStyle(Lorg/w3c/dom/Element;)Z
    .locals 1

    .line 220
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "script"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

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

.method protected outputCData(Lorg/htmlcleaner/CData;)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-virtual {p1}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
