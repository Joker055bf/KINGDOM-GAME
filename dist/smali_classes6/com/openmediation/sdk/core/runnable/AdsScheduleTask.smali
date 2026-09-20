.class public Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

.field private delay:I


# direct methods
.method public constructor <init>(Lcom/openmediation/sdk/core/AbstractInventoryAds;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    iput p2, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->delay:I

    return-void
.end method

.method private execLoad(II)V
    .locals 2

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute adsScheduleTask delay : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fail count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->setInterval(I)V

    int-to-long p1, p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "can\'t execute adsScheduleTask delay : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "execute adsScheduleTask"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getAllLoadFailedCount()I

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getRfs()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :goto_1
    iput v1, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->delay:I

    :cond_4
    iget v1, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->delay:I

    invoke-direct {p0, v1, v0}, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->execLoad(II)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->adsManager:Lcom/openmediation/sdk/core/AbstractInventoryAds;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/AbstractInventoryAds;->getDefaultInterval()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/openmediation/sdk/core/runnable/AdsScheduleTask;->execLoad(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
