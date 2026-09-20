.class public Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResponse(Lcom/openmediation/sdk/utils/request/network/Response;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/request/network/Response;->body()Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    move-result-object p0

    invoke-interface {p0}, Lcom/openmediation/sdk/utils/request/network/ResponseBody;->byteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static createInstance(I)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/promotion/CpInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/openmediation/sdk/core/imp/splash/SpInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/splash/SpInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/rewardedvideo/RvInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    return-object p0
.end method

.method private static formatInstances(Ljava/lang/String;Landroid/util/SparseArray;ILorg/json/JSONArray;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;I",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "m"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/openmediation/sdk/utils/model/Mediation;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->createInstance(I)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object v7

    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/Mediation;->getK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setAppKey(Ljava/lang/String;)V

    const-string v8, "k"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setKey(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setId(I)V

    const-string v8, "n"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setPlacementId(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationId(I)V

    const-string v5, "fc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyCap(I)V

    const-string v5, "fu"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    const/16 v8, 0x3e8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyUnit(I)V

    const-string v5, "fi"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v8

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyInterval(I)V

    const-string v5, "hb"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setHb(I)V

    const-string v5, "hbt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v8, :cond_2

    const/16 v3, 0x1388

    :cond_2
    invoke-virtual {v7, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setHbt(I)V

    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/Mediation;->getEt()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setExpiredTime(J)V

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static formatPlacement(Landroid/util/SparseArray;Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "t"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/openmediation/sdk/utils/model/Placement;

    invoke-direct {v7}, Lcom/openmediation/sdk/utils/model/Placement;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setOriData(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/openmediation/sdk/utils/model/Placement;->setId(Ljava/lang/String;)V

    const-string v8, "n"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/openmediation/sdk/utils/model/Placement;->setT(I)V

    const-string v8, "fc"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyCap(I)V

    const-string v8, "fu"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyUnit(I)V

    const-string v8, "fi"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Frequency;->setFrequencyInterval(I)V

    const-string v8, "rf"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setRf(I)V

    const-string v8, "rfs"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v9}, Lcom/openmediation/sdk/utils/model/Placement;->setRfs(Ljava/util/Map;)V

    :cond_2
    const-string v8, "cs"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setCs(I)V

    const-string v8, "bs"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setBs(I)V

    const-string v8, "fo"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setFo(I)V

    const-string v8, "pt"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setPt(I)V

    const-string v8, "rlw"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setRlw(I)V

    const-string v8, "hb"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v2

    :goto_2
    invoke-virtual {v7, v9}, Lcom/openmediation/sdk/utils/model/Placement;->setHasHb(Z)V

    const-string v8, "main"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setMain(I)V

    const-string v8, "scenes"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->formatScenes(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/openmediation/sdk/utils/model/Placement;->setScenes(Ljava/util/Map;)V

    const-string v8, "ins"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v5, p0, v6, v4}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->formatInstances(Ljava/lang/String;Landroid/util/SparseArray;ILorg/json/JSONArray;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/openmediation/sdk/utils/model/Placement;->setInsMap(Landroid/util/SparseArray;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private static formatScenes(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Scene;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/openmediation/sdk/utils/model/Scene;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "https://s.openmediation.com/init"

    :cond_1
    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildInitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "empty Url"

    invoke-interface {p2, p0}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdns()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildConfigRequestBody(Lorg/json/JSONArray;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    const p1, 0xea60

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->callback(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    return-void
.end method

.method private static parseApiConfiguration(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/ApiConfigurations;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;-><init>()V

    const-string v1, "wf"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setWf(Ljava/lang/String;)V

    const-string v1, "lr"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setLr(Ljava/lang/String;)V

    const-string v1, "er"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setEr(Ljava/lang/String;)V

    const-string v1, "ic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setIc(Ljava/lang/String;)V

    const-string v1, "iap"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setIap(Ljava/lang/String;)V

    const-string v1, "cd"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setCd(Ljava/lang/String;)V

    const-string v1, "hb"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setHb(Ljava/lang/String;)V

    const-string v1, "cpcl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setCpcl(Ljava/lang/String;)V

    const-string v1, "cppl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->setCppl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseFormServerResponse(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Configurations;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/model/Configurations;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "d"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setD(I)V

    const-string p0, "ri"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setRi(I)V

    const-string p0, "coa"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setCoa(I)V

    const-string p0, "ics"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setIcs(I)V

    const-string p0, "api"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->parseApiConfiguration(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setApi(Lcom/openmediation/sdk/utils/model/ApiConfigurations;)V

    const-string p0, "events"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v2, Lcom/openmediation/sdk/utils/model/Events;

    invoke-direct {v2, p0}, Lcom/openmediation/sdk/utils/model/Events;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/utils/model/Configurations;->setEvents(Lcom/openmediation/sdk/utils/model/Events;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/openmediation/sdk/utils/model/Events;

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/Events;-><init>()V

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setEvents(Lcom/openmediation/sdk/utils/model/Events;)V

    :goto_0
    const-string p0, "ms"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->parseMediationConfigurations(Lorg/json/JSONArray;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setMs(Landroid/util/SparseArray;)V

    const-string v2, "pls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->formatPlacement(Landroid/util/SparseArray;Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setPls(Ljava/util/Map;)V

    const-string p0, "uarx"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->parseUarX(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/model/Configurations;->setUarX(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseMediationConfigurations(Lorg/json/JSONArray;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/openmediation/sdk/utils/model/Mediation;

    invoke-direct {v4}, Lcom/openmediation/sdk/utils/model/Mediation;-><init>()V

    const-string v5, "k"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "n"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5}, Lcom/openmediation/sdk/utils/model/Mediation;->setK(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/openmediation/sdk/utils/model/Mediation;->setId(I)V

    invoke-virtual {v4, v7}, Lcom/openmediation/sdk/utils/model/Mediation;->setN(Ljava/lang/String;)V

    const-string v5, "nn"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/openmediation/sdk/utils/model/Mediation;->setNn(Ljava/lang/String;)V

    const-string v5, "et"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/openmediation/sdk/utils/model/Mediation;->setEt(J)V

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static parseUarX(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
