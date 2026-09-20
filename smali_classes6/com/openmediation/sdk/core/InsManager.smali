.class public Lcom/openmediation/sdk/core/InsManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addC2SInstance(Ljava/util/List;Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-interface {p0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pid"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "iid"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mid"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "adapterv"

    invoke-virtual {v2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msdkv"

    invoke-virtual {v2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->getMediationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "priority"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "cs"

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getCs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "abt"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getWfAbt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "abtId"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getWfAbtId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "bid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "price"

    invoke-virtual {v2}, Lcom/openmediation/sdk/bid/BidResponse;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cur"

    invoke-virtual {v2}, Lcom/openmediation/sdk/bid/BidResponse;->getCur()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "reqId"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getReqId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationRule()Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "ruleId"

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationRule()Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/MediationRule;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "buildReportData exception : "

    invoke-static {v1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "scene"

    invoke-static {p0, v0, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DensityUtil;->getDirection(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ot"

    invoke-static {p0, v0, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method private static buildZoneIds(Ljava/util/Set;Ljava/util/Map;Lcom/openmediation/sdk/utils/model/Mediation;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/Placement;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v5

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Mediation;->getId()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static cancelInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getScheduledFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getScheduledFuture()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setScheduledFuture(Ljava/util/concurrent/ScheduledFuture;)V

    :cond_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getTimeoutRunnable()Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getTimeoutRunnable()Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/InsExecutor;->remove(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setTimeoutRunnable(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)V

    :cond_3
    return-void
.end method

.method public static getC2SInstances(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    const-string v0, "c2s"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/PlacementUtils;->isCacheAdsType(I)Z

    move-result v3

    invoke-static {p1}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getMediationRule(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object v4

    const-string v5, "abt"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    invoke-static {p2, v9, v2}, Lcom/openmediation/sdk/core/InsManager;->getInsWithAdType(Lcom/openmediation/sdk/utils/model/Placement;ILandroid/util/SparseArray;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10, v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setWfAbt(I)V

    const-string v9, "abtId"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setWfAbtId(I)V

    invoke-virtual {v10, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationRule(Lcom/openmediation/sdk/utils/model/MediationRule;)V

    invoke-virtual {v10, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenue(D)V

    invoke-virtual {v10, v7}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setPriority(I)V

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenuePrecision(I)V

    if-eqz v3, :cond_2

    invoke-virtual {v10}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v9

    sget-object v11, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v9, v11, :cond_3

    :cond_2
    invoke-virtual {v10, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    invoke-virtual {v10, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p0, p2, v4, v9}, Lcom/openmediation/sdk/core/InsManager;->reportNoInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Placement;Lcom/openmediation/sdk/utils/model/MediationRule;I)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-object v6

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static getFirstAvailableIns(Ljava/util/List;)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInitDataMap(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "Config"

    const-class v3, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Configurations;->getPls()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Configurations;->getMs()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/model/Mediation;

    if-eqz p0, :cond_1

    invoke-static {v3, v2, p0}, Lcom/openmediation/sdk/core/InsManager;->buildZoneIds(Ljava/util/Set;Ljava/util/Map;Lcom/openmediation/sdk/utils/model/Mediation;)Ljava/util/List;

    move-result-object p0

    const-string v1, "zoneIds"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static getInsById(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->getInstanceList(Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static getInsById(Ljava/util/List;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getInsById(Ljava/util/concurrent/CopyOnWriteArrayList;I)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;I)",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static varargs declared-synchronized getInsIdWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;[",
            "Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/openmediation/sdk/core/InsManager;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v6

    if-ne v6, v5, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getInsWithAdType(Lcom/openmediation/sdk/utils/model/Placement;ILandroid/util/SparseArray;)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object p0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/nativead/NaInstance;-><init>()V

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->copy(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object p0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result p1

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static varargs declared-synchronized getInsWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;[",
            "Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/openmediation/sdk/core/InsManager;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v6

    if-ne v6, v5, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Placement;Lorg/json/JSONObject;Landroid/util/SparseArray;Lcom/openmediation/sdk/utils/model/MediationRule;II)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Lcom/openmediation/sdk/utils/model/MediationRule;",
            "II)",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;"
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/openmediation/sdk/core/InsManager;->getInsWithAdType(Lcom/openmediation/sdk/utils/model/Placement;ILandroid/util/SparseArray;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object p1

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq p1, v0, :cond_0

    invoke-virtual {p3, p5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setWfAbt(I)V

    invoke-virtual {p3, p6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setWfAbtId(I)V

    invoke-virtual {p3, p4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationRule(Lcom/openmediation/sdk/utils/model/MediationRule;)V

    invoke-virtual {p3, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    const-string p0, "r"

    const-wide/16 p4, 0x0

    invoke-virtual {p2, p0, p4, p5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenue(D)V

    const-string p0, "i"

    const/4 p1, -0x1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setPriority(I)V

    const-string p0, "rp"

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenuePrecision(I)V

    :cond_0
    return-object p3

    :cond_1
    invoke-static {p0, p1, p4, v0}, Lcom/openmediation/sdk/core/InsManager;->reportNoInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Placement;Lcom/openmediation/sdk/utils/model/MediationRule;I)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstanceList(Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstanceLoadStatuses(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLastLoadStatus()Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLastLoadStatus()Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public static getListInsResult(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/InsManager;->getListInsResult(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getListInsResult(Ljava/lang/String;Lorg/json/JSONObject;Lcom/openmediation/sdk/utils/model/Placement;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            "I)",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getTestInstanceMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    if-lez v1, :cond_0

    invoke-static {v2, v1}, Lcom/openmediation/sdk/core/InsManager;->splitInsByBs(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/openmediation/sdk/core/InsManager;->splitAbsIns(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "ins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->getMediationRule(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object v11

    const-string v4, "abt"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v4, "abtId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v4

    invoke-static {v4}, Lcom/openmediation/sdk/utils/PlacementUtils;->isCacheAdsType(I)Z

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v15, v4, :cond_7

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object v7, v3

    move-object v8, v11

    move v9, v12

    move v10, v0

    invoke-static/range {v4 .. v10}, Lcom/openmediation/sdk/core/InsManager;->getInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Placement;Lorg/json/JSONObject;Landroid/util/SparseArray;Lcom/openmediation/sdk/utils/model/MediationRule;II)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v5, v6, :cond_5

    :cond_4
    invoke-virtual {v4, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    invoke-virtual {v4, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_7
    return-object v14

    :cond_8
    :goto_1
    return-object v2
.end method

.method public static getNetworkName(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "Config"

    const-class v3, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/Configurations;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Configurations;->getMs()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/model/Mediation;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Mediation;->getNetworkName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static varargs instanceCount(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;[",
            "Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->getInsWithStatus(Ljava/util/List;[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static isInstanceAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onInsBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getC2SBidStart()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "duration"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 p1, 0x110

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsBidStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setC2SBidStart(J)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 v1, 0x10e

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_SUCCESS:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/bid/BidResponse;->setIid(I)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/bid/BidResponse;->getPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenue(D)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenuePrecision(I)V

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/bid/BidResponse;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getC2SBidStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "duration"

    invoke-static {p1, v0, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 v0, 0x10f

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " InsManager onInsBidSuccess: BidInstance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ,BidResponse = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static onInsClick(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x132

    invoke-virtual {v0, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsClosed(ZLcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p1, p2}, Lcom/openmediation/sdk/core/InsManager;->buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowStart()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "duration"

    invoke-static {p2, v1, v0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setShowStart(J)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    new-instance p2, Lcom/openmediation/sdk/inspector/logs/InventoryLog;

    invoke-direct {p2}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;-><init>()V

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    const/16 v0, 0x7d2

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInventoryLog(ZLjava/lang/String;Lcom/openmediation/sdk/inspector/logs/InventoryLog;)V

    return-void
.end method

.method public static onInsInitFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->cancelInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getInitStart()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getInitStart()J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-int p1, v1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setInitStart(J)V

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 p1, 0xca

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsInitStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setInitStart(J)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsInitSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->cancelInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getInitStart()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getInitStart()J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setInitStart(J)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 v1, 0xcb

    invoke-virtual {p0, v1, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->cancelInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLoadStart()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLoadStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "duration"

    invoke-static {v0, v3, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->needPayload()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    const/16 v2, 0x115

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    const/16 v2, 0xd3

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    const/16 v2, 0x105

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    const/16 v2, 0xce

    :goto_1
    invoke-virtual {p2, v2, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    :cond_6
    int-to-long v0, v1

    invoke-static {p0, v0, v1, p1}, Lcom/openmediation/sdk/core/InsManager;->setLoadStatus(Lcom/openmediation/sdk/utils/model/BaseInstance;JLcom/openmediation/sdk/mediation/AdapterError;)V

    return-void
.end method

.method public static onInsLoadStart(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLoadStart(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLoadSuccessTime(J)V

    return-void
.end method

.method public static onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLoadSuccessTime(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLastLoadStatus(Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->cancelInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLoadStart()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLoadStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->needPayload()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 p1, 0x114

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    if-eqz p1, :cond_3

    const/16 p1, 0x107

    goto :goto_0

    :cond_3
    const/16 p1, 0xd0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    :cond_4
    return-void
.end method

.method public static onInsShow(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setShowStart(J)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/AdRateUtil;->onInstancesShowed(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/AdRateUtil;->onSceneShowed(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x12e

    invoke-virtual {v0, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsShowFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    invoke-static {p0, p2}, Lcom/openmediation/sdk/core/InsManager;->buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-static {p2, v1, v0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowStart()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int p1, v0

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {p2, v0, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setShowStart(J)V

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 p1, 0x12f

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportDataWithScene(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x130

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    invoke-static {p0, p1}, Lcom/openmediation/sdk/ImpressionManager;->onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/TaiChiManager;->reportUserRevenue(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public static reOrderIns(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setIndex(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reportInsDestroyed(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static reportInsEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method private static reportNoInstance(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Placement;Lcom/openmediation/sdk/utils/model/MediationRule;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "iid"

    invoke-static {p1, v0, p3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "reqId"

    invoke-static {p1, p3, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/MediationRule;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "ruleId"

    invoke-static {p1, p2, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    const/16 p2, 0xc8

    invoke-virtual {p0, p2, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static resetInsStateOnClResponse(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->SKIP:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v1, v2, :cond_1

    :cond_3
    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static setLoadStatus(Lcom/openmediation/sdk/utils/model/BaseInstance;JLcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdapterError;->isLoadFailFromAdn()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;-><init>()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->setIid(I)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getLoadStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->setLts(J)V

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->setDur(J)V

    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdapterError;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->setCode(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLastLoadStatus(Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setLastLoadStatus(Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;)V

    :goto_0
    return-void
.end method

.method public static sort(Ljava/util/List;Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->addC2SInstance(Ljava/util/List;Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-object p0
.end method

.method public static sort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {v0, p1}, Lcom/openmediation/sdk/core/InsManager;->addC2SInstance(Ljava/util/List;Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static splitAbsIns(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v3, v4, :cond_0

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    :goto_1
    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    goto :goto_2

    :cond_0
    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v3, v4, :cond_1

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ins state : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static splitInsByBs(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v4, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setIndex(I)V

    if-eqz p1, :cond_2

    add-int/lit8 v5, v3, 0x1

    mul-int v6, v5, p1

    if-lt v2, v6, :cond_1

    move v3, v5

    :cond_1
    invoke-virtual {v4, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setGrpIndex(I)V

    rem-int v5, v2, p1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setFirst(Z)V

    :cond_2
    invoke-virtual {v4, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static startInsLoadTimer(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getTimeoutRunnable()Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->setTimeoutListener(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setTimeoutRunnable(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getPt()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x1e

    :goto_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getTimeoutRunnable()Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/openmediation/sdk/utils/InsExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setScheduledFuture(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
