.class public Lcom/openmediation/sdk/utils/model/BaseInstance;
.super Lcom/openmediation/sdk/utils/model/Frequency;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;,
        Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/openmediation/sdk/utils/model/Frequency;",
        "Ljava/lang/Comparable<",
        "Lcom/openmediation/sdk/utils/model/BaseInstance;",
        ">;"
    }
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private bidResponse:Lcom/openmediation/sdk/bid/BidResponse;

.field private bidState:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

.field private grpIndex:I

.field private hb:I

.field private hbt:I

.field protected id:I

.field protected index:I

.field private isFirst:Z

.field protected key:Ljava/lang/String;

.field protected mAdExpiredTime:J

.field protected mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

.field protected mC2SBidStart:J

.field protected mInitStart:J

.field protected mLastLoadStatus:Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

.field protected mLoadStart:J

.field protected mLoadSuccessTime:J

.field private mMediationRule:Lcom/openmediation/sdk/utils/model/MediationRule;

.field private mMediationState:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field protected mPlacementId:Ljava/lang/String;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field protected mShowStart:J

.field private mTimeoutRunnable:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

.field protected mediationId:I

.field private name:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private priority:I

.field private reqId:Ljava/lang/String;

.field private revenue:D

.field private revenuePrecision:I

.field private wfAbt:I

.field private wfAbtId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/Frequency;-><init>()V

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->NOT_BIDDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    iput-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->bidState:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    const/4 v0, -0x1

    iput v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->priority:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    iput v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenuePrecision:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/openmediation/sdk/utils/model/BaseInstance;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-wide v1, p1, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    iget-wide v3, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->compareTo(Lcom/openmediation/sdk/utils/model/BaseInstance;)I

    move-result p1

    return p1
.end method

.method public copy(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/utils/model/BaseInstance;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setAppKey(Ljava/lang/String;)V

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hb:I

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setHb(I)V

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hbt:I

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setHbt(I)V

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->id:I

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setId(I)V

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mediationId:I

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationId(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setAdapter(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mMediationState:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    :goto_1
    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdExpiredTime:J

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setExpiredTime(J)V

    return-object p1
.end method

.method public getAdapter()Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->bidResponse:Lcom/openmediation/sdk/bid/BidResponse;

    return-object v0
.end method

.method public getBidState()Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->bidState:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    return-object v0
.end method

.method public getC2SBidStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mC2SBidStart:J

    return-wide v0
.end method

.method public getGrpIndex()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->grpIndex:I

    return v0
.end method

.method public getHb()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hb:I

    return v0
.end method

.method public getHbt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hbt:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->index:I

    return v0
.end method

.method public getInitStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mInitStart:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoadStatus()Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLastLoadStatus:Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    return-object v0
.end method

.method public getLoadStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLoadStart:J

    return-wide v0
.end method

.method public getMediationId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mediationId:I

    return v0
.end method

.method public getMediationRule()Lcom/openmediation/sdk/utils/model/MediationRule;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mMediationRule:Lcom/openmediation/sdk/utils/model/MediationRule;

    return-object v0
.end method

.method public getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mMediationState:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->priority:I

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()D
    .locals 5

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getRevenuePrecision()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenuePrecision:I

    return v0
.end method

.method public getScheduledFuture()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public getShowRevenue()D
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowRevenue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShowRevenue(I)D
    .locals 6

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v3, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Instance getRevenue Error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getShowStart()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mShowStart:J

    return-wide v0
.end method

.method public getTimeoutRunnable()Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mTimeoutRunnable:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    return-object v0
.end method

.method public getWfAbt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->wfAbt:I

    return v0
.end method

.method public getWfAbtId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->wfAbtId:I

    return v0
.end method

.method public isBid()Z
    .locals 2

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCaped()Z
    .locals 2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationState()Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpired()Z
    .locals 8

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdExpiredTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLoadSuccessTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdExpiredTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->isFirst:Z

    return v0
.end method

.method public setAdapter(Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdapter:Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->bidResponse:Lcom/openmediation/sdk/bid/BidResponse;

    return-void
.end method

.method public setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->bidState:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    return-void
.end method

.method public setC2SBidStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mC2SBidStart:J

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdExpiredTime:J

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->isFirst:Z

    return-void
.end method

.method public setGrpIndex(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->grpIndex:I

    return-void
.end method

.method public setHb(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hb:I

    return-void
.end method

.method public setHbt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->hbt:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->index:I

    return-void
.end method

.method public setInitStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mInitStart:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastLoadStatus(Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLastLoadStatus:Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    return-void
.end method

.method public setLoadStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLoadStart:J

    return-void
.end method

.method public setLoadSuccessTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mLoadSuccessTime:J

    return-void
.end method

.method public setMediationId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mediationId:I

    return-void
.end method

.method public setMediationRule(Lcom/openmediation/sdk/utils/model/MediationRule;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mMediationRule:Lcom/openmediation/sdk/utils/model/MediationRule;

    return-void
.end method

.method public setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mMediationState:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->name:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->object:Ljava/lang/Object;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->priority:I

    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->reqId:Ljava/lang/String;

    return-void
.end method

.method public setRevenue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    return-void
.end method

.method public setRevenuePrecision(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenuePrecision:I

    return-void
.end method

.method public setScheduledFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setShowStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mShowStart:J

    return-void
.end method

.method public setTimeoutRunnable(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mTimeoutRunnable:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    return-void
.end method

.method public setWfAbt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->wfAbt:I

    return-void
.end method

.method public setWfAbtId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->wfAbtId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ins{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mediationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mAdExpiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revenue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->revenue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/BaseInstance;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
