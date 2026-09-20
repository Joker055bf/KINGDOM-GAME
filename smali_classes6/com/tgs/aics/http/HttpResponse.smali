.class public Lcom/tgs/aics/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private headers:Lcom/tgs/aics/http/HttpHeaders;

.field private responseCode:I

.field private responseStream:[B


# direct methods
.method constructor <init>(Lcom/tgs/aics/http/HttpResponse$Builder;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Lcom/tgs/aics/http/HttpResponse$Builder;->responseCode:I

    iput v0, p0, Lcom/tgs/aics/http/HttpResponse;->responseCode:I

    .line 20
    iget-object v0, p1, Lcom/tgs/aics/http/HttpResponse$Builder;->responseStream:[B

    iput-object v0, p0, Lcom/tgs/aics/http/HttpResponse;->responseStream:[B

    .line 21
    iget-object p1, p1, Lcom/tgs/aics/http/HttpResponse$Builder;->headers:Lcom/tgs/aics/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/aics/http/HttpResponse;->headers:Lcom/tgs/aics/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public asJsonArray()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/tgs/aics/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/tgs/aics/http/HttpResponse;->asString()Ljava/lang/String;

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

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/tgs/aics/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/http/HttpResponse;->responseStream:[B

    invoke-static {v0}, Lcom/tgs/aics/utils/InputStreamUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->decodeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "aics.HttpResponse"

    const-string v2, "ass ex:"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public getHeaders()Lcom/tgs/aics/http/HttpHeaders;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/http/HttpResponse;->headers:Lcom/tgs/aics/http/HttpHeaders;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/tgs/aics/http/HttpResponse;->responseCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/tgs/aics/http/HttpResponse;->responseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
