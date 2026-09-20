.class public Lcom/tgs/network/TGSNetworkManager;
.super Ljava/lang/Object;
.source "TGSNetworkManager.java"


# static fields
.field public static final DEBUG_TAG:Ljava/lang/String; = "sdktgs"

.field public static final HTTP_CODE_NONE:I = 0x0

.field private static final HTTP_PARAMS_BYTES_KEY:Ljava/lang/String; = "paramsBytesBase64"

.field private static final HTTP_PARAMS_DICT_KEY:Ljava/lang/String; = "paramsDict"


# instance fields
.field private final mHttpManager:Lcom/tgs/network/http/HttpManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/tgs/network/http/HttpManager;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpManager;-><init>()V

    iput-object v0, p0, Lcom/tgs/network/TGSNetworkManager;->mHttpManager:Lcom/tgs/network/http/HttpManager;

    return-void
.end method

.method static synthetic lambda$tgsRequestTextHttp$0([BLjava/lang/String;)[B
    .locals 0

    return-object p0
.end method

.method private notifyNotifyTextHttpFinish(ZILjava/lang/String;Lcom/tgs/network/http/HttpHeaders;Ljava/lang/String;Lcom/tgs/network/OnHttpTextResponse;)V
    .locals 2

    if-eqz p6, :cond_2

    .line 59
    new-instance v0, Lcom/tgs/network/Json;

    invoke-direct {v0}, Lcom/tgs/network/Json;-><init>()V

    const-string v1, "success"

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    const-string p1, "httpCode"

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    const-string p1, "message"

    .line 62
    invoke-virtual {v0, p1, p3}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    const-string p1, "data"

    .line 63
    invoke-virtual {v0, p1, p5}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    if-eqz p4, :cond_0

    .line 64
    invoke-virtual {p4}, Lcom/tgs/network/http/HttpHeaders;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "responseHeaders"

    invoke-virtual {v0, p2, p1}, Lcom/tgs/network/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/Json;

    .line 65
    invoke-virtual {v0}, Lcom/tgs/network/Json;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 66
    :goto_1
    invoke-interface {p6, p1}, Lcom/tgs/network/OnHttpTextResponse;->onHttpTextResponse(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$tgsRequestTextHttp$1$com-tgs-network-TGSNetworkManager(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/tgs/network/http/Params;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpTextResponse;)V
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/tgs/network/TGSNetworkManager;->mHttpManager:Lcom/tgs/network/http/HttpManager;

    new-instance v1, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v1}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/tgs/network/http/HttpHeaders$Builder;->putAll(Ljava/lang/Object;)Lcom/tgs/network/http/HttpHeaders$Builder;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/network/http/HttpManager;->request(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/network/http/HttpHeaders$Builder;Lcom/tgs/network/http/Params;Lcom/tgs/network/http/Options;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;)Lcom/tgs/network/Result;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lcom/tgs/network/Result;

    const-string p3, "Unknown error."

    invoke-direct {p1, p2, p3}, Lcom/tgs/network/Result;-><init>(ZLjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/tgs/network/Result;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/network/http/HttpResponse;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 48
    invoke-virtual {p3}, Lcom/tgs/network/http/HttpResponse;->asBase64String()Ljava/lang/String;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    if-eqz p3, :cond_2

    .line 49
    invoke-virtual {p3}, Lcom/tgs/network/http/HttpResponse;->getHeaders()Lcom/tgs/network/http/HttpHeaders;

    move-result-object p5

    move-object v4, p5

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Lcom/tgs/network/Result;->getMessage()Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v3, p4

    if-eqz p3, :cond_4

    .line 51
    invoke-virtual {p3}, Lcom/tgs/network/http/HttpResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    move v1, p1

    goto :goto_3

    :cond_4
    move v1, p2

    :goto_3
    if-eqz p3, :cond_5

    .line 52
    invoke-virtual {p3}, Lcom/tgs/network/http/HttpResponse;->getResponseCode()I

    move-result p2

    :cond_5
    move v2, p2

    move-object v0, p0

    move-object v6, p7

    .line 51
    invoke-direct/range {v0 .. v6}, Lcom/tgs/network/TGSNetworkManager;->notifyNotifyTextHttpFinish(ZILjava/lang/String;Lcom/tgs/network/http/HttpHeaders;Ljava/lang/String;Lcom/tgs/network/OnHttpTextResponse;)V

    return-void
.end method

.method public tgsRequestTextHttp(Ljava/lang/String;Lcom/tgs/network/OnHttpTextResponse;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;)Z
    .locals 11

    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/tgs/network/Json;->createJsonObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "url"

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "method"

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "headers"

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v1, "paramsDict"

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 31
    new-instance v3, Lcom/tgs/network/http/HttpParam$Builder;

    invoke-direct {v3}, Lcom/tgs/network/http/HttpParam$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/tgs/network/http/HttpParam$Builder;->putAll(Ljava/lang/Object;)Lcom/tgs/network/http/HttpParam$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/network/http/HttpParam$Builder;->build()Lcom/tgs/network/http/HttpParam;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    const-string v1, "paramsBytesBase64"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 35
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 36
    :cond_2
    new-instance p1, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda0;-><init>([B)V

    move-object v7, p1

    goto :goto_1

    :cond_3
    move-object v7, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    invoke-static {}, Lcom/tgs/network/utils/ThreadPoolUtils;->getInstance()Lcom/tgs/network/utils/ThreadPoolUtils;

    move-result-object p1

    new-instance v0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;

    move-object v2, v0

    move-object v3, p0

    move-object v8, p3

    move-object v9, p4

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/network/TGSNetworkManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/tgs/network/http/Params;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpTextResponse;)V

    invoke-virtual {p1, v0}, Lcom/tgs/network/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Url is empty"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p2

    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/tgs/network/TGSNetworkManager;->notifyNotifyTextHttpFinish(ZILjava/lang/String;Lcom/tgs/network/http/HttpHeaders;Ljava/lang/String;Lcom/tgs/network/OnHttpTextResponse;)V

    return v0
.end method
