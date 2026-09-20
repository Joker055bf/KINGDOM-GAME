.class public Lorg/htmlcleaner/JDomSerializer;
.super Ljava/lang/Object;
.source "JDomSerializer.java"


# static fields
.field private static final CSS_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final CSS_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field protected escapeXml:Z

.field private factory:Lorg/jdom2/DefaultJDOMFactory;

.field protected props:Lorg/htmlcleaner/CleanerProperties;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/JDomSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 35
    iput-boolean p2, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    return-void
.end method

.method private createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom2/Element;
    .locals 5

    .line 61
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    .line 71
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 75
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_0
    if-nez v4, :cond_1

    .line 81
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_1
    if-nez v4, :cond_4

    move-object v4, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    const-string v4, ""

    .line 90
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_3
    if-nez v4, :cond_4

    .line 93
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    if-nez v2, :cond_5

    .line 100
    invoke-static {v4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    .line 101
    :goto_1
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v3, v0, v2}, Lorg/jdom2/DefaultJDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_6
    iget-object v2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v2, v0}, Lorg/jdom2/DefaultJDOMFactory;->element(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    :goto_2
    if-eqz v1, :cond_7

    .line 107
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/JDomSerializer;->defineNamespaceDeclarations(Lorg/htmlcleaner/TagNode;Lorg/jdom2/Element;)V

    :cond_7
    return-object v0
.end method

.method private createSubnodes(Lorg/jdom2/Element;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/List<",
            "+",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 183
    iget-object v0, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/*"

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/jdom2/DefaultJDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v2, v1}, Lorg/jdom2/DefaultJDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 186
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 191
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 193
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 195
    instance-of v3, v2, Lorg/htmlcleaner/CommentNode;

    if-eqz v3, :cond_2

    .line 196
    check-cast v2, Lorg/htmlcleaner/CommentNode;

    .line 197
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v2}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jdom2/DefaultJDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v2

    .line 198
    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 200
    :cond_2
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_6

    .line 201
    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v5, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v5, v3}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v3

    .line 205
    iget-boolean v5, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 206
    iget-object v5, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-eqz v3, :cond_4

    .line 208
    instance-of v3, v2, Lorg/htmlcleaner/CData;

    if-eqz v3, :cond_4

    .line 213
    check-cast v2, Lorg/htmlcleaner/CData;

    invoke-virtual {v2}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {v0, v4}, Lorg/jdom2/CDATA;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_5
    iget-object v2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v2, v4}, Lorg/jdom2/DefaultJDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v2

    .line 219
    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 222
    :cond_6
    instance-of v3, v2, Lorg/htmlcleaner/TagNode;

    if-eqz v3, :cond_7

    .line 223
    check-cast v2, Lorg/htmlcleaner/TagNode;

    .line 224
    invoke-direct {p0, v2}, Lorg/htmlcleaner/JDomSerializer;->createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom2/Element;

    move-result-object v3

    .line 226
    invoke-direct {p0, v2, v3}, Lorg/htmlcleaner/JDomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom2/Element;)V

    .line 229
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom2/Element;Ljava/util/List;)V

    .line 231
    invoke-virtual {p1, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 232
    :cond_7
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 233
    check-cast v2, Ljava/util/List;

    .line 234
    invoke-direct {p0, p1, v2}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom2/Element;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_b

    .line 239
    invoke-virtual {v0}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v3, "*/"

    if-nez p2, :cond_9

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "*/\n"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jdom2/CDATA;->setText(Ljava/lang/String;)Lorg/jdom2/CDATA;

    goto :goto_2

    .line 242
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jdom2/CDATA;->setText(Ljava/lang/String;)Lorg/jdom2/CDATA;

    .line 244
    :goto_2
    invoke-virtual {v0}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 246
    invoke-virtual {v0, v2}, Lorg/jdom2/CDATA;->append(Ljava/lang/String;)V

    .line 248
    :cond_a
    invoke-virtual {v0, v1}, Lorg/jdom2/CDATA;->append(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {p2, v3}, Lorg/jdom2/DefaultJDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_b
    return-void
.end method

.method private defineNamespaceDeclarations(Lorg/htmlcleaner/TagNode;Lorg/jdom2/Element;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-static {v1, v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    goto :goto_2

    .line 118
    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    .line 120
    :goto_2
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom2/Element;)V
    .locals 7

    .line 126
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    iget-boolean v3, p0, Lorg/htmlcleaner/JDomSerializer;->escapeXml:Z

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v3

    invoke-static {v1, v3}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_1
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isAllowInvalidAttributeNames()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    iget-object v3, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->getInvalidXmlAttributeNamePrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    .line 144
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 148
    invoke-static {v2}, Lorg/htmlcleaner/Utils;->getXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v5, p0, Lorg/htmlcleaner/JDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v5}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagNode;->getNamespaceURIOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v3

    :cond_3
    const-string v6, "xml"

    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 155
    invoke-static {v3, v5}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v4

    :cond_4
    const-string v3, "xmlns"

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v4, :cond_5

    .line 167
    invoke-virtual {p2, v2, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {p2, v2, v1, v4}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public createJDom(Lorg/htmlcleaner/TagNode;)Lorg/jdom2/Document;
    .locals 2

    .line 43
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    .line 48
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lorg/htmlcleaner/JDomSerializer;->createElement(Lorg/htmlcleaner/TagNode;)Lorg/jdom2/Element;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/htmlcleaner/JDomSerializer;->factory:Lorg/jdom2/DefaultJDOMFactory;

    invoke-virtual {v1, v0}, Lorg/jdom2/DefaultJDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v1

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/JDomSerializer;->setAttributes(Lorg/htmlcleaner/TagNode;Lorg/jdom2/Element;)V

    .line 55
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/JDomSerializer;->createSubnodes(Lorg/jdom2/Element;Ljava/util/List;)V

    return-object v1
.end method
