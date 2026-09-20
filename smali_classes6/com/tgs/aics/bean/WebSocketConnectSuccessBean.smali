.class public Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;
.super Ljava/lang/Object;
.source "WebSocketConnectSuccessBean.java"


# instance fields
.field private gameName:Ljava/lang/String;

.field private geographicLocation:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isSuccess:Z

.field private newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

.field private projectVar:Lcom/tgs/aics/bean/CustomDefineParams;

.field private reason:Ljava/lang/String;

.field private serverTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;
    .locals 6

    const-string v0, ""

    const-string v1, "geographic_location"

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;

    invoke-direct {v2}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;-><init>()V

    .line 52
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->isSuccess:Z

    const-string p0, "reason"

    .line 54
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->reason:Ljava/lang/String;

    const-string p0, "ip"

    .line 55
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->ip:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->geographicLocation:Ljava/lang/String;

    const-string p0, "server_timestamp"

    const-wide/16 v4, 0x0

    .line 57
    invoke-virtual {v3, p0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->serverTimestamp:J

    const-string p0, "game_name"

    .line 58
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->gameName:Ljava/lang/String;

    const-string p0, "rating_config"

    .line 60
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->parse(Ljava/lang/String;)Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    const-string p0, "project_var"

    .line 63
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/CustomDefineParams;->parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/CustomDefineParams;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->projectVar:Lcom/tgs/aics/bean/CustomDefineParams;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEvaluationSystemBean()Lcom/tgs/aics/bean/NewEvaluationSystemBean;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    return-object v0
.end method

.method public getProjectVar()Lcom/tgs/aics/bean/CustomDefineParams;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->projectVar:Lcom/tgs/aics/bean/CustomDefineParams;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->serverTimestamp:J

    return-wide v0
.end method

.method public isDomestic()Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->geographicLocation:Ljava/lang/String;

    const-string v1, "domestic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->isSuccess:Z

    return v0
.end method
