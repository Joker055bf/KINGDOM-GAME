.class public Lcom/tgs/aics/diagnose/JsonObject;
.super Lorg/json/JSONObject;
.source "JsonObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;
    .locals 2

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    return-object p0

    .line 27
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 29
    :try_start_0
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "{"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    new-instance v1, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v1, p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    :goto_1
    return-object v0

    .line 39
    :catch_0
    :cond_4
    invoke-static {v0}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p0

    return-object p0

    .line 41
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static createFromArray(Ljava/lang/String;Lcom/tgs/aics/diagnose/Convertor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/diagnose/Convertor<",
            "Ljava/lang/Object;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_6

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    const-string v1, "["

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    invoke-static {p0}, Lcom/tgs/aics/diagnose/JsonArray;->parse(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 51
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 54
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1

    .line 61
    :cond_5
    invoke-static {p0}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final optList(Ljava/lang/String;Lcom/tgs/aics/diagnose/Convertor;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/diagnose/Convertor<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-super {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 153
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 157
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p3
.end method

.method public final optObject(Ljava/lang/String;Lcom/tgs/aics/diagnose/Convertor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/diagnose/Convertor<",
            "Ljava/lang/Object;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public final put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 74
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    goto :goto_0

    :cond_2
    return-object p0

    .line 84
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 85
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 87
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 91
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-virtual {p0, p0, v3, v2, v1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    goto :goto_1

    :cond_6
    return-object p0

    .line 97
    :cond_7
    invoke-static {p1}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public final putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tgs/aics/diagnose/JsonObject;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public final putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tgs/aics/diagnose/JsonObject;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_8

    .line 113
    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 115
    :cond_1
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 116
    check-cast p3, [Ljava/lang/Object;

    .line 117
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 118
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p3, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    return-object p1

    .line 125
    :cond_4
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 126
    check-cast p3, Ljava/util/Collection;

    .line 127
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 128
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 134
    :cond_6
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    return-object p1

    .line 137
    :cond_7
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/tgs/aics/diagnose/JsonObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 139
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;
    .locals 0

    .line 101
    invoke-virtual {p0, p0, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    return-object p1
.end method
