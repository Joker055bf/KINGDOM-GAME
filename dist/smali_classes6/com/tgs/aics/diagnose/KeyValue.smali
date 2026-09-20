.class public final Lcom/tgs/aics/diagnose/KeyValue;
.super Lcom/tgs/aics/diagnose/JsonObject;
.source "KeyValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 43
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 45
    instance-of v2, p1, Lcom/tgs/aics/diagnose/KeyValue;

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-super {p0}, Lcom/tgs/aics/diagnose/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    .line 12
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    .line 38
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const-string v0, "data"

    .line 20
    invoke-super {p0, v0}, Lcom/tgs/aics/diagnose/JsonObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueText()Ljava/lang/String;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/tgs/aics/diagnose/KeyValue;
    .locals 1

    const-string v0, "key"

    .line 8
    invoke-super {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/KeyValue;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/tgs/aics/diagnose/KeyValue;
    .locals 1

    const-string v0, "title"

    .line 34
    invoke-super {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/KeyValue;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/KeyValue;
    .locals 1

    const-string v0, "data"

    .line 16
    invoke-super {p0, p0, v0, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Lcom/tgs/aics/diagnose/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/KeyValue;

    return-object p1
.end method
