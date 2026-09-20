.class public Lcom/tgs/aics/diagnose/JsonArray;
.super Lorg/json/JSONArray;
.source "JsonArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 19
    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 21
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "["

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final putNotNull(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonArray;
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    invoke-super {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-object p0
.end method
