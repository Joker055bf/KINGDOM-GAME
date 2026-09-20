.class public Lorg/htmlcleaner/ConfigFileTagProvider;
.super Ljava/util/HashMap;
.source "ConfigFileTagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;
    }
.end annotation


# static fields
.field static parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field private generateCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 63
    sget-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 83
    :try_start_0
    new-instance v0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {v0, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v1, "Error parsing tag configuration file!"

    invoke-direct {v0, v1, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p1

    .line 92
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/InputStreamReader;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance p1, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {p1, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v1}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v1, "Error parsing tag configuration file!"

    invoke-direct {v0, v1, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    .line 75
    :try_start_0
    new-instance v0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {v0, p0, p0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    new-instance v0, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v1, "Error parsing tag configuration file!"

    invoke-direct {v0, v1, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-direct {v0}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>()V

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, v0, Lorg/htmlcleaner/ConfigFileTagProvider;->generateCode:Z

    if-eqz p0, :cond_0

    .line 122
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 123
    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const-string p0, "default.xml"

    .line 126
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;

    invoke-direct {p0, v0, v0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;-><init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V

    .line 131
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "package org.htmlcleaner;"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "import java.util.HashMap;"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "public class CustomTagProvider extends HashMap implements ITagInfoProvider {"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "private ConcurrentMap<String, TagInfo> tagInfoMap = new ConcurrentHashMap<String, TagInfo>();"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "// singleton instance, used if no other TagInfoProvider is specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "public final static CustomTagProvider INSTANCE= new CustomTagProvider();"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "public CustomTagProvider() {"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TagInfo tagInfo;"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 140
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/ConfigFileTagProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagInfo;

    return-object p1
.end method
