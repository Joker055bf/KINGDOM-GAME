.class public Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
.super Ljava/lang/Object;
.source "RechargeRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/RechargeRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordsList"
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private giftName:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payPrice:Ljava/lang/String;

.field private rechargeTime:Ljava/lang/String;

.field private shipStatus:Ljava/lang/String;

.field private shipStatusColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->orderId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->rechargeTime:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->giftName:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->payPrice:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->currency:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->shipStatus:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->shipStatusColor:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 145
    new-instance v8, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 147
    :cond_0
    new-instance v1, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    const-string v2, "orderId"

    .line 148
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "rechargeTime"

    .line 149
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "giftName"

    .line 150
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "payPrice"

    .line 151
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "currencyType"

    .line 152
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "shipStatus"

    .line 153
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "shipStatusColor"

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 123
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 127
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v11, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    const-string v3, "orderId"

    .line 130
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "rechargeTime"

    .line 131
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "giftName"

    .line 132
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "payPrice"

    .line 133
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "currencyType"

    .line 134
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "shipStatus"

    .line 135
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "shipStatusColor"

    .line 136
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static records2Json(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "orderId"

    .line 164
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rechargeTime"

    .line 165
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getRechargeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "giftName"

    .line 166
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getGiftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payPrice"

    .line 167
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getPayPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currencyType"

    .line 168
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "shipStatus"

    .line 169
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "shipStatusColor"

    .line 170
    invoke-virtual {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatusColor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 173
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->giftName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->payPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getRechargeTime()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->rechargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShipStatus()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->shipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getShipStatusColor()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->shipStatusColor:Ljava/lang/String;

    return-object v0
.end method
