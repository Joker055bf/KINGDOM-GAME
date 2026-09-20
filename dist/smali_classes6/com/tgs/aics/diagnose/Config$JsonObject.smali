.class public Lcom/tgs/aics/diagnose/Config$JsonObject;
.super Lorg/json/JSONObject;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/diagnose/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
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

    .line 119
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;
    .locals 2

    if-nez p0, :cond_0

    .line 124
    new-instance p0, Lcom/tgs/aics/diagnose/Config$JsonObject;

    invoke-direct {p0}, Lcom/tgs/aics/diagnose/Config$JsonObject;-><init>()V

    return-object p0

    .line 125
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 127
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_1
    new-instance v0, Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tgs/aics/diagnose/Config$JsonObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/diagnose/Config$JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p0

    return-object p0
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

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-super {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 225
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 229
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 230
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

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
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

.method public final put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 141
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 142
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;

    goto :goto_0

    :cond_2
    return-object p0

    .line 151
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 152
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 154
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

    .line 158
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 159
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {p0, p0, v3, v2, v1}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;

    goto :goto_1

    :cond_6
    return-object p0

    .line 165
    :cond_7
    invoke-static {p1}, Lcom/tgs/aics/diagnose/Config$JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    if-nez p1, :cond_8

    return-object p0

    .line 169
    :cond_8
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/Config$JsonObject;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public final putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tgs/aics/diagnose/Config$JsonObject;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public final putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tgs/aics/diagnose/Config$JsonObject;",
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

    .line 185
    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/Config$JsonObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 187
    :cond_1
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 188
    check-cast p3, [Ljava/lang/Object;

    .line 189
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 190
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p3, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    return-object p1

    .line 197
    :cond_4
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 198
    check-cast p3, Ljava/util/Collection;

    .line 199
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 200
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

    .line 204
    :cond_5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 206
    :cond_6
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    return-object p1

    .line 209
    :cond_7
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/tgs/aics/diagnose/Config$JsonObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 211
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;
    .locals 0

    .line 173
    invoke-virtual {p0, p0, p1, p2}, Lcom/tgs/aics/diagnose/Config$JsonObject;->putSafe(Lcom/tgs/aics/diagnose/Config$JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Config$JsonObject;

    move-result-object p1

    return-object p1
.end method
