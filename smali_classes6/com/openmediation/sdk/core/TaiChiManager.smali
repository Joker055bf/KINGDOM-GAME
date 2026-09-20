.class public Lcom/openmediation/sdk/core/TaiChiManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/openmediation/sdk/core/TaiChiManager;->resetUarData()V

    return-void
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/utils/model/Configurations;)I
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/core/TaiChiManager;->getTopXRevenueLevel(Lcom/openmediation/sdk/utils/model/Configurations;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/TaiChiManager;->getLastTopXLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/TaiChiManager;->uploadTopXData(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/core/TaiChiManager;->setCurrTopXLevel(I)V

    return-void
.end method

.method private static getLastTopXLevel()I
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "AppKey"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_topx_level"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static getTopXRevenueLevel(Lcom/openmediation/sdk/utils/model/Configurations;)I
    .locals 6

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->getUserRevenue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TaiChiManager : User Ad Revenue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Configurations;->getTopXRevenue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getUarEventId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x276

    return p0

    :cond_1
    const/16 p0, 0x277

    return p0

    :cond_2
    const/16 p0, 0x278

    return p0

    :cond_3
    const/16 p0, 0x279

    return p0

    :cond_4
    const/16 p0, 0x27a

    return p0
.end method

.method public static reportUserRevenue(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/core/TaiChiManager$1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/TaiChiManager$1;-><init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static resetUarData()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppKey"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_user_revenue_date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->clearUarData()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/openmediation/sdk/core/TaiChiManager;->setCurrTopXLevel(I)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static setCurrTopXLevel(I)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "AppKey"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_topx_level"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static uploadTopXData(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/FirebaseUtil;->reportTopXEvent(I)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "price"

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->getUserRevenue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p1}, Lcom/openmediation/sdk/core/TaiChiManager;->getUarEventId(I)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
