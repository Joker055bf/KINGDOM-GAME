.class public Lcom/tgs/network/Json;
.super Lorg/json/JSONObject;
.source "Json.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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

    .line 20
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/tgs/network/Json;->put(Lorg/json/JSONObject;)Lcom/tgs/network/Json;

    return-void
.end method

.method public static createJsonObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 27
    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    .line 28
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tgs/network/Json;->createJsonObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 32
    :cond_2
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception create json object.e="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TGSNetwork"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public put(Lorg/json/JSONObject;)Lcom/tgs/network/Json;
    .locals 3

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object p0
.end method

.method public putSafe(Lcom/tgs/network/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tgs/network/Json;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p2, p3}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    :cond_0
    return-object p1
.end method

.method public putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;
    .locals 0

    .line 60
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method
