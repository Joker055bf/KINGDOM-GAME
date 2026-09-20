.class public Lorg/jdom2/input/sax/AbstractReaderXSDFactory;
.super Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.source "AbstractReaderXSDFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 302
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 262
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 282
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 322
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    return-void
.end method

.method private static final varargs getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 150
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 154
    array-length v0, p1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    .line 155
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 156
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null SystemID"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_1
    invoke-static {p0, v0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p0

    return-object p0

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null input array"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final varargs getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 228
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 233
    :try_start_0
    invoke-interface {p0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;->getSchemaFactory()Ljavax/xml/validation/SchemaFactory;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p0

    return-object p0

    .line 235
    :cond_0
    new-instance p0, Lorg/jdom2/JDOMException;

    const-string v0, "Unable to create XSDSchema validator."

    invoke-direct {p0, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 239
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v0, Lorg/jdom2/JDOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create a Schema for Sources "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 229
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You need at least one XSD Source for an XML Schema validator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null input array"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final varargs getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 121
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 125
    array-length v0, p1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    .line 126
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 127
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null SystemID"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1
    invoke-static {p0, v0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p0

    return-object p0

    .line 122
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null input array"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final varargs getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 179
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 183
    array-length v0, p1

    new-array v1, v0, [Ljava/io/InputStream;

    const/4 v2, 0x0

    .line 185
    :try_start_0
    array-length v3, p1

    new-array v3, v3, [Ljavax/xml/transform/Source;

    move v4, v2

    .line 186
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 187
    aget-object v5, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 192
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    aput-object v5, v1, v4

    .line 198
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    new-instance v3, Lorg/jdom2/JDOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read Schema URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object p1, p1, v4

    .line 195
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null SystemID"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    invoke-static {p0, v3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 202
    aget-object p1, v1, v2

    if-eqz p1, :cond_2

    .line 205
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 202
    aget-object p1, v1, v2

    if-eqz p1, :cond_4

    .line 205
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    :cond_5
    throw p0

    .line 180
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot specify a null input array"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
