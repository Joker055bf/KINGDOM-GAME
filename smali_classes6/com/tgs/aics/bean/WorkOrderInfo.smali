.class public Lcom/tgs/aics/bean/WorkOrderInfo;
.super Lcom/tgs/aics/bean/BaseBean;
.source "WorkOrderInfo.java"


# instance fields
.field private canChat:Z

.field private currentProvider:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private workOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/WorkOrderInfo;
    .locals 4

    .line 30
    new-instance v0, Lcom/tgs/aics/bean/WorkOrderInfo;

    invoke-direct {v0}, Lcom/tgs/aics/bean/WorkOrderInfo;-><init>()V

    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "status"

    .line 33
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/WorkOrderInfo;->status:Ljava/lang/String;

    const-string p0, "current_provider"

    .line 34
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/WorkOrderInfo;->currentProvider:Ljava/lang/String;

    const-string p0, "work_order"

    .line 35
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/WorkOrderInfo;->workOrderNo:Ljava/lang/String;

    const-string p0, "can_chat"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/tgs/aics/bean/WorkOrderInfo;->canChat:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCurrentProvider()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tgs/aics/bean/WorkOrderInfo;->currentProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/tgs/aics/bean/WorkOrderInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkOrderNo()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tgs/aics/bean/WorkOrderInfo;->workOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public isCanChat()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/tgs/aics/bean/WorkOrderInfo;->canChat:Z

    return v0
.end method
