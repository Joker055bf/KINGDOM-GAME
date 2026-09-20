.class public Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;
.super Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/String;

.field private dur:J

.field private iid:I

.field private lts:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDur()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->dur:J

    return-wide v0
.end method

.method public getIid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->iid:I

    return v0
.end method

.method public getLts()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->lts:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->code:Ljava/lang/String;

    return-void
.end method

.method public setDur(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->dur:J

    return-void
.end method

.method public setIid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->iid:I

    return-void
.end method

.method public setLts(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->lts:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->msg:Ljava/lang/String;

    return-void
.end method
