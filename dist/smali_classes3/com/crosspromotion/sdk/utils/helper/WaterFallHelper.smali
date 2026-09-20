.class public Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper;->buildCPCLUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Map;[Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper;->buildClRequestBody(Ljava/util/Map;[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static buildCPCLUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs buildClRequestBody(Ljava/util/Map;[Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget-object v2, p1, v1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v1, p1, v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v1, 0x2

    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v1, p1, v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imprTimes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "iap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->isGpInstall(Landroid/content/Context;)I

    move-result v1

    const-string v2, "ng"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x5

    aget-object p1, p1, v1

    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    const-string p1, "InstanceId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "iid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "AuctionId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "reqId"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "request cp/cl params : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static wfRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;ILcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/PlacementInfo;",
            "I",
            "Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper$1;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper$1;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/util/Map;Lcom/openmediation/sdk/utils/model/PlacementInfo;I)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
