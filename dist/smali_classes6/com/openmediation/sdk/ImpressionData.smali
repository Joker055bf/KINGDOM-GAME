.class public Lcom/openmediation/sdk/ImpressionData;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_AB_GROUP:Ljava/lang/String; = "ab_group"

.field private static final KEY_AB_ID:Ljava/lang/String; = "ab_id"

.field private static final KEY_AD_NETWORK_ID:Ljava/lang/String; = "ad_network_id"

.field private static final KEY_AD_NETWORK_NAME:Ljava/lang/String; = "ad_network_name"

.field private static final KEY_AD_NETWORK_UNIT_ID:Ljava/lang/String; = "ad_network_unit_id"

.field private static final KEY_CURRENCY:Ljava/lang/String; = "currency"

.field private static final KEY_IMPRESSION_ID:Ljava/lang/String; = "impression_id"

.field private static final KEY_INSTANCE_ID:Ljava/lang/String; = "instance_id"

.field private static final KEY_INSTANCE_NAME:Ljava/lang/String; = "instance_name"

.field private static final KEY_INSTANCE_PRIORITY:Ljava/lang/String; = "instance_priority"

.field private static final KEY_LIFETIME_VALUE:Ljava/lang/String; = "lifetime_value"

.field private static final KEY_MEDIATION_RULE_ID:Ljava/lang/String; = "mediation_rule_id"

.field private static final KEY_MEDIATION_RULE_NAME:Ljava/lang/String; = "mediation_rule_name"

.field private static final KEY_MEDIATION_RULE_PRIORITY:Ljava/lang/String; = "mediation_rule_priority"

.field private static final KEY_MEDIATION_RULE_TYPE:Ljava/lang/String; = "mediation_rule_type"

.field private static final KEY_PLACEMENT_AD_TYPE:Ljava/lang/String; = "placement_ad_type"

.field private static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placement_id"

.field private static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placement_name"

.field private static final KEY_PRECISION:Ljava/lang/String; = "precision"

.field private static final KEY_REVENUE:Ljava/lang/String; = "revenue"

.field private static final KEY_SCENE_NAME:Ljava/lang/String; = "scene_name"


# instance fields
.field private final mJsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getReqId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "impression_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instance_id"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instance_name"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instance_priority"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_network_id"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_network_name"

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->getNetworkName(Lcom/openmediation/sdk/utils/model/BaseInstance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_network_unit_id"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationRule()Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "mediation_rule_id"

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediation_rule_name"

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/openmediation/sdk/ImpressionData;->getRuleType(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediation_rule_type"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediation_rule_priority"

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/MediationRule;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "placement_id"

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "placement_name"

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_ad_type"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const-string v1, "scene_name"

    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    const-string p2, "currency"

    const-string v1, "USD"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "revenue"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowRevenue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenuePrecision()I

    move-result p2

    invoke-static {p2}, Lcom/openmediation/sdk/ImpressionData;->getPrecision(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "precision"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getWfAbt()I

    move-result p2

    invoke-static {p2}, Lcom/openmediation/sdk/ImpressionData;->getAbTest(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ab_group"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ab_id"

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getWfAbtId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lifetime_value"

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->getLifetimeRevenue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data conversion failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImpressionData"

    invoke-virtual {p2, v0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static create(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lcom/openmediation/sdk/ImpressionData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/ImpressionData;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/ImpressionData;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    return-object v0
.end method

.method private static getAbTest(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "B"

    return-object p0

    :cond_1
    const-string p0, "A"

    return-object p0
.end method

.method private static getPrecision(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "defined"

    return-object p0

    :cond_1
    const-string p0, "estimated"

    return-object p0

    :cond_2
    const-string p0, "exact"

    return-object p0

    :cond_3
    const-string p0, "undisclosed"

    return-object p0
.end method

.method private static getRuleType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Manual"

    return-object p0

    :cond_1
    const-string p0, "Auto"

    return-object p0
.end method


# virtual methods
.method public getAbGroup()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "ab_group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "ad_network_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworkName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "ad_network_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworkUnitId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "ad_network_unit_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "currency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "impression_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "instance_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "instance_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstancePriority()I
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "instance_priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLifetimeValue()D
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "lifetime_value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMediationRuleId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "mediation_rule_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationRuleName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "mediation_rule_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationRulePriority()I
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "mediation_rule_priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMediationRuleType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "mediation_rule_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementAdType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "placement_ad_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "placement_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "placement_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "precision"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevenue()D
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "revenue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "scene_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/ImpressionData;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
