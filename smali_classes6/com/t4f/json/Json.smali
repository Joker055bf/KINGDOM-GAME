.class public Lcom/t4f/json/Json;
.super Lorg/json/JSONObject;
.source "Json.java"


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

    .line 25
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/t4f/json/Json;->put(Lorg/json/JSONObject;)Lcom/t4f/json/Json;

    return-void
.end method

.method public static json(Ljava/lang/String;)Lcom/t4f/json/Json;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/t4f/json/Json;

    invoke-direct {v1, p0}, Lcom/t4f/json/Json;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception parse json.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static jsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception parse json array.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public put(Lorg/json/JSONObject;)Lcom/t4f/json/Json;
    .locals 3

    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object p0
.end method

.method public putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/t4f/json/Json;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, p2, p3}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    :cond_0
    return-object p1
.end method

.method public final putSafe(Ljava/lang/Object;)Lcom/t4f/json/Json;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 102
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 103
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 106
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    const-string v1, "Fail put json value while key invalid."

    .line 108
    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 69
    :try_start_0
    invoke-super {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 70
    :cond_1
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 71
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 72
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 77
    :cond_3
    invoke-super {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 78
    :cond_4
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 79
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 81
    new-instance v2, Lcom/t4f/json/Json;

    invoke-direct {v2}, Lcom/t4f/json/Json;-><init>()V

    .line 82
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 84
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v0

    :goto_2
    move-object v5, p2

    check-cast v5, Ljava/util/Map;

    .line 85
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {p0, v2, v4, v3}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    goto :goto_1

    .line 87
    :cond_7
    invoke-super {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 90
    :cond_8
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    :goto_3
    return-object p0
.end method
