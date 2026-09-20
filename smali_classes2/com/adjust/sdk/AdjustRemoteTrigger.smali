.class public Lcom/adjust/sdk/AdjustRemoteTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final label:Ljava/lang/String;

.field private final payload:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->label:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->payload:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->payload:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdjustRemoteTrigger{label=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/AdjustRemoteTrigger;->payload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
