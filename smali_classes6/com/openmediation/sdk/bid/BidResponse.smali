.class public Lcom/openmediation/sdk/bid/BidResponse;
.super Ljava/lang/Object;


# instance fields
.field private createTime:J

.field private cur:Ljava/lang/String;

.field private expire:I

.field private iid:I

.field private isNotified:Z

.field private lurl:Ljava/lang/String;

.field private nurl:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private original:Ljava/lang/String;

.field private payLoad:Ljava/lang/String;

.field private price:D

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->price:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->createTime:J

    return-void
.end method


# virtual methods
.method public getCur()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getIid()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->iid:I

    return v0
.end method

.method public getLurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->lurl:Ljava/lang/String;

    return-object v0
.end method

.method public getNurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->nurl:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->original:Ljava/lang/String;

    return-object v0
.end method

.method public getPayLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->payLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->price:D

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 6

    iget v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->expire:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/openmediation/sdk/bid/BidResponse;->createTime:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->expire:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNotified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/bid/BidResponse;->isNotified:Z

    return v0
.end method

.method public setCur(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->cur:Ljava/lang/String;

    return-void
.end method

.method public setExpire(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->expire:I

    return-void
.end method

.method public setIid(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->iid:I

    return-void
.end method

.method public setLurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->lurl:Ljava/lang/String;

    return-void
.end method

.method public setNotified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->isNotified:Z

    return-void
.end method

.method public setNurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->nurl:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->object:Ljava/lang/Object;

    return-void
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->original:Ljava/lang/String;

    return-void
.end method

.method public setPayLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->payLoad:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->price:D

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidResponse;->token:Ljava/lang/String;

    return-void
.end method
