.class public Lcom/tgs/network/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/network/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private headers:Lcom/tgs/network/http/HttpHeaders;

.field private responseCode:I

.field private responseStream:[B


# direct methods
.method constructor <init>(Lcom/tgs/network/http/HttpResponse$Builder;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget v0, p1, Lcom/tgs/network/http/HttpResponse$Builder;->responseCode:I

    iput v0, p0, Lcom/tgs/network/http/HttpResponse;->responseCode:I

    .line 19
    iget-object v0, p1, Lcom/tgs/network/http/HttpResponse$Builder;->responseStream:[B

    iput-object v0, p0, Lcom/tgs/network/http/HttpResponse;->responseStream:[B

    .line 20
    iget-object p1, p1, Lcom/tgs/network/http/HttpResponse$Builder;->headers:Lcom/tgs/network/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/network/http/HttpResponse;->headers:Lcom/tgs/network/http/HttpHeaders;

    return-void
.end method

.method public static decodeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public asBase64String()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/tgs/network/http/HttpResponse;->responseStream:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 61
    invoke-static {v1}, Lcom/tgs/network/utils/InputStreamUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/network/http/HttpResponse;->decodeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "HttpResponse"

    const-string v3, "ass ex:"

    .line 63
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v1, v0}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public asJsonArray()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/tgs/network/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/tgs/network/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asJsonObject()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/tgs/network/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/tgs/network/http/HttpResponse;->responseStream:[B

    invoke-static {v0}, Lcom/tgs/network/utils/InputStreamUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/network/http/HttpResponse;->decodeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HttpResponse"

    const-string v2, "ass ex:"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getHeaders()Lcom/tgs/network/http/HttpHeaders;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tgs/network/http/HttpResponse;->headers:Lcom/tgs/network/http/HttpHeaders;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/tgs/network/http/HttpResponse;->responseCode:I

    return v0
.end method

.method public getResponseStream()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tgs/network/http/HttpResponse;->responseStream:[B

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 28
    iget v0, p0, Lcom/tgs/network/http/HttpResponse;->responseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
