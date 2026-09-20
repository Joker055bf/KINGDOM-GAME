.class public Lcom/openmediation/sdk/utils/event/Event;
.super Ljava/lang/Object;


# instance fields
.field private abt:I

.field private abtId:I

.field private adapterv:Ljava/lang/String;

.field private bid:I

.field private code:Ljava/lang/String;

.field private cs:I

.field private cur:Ljava/lang/String;

.field private data:Lorg/json/JSONObject;

.field private duration:I

.field private eid:I

.field private iid:I

.field private mid:I

.field private msdkv:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private ot:I

.field private payload:Ljava/lang/String;

.field private pid:I

.field private price:D

.field private priority:I

.field private reqId:Ljava/lang/String;

.field private ruleId:I

.field private scene:I

.field private ts:J


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/utils/event/Event;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/utils/event/Event;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->eid:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->mid:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->iid:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->scene:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ot:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->duration:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->priority:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->cs:I

    const-string v1, ""

    iput-object v1, p0, Lcom/openmediation/sdk/utils/event/Event;->code:Ljava/lang/String;

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->bid:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/openmediation/sdk/utils/event/Event;->price:D

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abt:I

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abtId:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/event/Event;->parseFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method private parseFromJson(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ts:J

    const-string v0, "eid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->eid:I

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput v1, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I

    :goto_0
    const-string v0, "mid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->mid:I

    const-string v0, "iid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->iid:I

    const-string v0, "adapterv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->adapterv:Ljava/lang/String;

    const-string v0, "msdkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->msdkv:Ljava/lang/String;

    const-string v0, "scene"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->scene:I

    const-string v0, "ot"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ot:I

    const-string v0, "duration"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->duration:I

    const-string v0, "priority"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->priority:I

    const-string v0, "cs"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->cs:I

    const-string v0, "abt"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abt:I

    const-string v0, "abtId"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abtId:I

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->code:Ljava/lang/String;

    const-string v0, "bid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->bid:I

    const-string v0, "price"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/openmediation/sdk/utils/event/Event;->price:D

    const-string v0, "cur"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->cur:Ljava/lang/String;

    const-string v0, "reqId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->reqId:Ljava/lang/String;

    const-string v0, "ruleId"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ruleId:I

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->data:Lorg/json/JSONObject;

    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->payload:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "parse Event from json "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getAbt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abt:I

    return v0
.end method

.method public getAbtId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->abtId:I

    return v0
.end method

.method public getAdapterv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->adapterv:Ljava/lang/String;

    return-object v0
.end method

.method public getBid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->bid:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCs()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->cs:I

    return v0
.end method

.method public getCur()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->duration:I

    return v0
.end method

.method public getEid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->eid:I

    return v0
.end method

.method public getIid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->iid:I

    return v0
.end method

.method public getMid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->mid:I

    return v0
.end method

.method public getMsdkv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->msdkv:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/Event;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ot:I

    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I

    return v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/event/Event;->price:D

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->priority:I

    return v0
.end method

.method public getScene()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/event/Event;->scene:I

    return v0
.end method

.method public getTs()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/event/Event;->ts:J

    return-wide v0
.end method

.method public setAbt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->abt:I

    return-void
.end method

.method public setAbtId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->abtId:I

    return-void
.end method

.method public setAdapterv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->adapterv:Ljava/lang/String;

    return-void
.end method

.method public setBid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->bid:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->code:Ljava/lang/String;

    return-void
.end method

.method public setCs(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->cs:I

    return-void
.end method

.method public setCur(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->cur:Ljava/lang/String;

    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->duration:I

    return-void
.end method

.method public setEid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->eid:I

    return-void
.end method

.method public setIid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->iid:I

    return-void
.end method

.method public setMid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->mid:I

    return-void
.end method

.method public setMsdkv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->msdkv:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/Event;->msg:Ljava/lang/String;

    return-void
.end method

.method public setOt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->ot:I

    return-void
.end method

.method public setPid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/event/Event;->price:D

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->priority:I

    return-void
.end method

.method public setScene(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/event/Event;->scene:I

    return-void
.end method

.method public setTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/event/Event;->ts:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/openmediation/sdk/utils/event/Event;->ts:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eid"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->eid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pid"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mid"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->mid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "iid"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->iid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adapterv"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->adapterv:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msdkv"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->msdkv:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scene"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->scene:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ot"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->ot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cs"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->cs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "abt"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->abt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "abtId"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->abtId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->code:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bid"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->bid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    iget-wide v2, p0, Lcom/openmediation/sdk/utils/event/Event;->price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cur"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->cur:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reqId"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->reqId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ruleId"

    iget v2, p0, Lcom/openmediation/sdk/utils/event/Event;->ruleId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->data:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/Event;->payload:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Event to json "

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method toJson()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/event/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/event/Event;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
