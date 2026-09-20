.class Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;
.super Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;
.source "SpeedtestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->pingTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field private minPing:D

.field private prevPing:D

.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;J)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 187
    iput-object v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    move-wide/from16 v0, p11

    iput-wide v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->val$start:J

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;)V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 188
    iput-wide v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->minPing:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->prevPing:D

    const/4 v0, 0x0

    .line 189
    iput v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->counter:I

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ping: FAILED (took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->abort()V

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onCriticalFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onPong(J)Z
    .locals 8

    .line 199
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->counter:I

    long-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    .line 201
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->minPing:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->minPing:D

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    iget-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->minPing:D

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;D)D

    .line 203
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->prevPing:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$302(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;D)D

    goto :goto_1

    :cond_1
    sub-double v0, p1, v0

    .line 206
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 207
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D

    move-result-wide v3

    cmpl-double v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D

    move-result-wide v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    const-wide v5, 0x3fe6666666666666L    # 0.7

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D

    move-result-wide v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    const-wide v5, 0x3fc999999999999aL    # 0.2

    :goto_0
    mul-double/2addr v0, v5

    add-double/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$302(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;D)D

    .line 209
    :goto_1
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->prevPing:D

    .line 210
    iget p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->counter:I

    int-to-double p1, p1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$400(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getCount_ping()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p1, v0

    .line 211
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p1, v5

    if-lez v7, :cond_3

    goto :goto_2

    :cond_3
    move-wide v5, p1

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onPingJitterUpdate(DDD)V

    .line 212
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$500(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
