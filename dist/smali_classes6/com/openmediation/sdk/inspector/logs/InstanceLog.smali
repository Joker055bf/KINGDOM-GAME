.class public Lcom/openmediation/sdk/inspector/logs/InstanceLog;
.super Ljava/lang/Object;


# instance fields
.field protected detail:Ljava/lang/String;

.field private eventTag:I

.field private ins:Lcom/openmediation/sdk/utils/model/BaseInstance;

.field private position:I

.field protected recordTime:J

.field private revenue:D

.field protected start:J


# direct methods
.method public constructor <init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->start:J

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->ins:Lcom/openmediation/sdk/utils/model/BaseInstance;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTag()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->eventTag:I

    return v0
.end method

.method public getIns()Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->ins:Lcom/openmediation/sdk/utils/model/BaseInstance;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->position:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->recordTime:J

    return-wide v0
.end method

.method public getRevenue()D
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->revenue:D

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->start:J

    return-wide v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->detail:Ljava/lang/String;

    return-void
.end method

.method public setEventTag(I)V
    .locals 2

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->eventTag:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->eventTag:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->recordTime:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->position:I

    return-void
.end method

.method public setRevenue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/inspector/logs/InstanceLog;->revenue:D

    return-void
.end method
