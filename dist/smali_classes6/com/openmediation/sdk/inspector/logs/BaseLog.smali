.class public Lcom/openmediation/sdk/inspector/logs/BaseLog;
.super Ljava/lang/Object;


# instance fields
.field protected detail:Ljava/lang/String;

.field protected eventTag:I

.field private expand:Z

.field protected logTag:I

.field protected recordTime:J

.field protected start:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->expand:Z

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->logTag:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->start:J

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTag()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->eventTag:I

    return v0
.end method

.method public getLogTag()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->logTag:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->recordTime:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->start:J

    return-wide v0
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->expand:Z

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->detail:Ljava/lang/String;

    return-void
.end method

.method public setEventTag(I)V
    .locals 2

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->eventTag:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->recordTime:J

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->expand:Z

    return-void
.end method

.method public setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/inspector/logs/BaseLog;->start:J

    return-void
.end method
