.class public Lorg/htmlcleaner/SimpleXmlSerializer;
.super Lorg/htmlcleaner/XmlSerializer;
.source "SimpleXmlSerializer.java"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method


# virtual methods
.method protected serialize(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeOpenTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    .line 58
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/SimpleXmlSerializer;->isMinimizedTagSyntax(Lorg/htmlcleaner/TagNode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    instance-of v3, v2, Lorg/htmlcleaner/CData;

    if-eqz v3, :cond_1

    .line 66
    check-cast v2, Lorg/htmlcleaner/CData;

    invoke-virtual {p0, v2, p1, p2}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeCData(Lorg/htmlcleaner/CData;Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    goto :goto_0

    .line 67
    :cond_1
    instance-of v3, v2, Lorg/htmlcleaner/ContentNode;

    if-eqz v3, :cond_2

    .line 68
    check-cast v2, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {p0, v2, p1, p2}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeContentToken(Lorg/htmlcleaner/ContentNode;Lorg/htmlcleaner/TagNode;Ljava/io/Writer;)V

    goto :goto_0

    .line 70
    :cond_2
    check-cast v2, Lorg/htmlcleaner/BaseToken;

    invoke-interface {v2, p0, p2}, Lorg/htmlcleaner/BaseToken;->serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlcleaner/SimpleXmlSerializer;->serializeEndTag(Lorg/htmlcleaner/TagNode;Ljava/io/Writer;Z)V

    :cond_4
    return-void
.end method
