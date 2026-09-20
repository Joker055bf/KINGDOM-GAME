.class public Lcom/openmediation/sdk/utils/helper/WaterFallHelper;
.super Ljava/lang/Object;


# static fields
.field private static final AUCTION_PRICE:Ljava/lang/String; = "${AUCTION_PRICE}"

.field private static final testInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->testInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanTestInstance()V
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->testInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getMediationRule(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/MediationRule;
    .locals 1

    const-string v0, "rule"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/model/MediationRule;->create(Lorg/json/JSONObject;)Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getS2sBidResponse(Lcom/openmediation/sdk/utils/model/Placement;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "bidresp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v4, "iid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "adm"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "nbr"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "err"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ins : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bid failed cause nbr : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/openmediation/sdk/bid/BidResponse;

    invoke-direct {v6}, Lcom/openmediation/sdk/bid/BidResponse;-><init>()V

    invoke-virtual {v6, v4}, Lcom/openmediation/sdk/bid/BidResponse;->setIid(I)V

    invoke-virtual {v6, v5}, Lcom/openmediation/sdk/bid/BidResponse;->setPayLoad(Ljava/lang/String;)V

    const-string v5, "price"

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v5, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v5, "nurl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "${AUCTION_PRICE}"

    if-nez v9, :cond_4

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v6, v5}, Lcom/openmediation/sdk/bid/BidResponse;->setNurl(Ljava/lang/String;)V

    const-string v5, "lurl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide v11, 0x3fb999999999999aL    # 0.1

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v6, v5}, Lcom/openmediation/sdk/bid/BidResponse;->setLurl(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/openmediation/sdk/bid/BidResponse;->setPrice(D)V

    const-string v5, "expire"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/openmediation/sdk/bid/BidResponse;->setExpire(I)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/openmediation/sdk/core/InsManager;->getInsById(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static getTestInstanceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->testInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method public static setTestInstance(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/openmediation/sdk/utils/helper/WaterFallHelper;->testInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static wfRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/PlacementInfo;",
            "Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/openmediation/sdk/utils/helper/WaterFallHelper$1;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/openmediation/sdk/utils/helper/WaterFallHelper$1;-><init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    invoke-static {v8}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
