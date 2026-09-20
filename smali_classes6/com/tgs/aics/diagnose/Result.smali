.class public Lcom/tgs/aics/diagnose/Result;
.super Lcom/tgs/aics/diagnose/JsonObject;
.source "Result.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/JsonObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    return-void
.end method


# virtual methods
.method public getData(Lcom/tgs/aics/diagnose/Convertor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tgs/aics/diagnose/Convertor<",
            "Ljava/lang/Object;",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 83
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/diagnose/Convertor;->onConvertor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDuration(J)J
    .locals 1

    const-string v0, "duration"

    .line 79
    invoke-virtual {p0, v0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    const-string v0, "message"

    const-string v1, ""

    .line 49
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    const-string v0, "source"

    const/4 v1, 0x0

    .line 41
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime(J)J
    .locals 1

    const-string v0, "startTime"

    .line 61
    invoke-virtual {p0, v0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    const/4 v1, 0x0

    .line 33
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiData()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "ui"

    .line 109
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public isSucceed()Z
    .locals 2

    const-string v0, "succeed"

    const/4 v1, 0x0

    .line 25
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/Result;->getUiData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    if-nez p2, :cond_2

    .line 94
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/Result;->setUiData(Lorg/json/JSONObject;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_2
    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "data"

    .line 53
    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setDuration(J)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "duration"

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setEndTime(J)Lcom/tgs/aics/diagnose/Result;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->getStartTime(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sub-long/2addr p1, v2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->setDuration(J)Lcom/tgs/aics/diagnose/Result;

    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "message"

    .line 29
    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "source"

    .line 45
    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setStartTime(J)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "startTime"

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setSucceed(Z)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "succeed"

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "type"

    .line 37
    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method

.method public setUiData(Lorg/json/JSONObject;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    const-string v0, "ui"

    .line 105
    invoke-super {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    return-object p1
.end method
