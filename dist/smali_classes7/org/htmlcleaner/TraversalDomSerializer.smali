.class public Lorg/htmlcleaner/TraversalDomSerializer;
.super Ljava/lang/Object;
.source "TraversalDomSerializer.java"


# instance fields
.field protected deserializeCdataEntities:Z

.field protected escapeXml:Z

.field private props:Lorg/htmlcleaner/CleanerProperties;

.field protected strictErrorChecking:Z


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/htmlcleaner/TraversalDomSerializer;->escapeXml:Z

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->deserializeCdataEntities:Z

    .line 60
    iput-boolean v0, p0, Lorg/htmlcleaner/TraversalDomSerializer;->strictErrorChecking:Z

    .line 99
    iput-object p1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;Z)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/htmlcleaner/TraversalDomSerializer;->deserializeCdataEntities:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lorg/htmlcleaner/TraversalDomSerializer;->strictErrorChecking:Z

    .line 91
    iput-object p1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 92
    iput-boolean p2, p0, Lorg/htmlcleaner/TraversalDomSerializer;->escapeXml:Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;ZZ)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lorg/htmlcleaner/TraversalDomSerializer;->strictErrorChecking:Z

    .line 81
    iput-object p1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 82
    iput-boolean p2, p0, Lorg/htmlcleaner/TraversalDomSerializer;->escapeXml:Z

    .line 83
    iput-boolean p3, p0, Lorg/htmlcleaner/TraversalDomSerializer;->deserializeCdataEntities:Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;ZZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 70
    iput-boolean p2, p0, Lorg/htmlcleaner/TraversalDomSerializer;->escapeXml:Z

    .line 71
    iput-boolean p3, p0, Lorg/htmlcleaner/TraversalDomSerializer;->deserializeCdataEntities:Z

    .line 72
    iput-boolean p4, p0, Lorg/htmlcleaner/TraversalDomSerializer;->strictErrorChecking:Z

    return-void
.end method

.method public static toString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 115
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 116
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 117
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 120
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDOM(Lorg/htmlcleaner/TagNode;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/htmlcleaner/DomBuilder;

    iget-object v1, p0, Lorg/htmlcleaner/TraversalDomSerializer;->props:Lorg/htmlcleaner/CleanerProperties;

    iget-boolean v2, p0, Lorg/htmlcleaner/TraversalDomSerializer;->escapeXml:Z

    iget-boolean v3, p0, Lorg/htmlcleaner/TraversalDomSerializer;->deserializeCdataEntities:Z

    iget-boolean v4, p0, Lorg/htmlcleaner/TraversalDomSerializer;->strictErrorChecking:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/htmlcleaner/DomBuilder;-><init>(Lorg/htmlcleaner/CleanerProperties;ZZZ)V

    .line 109
    invoke-static {v0, p1}, Lorg/htmlcleaner/XmlTraversor;->traverse(Lorg/htmlcleaner/XmlVisitor;Lorg/htmlcleaner/HtmlNode;)V

    .line 110
    invoke-virtual {v0}, Lorg/htmlcleaner/DomBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method
