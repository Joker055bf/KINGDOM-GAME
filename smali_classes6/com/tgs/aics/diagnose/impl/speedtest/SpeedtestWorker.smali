.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;
.super Ljava/lang/Thread;
.source "SpeedtestWorker.java"


# instance fields
.field private backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

.field private config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

.field private dl:D

.field private dlCalled:Z

.field private getIPCalled:Z

.field private ipIsp:Ljava/lang/String;

.field private jitter:D

.field private log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

.field private ping:D

.field private pingCalled:Z

.field private stopASAP:Z

.field private telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

.field private ul:D

.field private ulCalled:Z


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 12
    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D

    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ipIsp:Ljava/lang/String;

    .line 14
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    .line 43
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->getIPCalled:Z

    .line 78
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dlCalled:Z

    .line 130
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ulCalled:Z

    .line 182
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->pingCalled:Z

    .line 17
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    if-nez p2, :cond_0

    .line 18
    new-instance p2, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-direct {p2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    if-nez p3, :cond_1

    .line 19
    new-instance p3, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-direct {p3}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    .line 20
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ipIsp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/Logger;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;D)D
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;D)D
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    return p0
.end method

.method private dlTest()V
    .locals 26

    move-object/from16 v13, p0

    .line 80
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dlCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dlCalled:Z

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v0, 0x0

    .line 82
    invoke-virtual {v13, v0, v1, v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onDownloadUpdate(DD)V

    .line 83
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_parallelStreams()I

    move-result v11

    new-array v12, v11, [Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    const/16 v17, 0x0

    move/from16 v10, v17

    :goto_0
    if-ge v10, v11, :cond_1

    .line 85
    new-instance v18, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$2;

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getServer()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getDlURL()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_ckSize()I

    move-result v4

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getErrorHandlingMode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_connectTimeout()I

    move-result v6

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_soTimeout()I

    move-result v7

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_recvBuffer()I

    move-result v8

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_sendBuffer()I

    move-result v9

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-object/from16 v0, v18

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v10

    move-object/from16 v10, v19

    move v14, v11

    move-object/from16 v21, v12

    move-wide v11, v15

    invoke-direct/range {v0 .. v12}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$2;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;J)V

    aput-object v18, v21, v20

    .line 93
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_streamDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    add-int/lit8 v10, v20, 0x1

    move v11, v14

    move-object/from16 v12, v21

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move v14, v11

    move-object/from16 v21, v12

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move/from16 v4, v17

    const-wide/16 v5, 0x0

    .line 98
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    if-nez v4, :cond_3

    .line 99
    iget-object v11, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v11}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getDl_graceTime()D

    move-result-wide v11

    mul-double/2addr v11, v9

    cmpl-double v11, v7, v11

    if-ltz v11, :cond_3

    move/from16 v0, v17

    :goto_2
    if-ge v0, v14, :cond_2

    .line 101
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->resetDownloadCounter()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    goto :goto_1

    .line 105
    :cond_3
    iget-boolean v11, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-nez v11, :cond_c

    long-to-double v11, v5

    add-double v22, v7, v11

    iget-object v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_dl_max()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    cmpl-double v2, v22, v2

    if-ltz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_b

    move/from16 v2, v17

    const-wide/16 v9, 0x0

    :goto_3
    if-ge v2, v14, :cond_5

    .line 112
    aget-object v3, v21, v2

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->getTotalDownloaded()J

    move-result-wide v24

    add-long v9, v9, v24

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    long-to-double v2, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpg-double v18, v7, v9

    if-gez v18, :cond_6

    goto :goto_4

    :cond_6
    move-wide v9, v7

    :goto_4
    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v22

    div-double/2addr v2, v9

    .line 114
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_auto()Z

    move-result v9

    if-eqz v9, :cond_8

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v5, v2

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v5, v9

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    cmpl-double v18, v5, v9

    if-lez v18, :cond_7

    move-wide v5, v9

    :cond_7
    add-double/2addr v11, v5

    double-to-long v5, v11

    :cond_8
    long-to-double v9, v5

    add-double/2addr v7, v9

    .line 118
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_dl_max()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-double v9, v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    mul-double/2addr v2, v9

    .line 119
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getOverheadCompensationFactor()D

    move-result-wide v9

    mul-double/2addr v2, v9

    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUseMebibits()Z

    move-result v9

    if-eqz v9, :cond_9

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    goto :goto_5

    :cond_9
    const-wide v9, 0x412e848000000000L    # 1000000.0

    :goto_5
    div-double/2addr v2, v9

    .line 120
    iput-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v7, v9

    if-lez v11, :cond_a

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 121
    :cond_a
    invoke-virtual {v13, v2, v3, v7, v8}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onDownloadUpdate(DD)V

    :cond_b
    const-wide/16 v2, 0x64

    .line 123
    invoke-static {v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    goto/16 :goto_1

    :cond_c
    :goto_6
    move/from16 v0, v17

    :goto_7
    if-ge v0, v14, :cond_d

    .line 106
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->stopASAP()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v17

    :goto_8
    if-ge v0, v14, :cond_e

    .line 107
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->join()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 125
    :cond_e
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v0, :cond_f

    return-void

    .line 126
    :cond_f
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 127
    iget-wide v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onDownloadUpdate(DD)V

    return-void
.end method

.method private getIP()V
    .locals 10

    .line 45
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->getIPCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->getIPCalled:Z

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 49
    :try_start_0
    new-instance v6, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getServer()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_connectTimeout()I

    move-result v2

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_soTimeout()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;-><init>(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getGetIpURL()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getGetIP_isp()Z

    move-result v5

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getGetIP_distance()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    move-object v2, p0

    move-object v3, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(JI)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getErrorHandlingMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->abort()V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onCriticalFailure(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private pingTest()V
    .locals 17

    move-object/from16 v13, p0

    .line 184
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->pingCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->pingCalled:Z

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onPingJitterUpdate(DDD)V

    .line 187
    new-instance v16, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getServer()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getPingURL()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getCount_ping()I

    move-result v4

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getErrorHandlingMode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_connectTimeout()I

    move-result v6

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_soTimeout()I

    move-result v7

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_recvBuffer()I

    move-result v8

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_sendBuffer()I

    move-result v9

    iget-object v10, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v11, v14

    invoke-direct/range {v0 .. v12}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$4;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;J)V

    .line 219
    invoke-virtual/range {v16 .. v16}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->join()V

    .line 220
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v0, :cond_1

    return-void

    .line 221
    :cond_1
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 222
    iget-wide v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    iget-wide v3, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onPingJitterUpdate(DDD)V

    return-void
.end method

.method private sendTelemetry()V
    .locals 20

    move-object/from16 v13, p0

    .line 226
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getTelemetryLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getTelemetryLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 229
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;-><init>(Ljava/lang/String;IIII)V

    .line 230
    new-instance v14, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$5;

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getTelemetryLevel()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ipIsp:Ljava/lang/String;

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTelemetry_extra()Ljava/lang/String;

    move-result-object v7

    iget-wide v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v10, "%.2f"

    const-string v11, ""

    if-nez v1, :cond_2

    move-object v15, v4

    move-object v12, v11

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v12, v3, [Ljava/lang/Object;

    move-object v15, v4

    iget-wide v3, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dl:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v12, v2

    invoke-static {v1, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_0
    iget-wide v3, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    cmpl-double v1, v3, v8

    if-nez v1, :cond_3

    move-object v9, v11

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v8, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    :goto_1
    iget-wide v3, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    cmpl-double v1, v3, v17

    if-nez v1, :cond_4

    move-object/from16 v19, v11

    goto :goto_2

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ping:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v1, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_2
    iget-wide v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->jitter:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_3
    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->getLog()Ljava/lang/String;

    move-result-object v16

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v15

    move-object v8, v12

    move-object/from16 v10, v19

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$5;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v14}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 245
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send telemetry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_4
    return-void
.end method

.method private ulTest()V
    .locals 26

    move-object/from16 v13, p0

    .line 132
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ulCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ulCalled:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {v13, v0, v1, v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onUploadUpdate(DD)V

    .line 135
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_parallelStreams()I

    move-result v11

    new-array v12, v11, [Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    const/16 v17, 0x0

    move/from16 v10, v17

    :goto_0
    if-ge v10, v11, :cond_1

    .line 137
    new-instance v18, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getServer()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->backend:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getUlURL()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_ckSize()I

    move-result v4

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getErrorHandlingMode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_connectTimeout()I

    move-result v6

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_soTimeout()I

    move-result v7

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_recvBuffer()I

    move-result v8

    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_sendBuffer()I

    move-result v9

    iget-object v1, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-object/from16 v0, v18

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v10

    move-object/from16 v10, v19

    move v14, v11

    move-object/from16 v21, v12

    move-wide v11, v15

    invoke-direct/range {v0 .. v12}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;J)V

    aput-object v18, v21, v20

    .line 145
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_streamDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    add-int/lit8 v10, v20, 0x1

    move v11, v14

    move-object/from16 v12, v21

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move v14, v11

    move-object/from16 v21, v12

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move/from16 v4, v17

    const-wide/16 v5, 0x0

    .line 150
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    if-nez v4, :cond_3

    .line 151
    iget-object v11, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v11}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUl_graceTime()D

    move-result-wide v11

    mul-double/2addr v11, v9

    cmpl-double v11, v7, v11

    if-ltz v11, :cond_3

    move/from16 v0, v17

    :goto_2
    if-ge v0, v14, :cond_2

    .line 153
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->resetUploadCounter()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    goto :goto_1

    .line 157
    :cond_3
    iget-boolean v11, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-nez v11, :cond_c

    long-to-double v11, v5

    add-double v22, v7, v11

    iget-object v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_ul_max()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    cmpl-double v2, v22, v2

    if-ltz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz v4, :cond_b

    move/from16 v2, v17

    const-wide/16 v9, 0x0

    :goto_3
    if-ge v2, v14, :cond_5

    .line 164
    aget-object v3, v21, v2

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->getTotalUploaded()J

    move-result-wide v24

    add-long v9, v9, v24

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    long-to-double v2, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpg-double v18, v7, v9

    if-gez v18, :cond_6

    goto :goto_4

    :cond_6
    move-wide v9, v7

    :goto_4
    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v22

    div-double/2addr v2, v9

    .line 166
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_auto()Z

    move-result v9

    if-eqz v9, :cond_8

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v5, v2

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v5, v9

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    cmpl-double v18, v5, v9

    if-lez v18, :cond_7

    move-wide v5, v9

    :cond_7
    add-double/2addr v11, v5

    double-to-long v5, v11

    :cond_8
    long-to-double v9, v5

    add-double/2addr v7, v9

    .line 170
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTime_ul_max()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-double v9, v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    mul-double/2addr v2, v9

    .line 171
    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getOverheadCompensationFactor()D

    move-result-wide v9

    mul-double/2addr v2, v9

    iget-object v9, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v9}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getUseMebibits()Z

    move-result v9

    if-eqz v9, :cond_9

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    goto :goto_5

    :cond_9
    const-wide v9, 0x412e848000000000L    # 1000000.0

    :goto_5
    div-double/2addr v2, v9

    .line 172
    iput-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v7, v9

    if-lez v11, :cond_a

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 173
    :cond_a
    invoke-virtual {v13, v2, v3, v7, v8}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onUploadUpdate(DD)V

    :cond_b
    const-wide/16 v2, 0x64

    .line 175
    invoke-static {v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    goto/16 :goto_1

    :cond_c
    :goto_6
    move/from16 v0, v17

    :goto_7
    if-ge v0, v14, :cond_d

    .line 158
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->stopASAP()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v17

    :goto_8
    if-ge v0, v14, :cond_e

    .line 159
    aget-object v1, v21, v0

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->join()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 177
    :cond_e
    iget-boolean v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v0, :cond_f

    return-void

    .line 178
    :cond_f
    iget-object v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 179
    iget-wide v0, v13, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ul:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onUploadUpdate(DD)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    const-string v1, "Manually aborted"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    return-void
.end method

.method public abstract onCriticalFailure(Ljava/lang/String;)V
.end method

.method public abstract onDownloadUpdate(DD)V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onIPInfoUpdate(Ljava/lang/String;)V
.end method

.method public abstract onPingJitterUpdate(DDD)V
.end method

.method public abstract onTestIDReceived(Ljava/lang/String;)V
.end method

.method public abstract onUploadUpdate(DD)V
.end method

.method public run()V
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    const-string v1, "Test started"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTest_order()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-char v3, v0, v2

    .line 27
    iget-boolean v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->stopASAP:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_1

    const-wide/16 v4, 0x3e8

    .line 28
    invoke-static {v4, v5}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    :cond_1
    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    .line 29
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->getIP()V

    :cond_2
    const/16 v4, 0x44

    if-ne v3, v4, :cond_3

    .line 30
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->dlTest()V

    :cond_3
    const/16 v4, 0x55

    if-ne v3, v4, :cond_4

    .line 31
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ulTest()V

    :cond_4
    const/16 v4, 0x50

    if-ne v3, v4, :cond_5

    .line 32
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->pingTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onCriticalFailure(Ljava/lang/String;)V

    .line 38
    :cond_6
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->sendTelemetry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :catchall_1
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onEnd()V

    return-void
.end method
