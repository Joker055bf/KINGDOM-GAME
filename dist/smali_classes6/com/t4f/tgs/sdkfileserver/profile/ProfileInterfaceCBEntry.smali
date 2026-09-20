.class public Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;
.super Ljava/lang/Object;
.source "ProfileInterfaceCBEntry.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    .line 28
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 29
    invoke-interface {p0, v1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;->LocalImageCallBack(ILjava/lang/String;Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 41
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 42
    invoke-interface {p0, v1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;->LocalImageCallBack(ILjava/lang/String;Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static errorCompress(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 54
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 55
    invoke-interface {p0, v1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;->LocalImageCallBack(ILjava/lang/String;Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static success(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;[BLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 14
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "image_uri"

    const-string v1, ""

    .line 15
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;

    invoke-direct {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;-><init>([B)V

    const/4 p1, 0x1

    .line 16
    invoke-interface {p0, p1, p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;->LocalImageCallBack(ILjava/lang/String;Lcom/t4f/tgs/sdkfileserver/profile/view/ImageData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
