.class public Lcom/tgs/aics/diagnose/Config;
.super Lcom/tgs/aics/diagnose/JsonObject;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/diagnose/Config$JsonArray;,
        Lcom/tgs/aics/diagnose/Config$JsonObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    return-void
.end method

.method private parseKeyValueArray(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 41
    :cond_0
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    .line 42
    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 44
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 46
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 47
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 48
    new-instance v5, Lcom/tgs/aics/diagnose/KeyValue;

    invoke-direct {v5}, Lcom/tgs/aics/diagnose/KeyValue;-><init>()V

    .line 49
    invoke-virtual {v5, v4}, Lcom/tgs/aics/diagnose/KeyValue;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 50
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    move-object v0, v2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getInnerUrlDiagnose()Ljava/lang/Object;
    .locals 1

    const-string v0, "diagnose"

    .line 63
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTGSServerUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;"
        }
    .end annotation

    const-string v0, "urls"

    .line 59
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/Config;->parseKeyValueArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    const-string v0, "timeout"

    const/4 v1, -0x1

    .line 31
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadConfigDiagnose(Lcom/tgs/aics/diagnose/Matcher;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/Config;->getInnerUrlDiagnose()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 71
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 74
    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_d

    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 78
    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 82
    :cond_3
    new-instance v4, Lcom/tgs/aics/diagnose/KeyValue;

    invoke-direct {v4}, Lcom/tgs/aics/diagnose/KeyValue;-><init>()V

    .line 83
    invoke-virtual {v4, v3}, Lcom/tgs/aics/diagnose/KeyValue;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 84
    invoke-virtual {v4}, Lcom/tgs/aics/diagnose/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[sdktgs]"

    if-eqz v5, :cond_b

    .line 85
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v7, "Maintenance"

    .line 88
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    new-instance v3, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;

    invoke-direct {v3}, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;-><init>()V

    goto :goto_2

    :cond_5
    const-string v7, "NetSpeed"

    .line 90
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 91
    new-instance v3, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    invoke-direct {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;-><init>()V

    goto :goto_2

    :cond_6
    const-string v7, "AppBase"

    .line 92
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 93
    new-instance v3, Lcom/tgs/aics/diagnose/impl/AppBaseDiagnose;

    invoke-direct {v3}, Lcom/tgs/aics/diagnose/impl/AppBaseDiagnose;-><init>()V

    goto :goto_2

    :cond_7
    const-string v7, "DomainParse"

    .line 94
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 95
    new-instance v3, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose;

    invoke-virtual {v4}, Lcom/tgs/aics/diagnose/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tgs/aics/diagnose/Config;->parseKeyValueArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose;-><init>(Ljava/util/List;)V

    goto :goto_2

    :cond_8
    const-string v7, "UrlsPing"

    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 97
    new-instance v3, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;

    invoke-virtual {v4}, Lcom/tgs/aics/diagnose/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tgs/aics/diagnose/Config;->parseKeyValueArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;-><init>(Ljava/util/List;)V

    goto :goto_2

    :cond_9
    const-string v7, "UrlsTraceroute"

    .line 98
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 99
    new-instance v3, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;

    invoke-virtual {v4}, Lcom/tgs/aics/diagnose/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tgs/aics/diagnose/Config;->parseKeyValueArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;-><init>(Ljava/util/List;)V

    .line 106
    :goto_2
    invoke-virtual {v4}, Lcom/tgs/aics/diagnose/KeyValue;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tgs/aics/diagnose/AICSDiagnose;->setName(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/AICSDiagnose;

    .line 107
    invoke-interface {p1, v3}, Lcom/tgs/aics/diagnose/Matcher;->onMatch(Ljava/lang/Object;)I

    goto :goto_4

    .line 101
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Fail load a configu diagnose while key NOT support."

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 86
    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fail load a config diagnose while key invalid."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_5
    return-void
.end method

.method public setTGSServerUrls(Ljava/util/List;)Lcom/tgs/aics/diagnose/Config;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;)",
            "Lcom/tgs/aics/diagnose/Config;"
        }
    .end annotation

    const-string v0, "urls"

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, p0, v0, p1, v1}, Lcom/tgs/aics/diagnose/Config;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Config;

    return-object p1
.end method

.method public setTimeout(I)Lcom/tgs/aics/diagnose/Config;
    .locals 1

    const-string v0, "timeout"

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Config;

    return-object p1
.end method
