.class public Lcom/openmediation/sdk/ImpressionManager;
.super Ljava/lang/Object;


# static fields
.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/openmediation/sdk/ImpressionDataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/ImpressionManager;->cloneListeners()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static addListener(Lcom/openmediation/sdk/ImpressionDataListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Z)V

    const-class v0, Lcom/openmediation/sdk/ImpressionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clear()V
    .locals 2

    const-class v0, Lcom/openmediation/sdk/ImpressionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static cloneListeners()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/ImpressionDataListener;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/openmediation/sdk/ImpressionManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onInsShowSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p0

    const-string p1, "Impressions reportImpressionDataToPublisher error: instance is null"

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getShowRevenue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->addRevenue(D)V

    sget-object v0, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/ImpressionManager;->send(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    :cond_1
    return-void
.end method

.method public static removeListener(Lcom/openmediation/sdk/ImpressionDataListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/openmediation/sdk/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Z)V

    const-class v0, Lcom/openmediation/sdk/ImpressionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/ImpressionManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static send(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 4

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->auctionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/ImpressionData;->create(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)Lcom/openmediation/sdk/ImpressionData;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Ad revenue measurement is not enabled"

    const/4 p1, -0x1

    const/16 v0, 0x191

    invoke-static {v0, p0, p1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    :goto_0
    new-instance p1, Lcom/openmediation/sdk/ImpressionManager$a;

    invoke-direct {p1, v1, p0}, Lcom/openmediation/sdk/ImpressionManager$a;-><init>(Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/ImpressionData;)V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
