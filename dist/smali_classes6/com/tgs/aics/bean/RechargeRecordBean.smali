.class public Lcom/tgs/aics/bean/RechargeRecordBean;
.super Ljava/lang/Object;
.source "RechargeRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
    }
.end annotation


# instance fields
.field private maxRecordLimit:I

.field private pageSize:I

.field private queryMessageId:Ljava/lang/String;

.field private queryTips:Ljava/lang/String;

.field private recentRecordInDays:I

.field private recordsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->pageSize:I

    .line 23
    iput p2, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->total:I

    .line 24
    iput p3, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->recentRecordInDays:I

    .line 25
    iput p4, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->maxRecordLimit:I

    .line 26
    iput-object p5, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->queryMessageId:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->queryTips:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->recordsLists:Ljava/util/List;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/RechargeRecordBean;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 61
    new-instance v8, Lcom/tgs/aics/bean/RechargeRecordBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/bean/RechargeRecordBean;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v8

    .line 64
    :cond_0
    new-instance v1, Lcom/tgs/aics/bean/RechargeRecordBean;

    const-string v2, "pageSize"

    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "total"

    .line 66
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v2, "recentRecordInDays"

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v2, "maxRecordLimit"

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v2, "queryMessageId"

    .line 69
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "queryTips"

    .line 70
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "records"

    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->parse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v16

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/tgs/aics/bean/RechargeRecordBean;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getMaxRecordLimit()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->maxRecordLimit:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->pageSize:I

    return v0
.end method

.method public getQueryMessageId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->queryMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryTips()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->queryTips:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentRecordInDays()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->recentRecordInDays:I

    return v0
.end method

.method public getRecordsLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->recordsLists:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/tgs/aics/bean/RechargeRecordBean;->total:I

    return v0
.end method
