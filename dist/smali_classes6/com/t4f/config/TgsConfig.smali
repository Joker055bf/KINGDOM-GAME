.class public Lcom/t4f/config/TgsConfig;
.super Ljava/lang/Object;
.source "TgsConfig.java"


# static fields
.field private static final CONFIG_XML:Ljava/lang/String; = "tgscfg.xml"

.field private static final TAG:Ljava/lang/String; = "[sdktgs.tgsconfig]"

.field private static volatile instance:Lcom/t4f/config/TgsConfig;


# instance fields
.field private volatile mXmlConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/t4f/config/TgsConfig;
    .locals 2

    .line 36
    sget-object v0, Lcom/t4f/config/TgsConfig;->instance:Lcom/t4f/config/TgsConfig;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/t4f/config/TgsConfig;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/t4f/config/TgsConfig;->instance:Lcom/t4f/config/TgsConfig;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/t4f/config/TgsConfig;

    invoke-direct {v1}, Lcom/t4f/config/TgsConfig;-><init>()V

    sput-object v1, Lcom/t4f/config/TgsConfig;->instance:Lcom/t4f/config/TgsConfig;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/t4f/config/TgsConfig;->instance:Lcom/t4f/config/TgsConfig;

    return-object v0
.end method

.method private parseFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 91
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 92
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 93
    :goto_1
    invoke-direct {p0, p2}, Lcom/t4f/config/TgsConfig;->parseStringNodes(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 94
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 88
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception read asset config. e="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[sdktgs.tgsconfig]"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseStringNodes(Lorg/w3c/dom/Element;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "string"

    .line 104
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-gtz v2, :cond_2

    return-object v0

    .line 109
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_b

    .line 111
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_6

    .line 115
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 116
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    move v7, v1

    :goto_3
    if-ge v7, v6, :cond_a

    .line 118
    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    const-string v9, "name"

    .line 122
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    .line 125
    :cond_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 126
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    .line 129
    :cond_7
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    const-string v9, ""

    .line 130
    :goto_4
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return-object v0
.end method


# virtual methods
.method public getConfig(Landroid/content/Context;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Succeed read android channel config. size="

    .line 51
    iget-object v1, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    monitor-exit p0

    return-object p1

    :cond_1
    const-string p2, "tgscfg.xml"

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/t4f/config/TgsConfig;->parseFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 61
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    const-string p2, "[sdktgs.tgsconfig]"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "[sdktgs.tgsconfig]"

    const-string p2, "Fail read android channel config. assetName=tgscfg.xml"

    .line 64
    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p1, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getCustomValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/t4f/config/TgsConfig;->mXmlConfig:Ljava/util/Map;

    if-nez v1, :cond_1

    return-object v0

    .line 78
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/t4f/config/TgsConfig;->getConfig(Landroid/content/Context;Z)Ljava/util/Map;

    return-void
.end method
