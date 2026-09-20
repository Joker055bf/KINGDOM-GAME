.class public Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "NetSpeedDiagnose.java"


# instance fields
.field private checkOptionName:Ljava/lang/String;

.field private mSpeedTest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->launchTest(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->mSpeedTest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->mSpeedTest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    return-void
.end method

.method private doExecute(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->mSpeedTest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    :cond_0
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->mSpeedTest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    .line 47
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;-><init>(Lorg/json/JSONObject;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->setSpeedtestConfig(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;)V

    .line 50
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    const-string v2, "results/telemetry.php"

    const-string v3, "results/?id=%s"

    const-string v4, "full"

    const-string v5, "//librespeed.org"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->setTelemetryConfig(Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)V

    const/4 v1, 0x1

    const/16 v2, 0x2d

    const-string v3, "\"//librespeed.org/backend-servers/servers.php\""

    .line 56
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->loadServerList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Fail diagnose net speed check while load server list failed."

    .line 57
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const-string v1, "Failed to load server list."

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 59
    invoke-interface {p2, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    :cond_1
    const-string v1, "Selecting diagnose net speed check server."

    .line 75
    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)V

    const/4 p1, 0x5

    invoke-direct {p0, v0, p1, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    return-void
.end method

.method private launchTest(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;",
            ">;",
            "Lcom/tgs/aics/diagnose/Result;",
            "Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "Fail diagnose net speed check while speed test null."

    .line 108
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string p2, "Speed test null."

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 110
    invoke-interface {p4, p3}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 112
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 119
    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->setSelectedServer(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    const-string p2, "Doing diagnose net speed check."

    .line 120
    invoke-static {p2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p3, p2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    .line 122
    new-instance p2, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->start(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Fail diagnose net speed check while NONE server available."

    .line 113
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string p2, "NONE server available."

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 115
    invoke-interface {p4, p3}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 105
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fail diagnose net speed check launch test while onUpdate or result null."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    return-void
.end method

.method private selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;->onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    return-void

    :cond_1
    if-gtz p2, :cond_2

    .line 160
    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;->onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    return-void

    .line 163
    :cond_2
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnose;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getIntendTime()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->checkOptionName:Ljava/lang/String;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->checkOptionName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getTotal()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onExecute$0$com-tgs-aics-diagnose-impl-speedtest-NetSpeedDiagnose(Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 4

    .line 30
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const-string v1, "netTest"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->doExecute(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception net speed diagnose.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    :goto_0
    return-void
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    const-string p2, "tgs_aics_diagnose_network"

    .line 28
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->checkOptionName:Ljava/lang/String;

    .line 29
    new-instance p1, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p3, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    return-void
.end method
