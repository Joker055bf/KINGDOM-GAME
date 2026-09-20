.class public Lcom/tgs/aics/diagnose/RequestResponse;
.super Lcom/tgs/aics/diagnose/JsonObject;
.source "RequestResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/JsonObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const-string v0, "data"

    const/4 v1, 0x0

    .line 70
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDataAsText()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/RequestResponse;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getHttpCode()I
    .locals 2

    const-string v0, "httpCode"

    const/4 v1, -0x1

    .line 34
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    const-string v0, "message"

    const-string v1, ""

    .line 61
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSucceed()Z
    .locals 2

    const-string v0, "succeed"

    const/4 v1, 0x0

    .line 26
    invoke-super {p0, v0, v1}, Lcom/tgs/aics/diagnose/JsonObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putHeaders(Ljava/util/Map;)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/tgs/aics/diagnose/RequestResponse;"
        }
    .end annotation

    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "data"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/tgs/aics/diagnose/RequestResponse;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/RequestResponse;

    return-object p1

    .line 40
    :cond_0
    instance-of v3, p1, [B

    if-eqz v3, :cond_3

    if-eqz p1, :cond_1

    .line 41
    check-cast p1, [B

    array-length v3, p1

    if-lez v3, :cond_1

    const/16 v3, 0x8

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 42
    new-instance v2, Ljava/lang/String;

    check-cast p1, [B

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    :cond_2
    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/tgs/aics/diagnose/RequestResponse;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/RequestResponse;

    return-object p1

    .line 43
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    return-object p1

    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    return-object p1
.end method

.method public setHttpCode(I)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 1

    const-string v0, "httpCode"

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/RequestResponse;

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 1

    const-string v0, "message"

    .line 57
    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/RequestResponse;

    return-object p1
.end method

.method public setSucceed(Z)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 1

    const-string v0, "succeed"

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/RequestResponse;

    return-object p1
.end method
