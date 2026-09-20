.class public Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->buildCPPlUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->buildPlRequestBody(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static buildCPPlUrl(Ljava/lang/String;)Ljava/lang/String;
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

.method private static buildPlRequestBody(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getWidth()I

    move-result p1

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getHeight()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getHeight()I

    move-result p0

    const-string p1, "height"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
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

.method public static payloadRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
    .locals 1

    new-instance v0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
