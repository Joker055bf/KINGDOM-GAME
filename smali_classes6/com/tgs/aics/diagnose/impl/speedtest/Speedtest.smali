.class Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;
.super Ljava/lang/Object;
.source "Speedtest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerListLoader;,
        Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;,
        Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;
    }
.end annotation


# instance fields
.field private config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

.field private mutex:Ljava/lang/Object;

.field private originalExtra:Ljava/lang/String;

.field private selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

.field private servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;",
            ">;"
        }
    .end annotation
.end field

.field private ss:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

.field private st:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

.field private state:I

.field private telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->servers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 16
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    .line 17
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 20
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    const-string v1, ""

    .line 22
    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->originalExtra:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->ss:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    .line 162
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->st:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    return-void
.end method

.method static synthetic access$002(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    return p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->prepareShareURL(Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareShareURL(Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->getShareURL()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "/"

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "//"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->ss:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->stopASAP()V

    .line 236
    :cond_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->st:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->abort()V

    :cond_1
    const/4 v1, 0x5

    .line 237
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTestPoint(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 47
    :cond_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    if-gt v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->servers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add test points at this moment"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTestPoint(Lorg/json/JSONObject;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-direct {v1, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->addTestPoint(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTestPoints(Lorg/json/JSONArray;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    .line 68
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->addTestPoint(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addTestPoints([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->addTestPoint(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTestPoints()[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->servers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadServerList(Ljava/lang/String;)Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 117
    :cond_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    if-gt v1, v2, :cond_2

    .line 118
    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerListLoader;->loadServerList(Ljava/lang/String;)[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->addTestPoints([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    .line 121
    monitor-exit v0

    return v2

    .line 122
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add test points at this moment"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-gt v1, v2, :cond_0

    .line 138
    iput v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 139
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->getTestPoints()[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getPing_connectTimeout()I

    move-result v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->ss:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    .line 149
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->start()V

    .line 150
    monitor-exit v0

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Server already selected"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Server selection is in progress"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "No test points added"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSelectedServer(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    const/4 p1, 0x3

    .line 158
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    .line 159
    monitor-exit v0

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "t is null"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Server selection is in progress"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSpeedtestConfig(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->clone()Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    .line 32
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getTelemetry_extra()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->originalExtra:Ljava/lang/String;

    .line 34
    :cond_0
    monitor-exit v0

    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change config at this moment"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTelemetryConfig(Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->clone()Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    .line 41
    monitor-exit v0

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change config at this moment"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;)V
    .locals 9

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 167
    iput v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->originalExtra:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "extra"

    .line 171
    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->originalExtra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "server"

    .line 172
    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->setTelemetry_extra(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :catchall_0
    :try_start_2
    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectedServer:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->config:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    iget-object v7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->telemetryConfig:Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;)V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->st:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    .line 220
    monitor-exit v0

    return-void

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Test already running"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Server hasn\'t been selected yet"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 220
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
