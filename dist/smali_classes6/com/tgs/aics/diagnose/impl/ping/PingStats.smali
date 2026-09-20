.class Lcom/tgs/aics/diagnose/impl/ping/PingStats;
.super Ljava/lang/Object;
.source "PingStats.java"


# instance fields
.field private final averageTimeTaken:F

.field private final ia:Ljava/net/InetAddress;

.field private final isReachable:Z

.field private final maxTimeTaken:F

.field private final minTimeTaken:F

.field private final noPings:J

.field private final packetsLost:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;JJFFF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->ia:Ljava/net/InetAddress;

    .line 16
    iput-wide p2, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->noPings:J

    .line 17
    iput-wide p4, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->packetsLost:J

    long-to-float p1, p2

    div-float/2addr p6, p1

    .line 18
    iput p6, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->averageTimeTaken:F

    .line 19
    iput p7, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->minTimeTaken:F

    .line 20
    iput p8, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->maxTimeTaken:F

    sub-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->isReachable:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->ia:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getAverageTimeTaken()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->averageTimeTaken:F

    return v0
.end method

.method public getAverageTimeTakenMillis()J
    .locals 2

    .line 53
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->averageTimeTaken:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMaxTimeTaken()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->maxTimeTaken:F

    return v0
.end method

.method public getMaxTimeTakenMillis()J
    .locals 2

    .line 61
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->maxTimeTaken:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMinTimeTaken()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->minTimeTaken:F

    return v0
.end method

.method public getMinTimeTakenMillis()J
    .locals 2

    .line 57
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->minTimeTaken:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getNoPings()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->noPings:J

    return-wide v0
.end method

.method public getPacketsLost()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->packetsLost:J

    return-wide v0
.end method

.method public isReachable()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->isReachable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingStats{ia="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->ia:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noPings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->noPings:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetsLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->packetsLost:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", averageTimeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->averageTimeTaken:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minTimeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->minTimeTaken:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTimeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->maxTimeTaken:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
