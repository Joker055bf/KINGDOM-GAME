.class public Lcom/crosspromotion/sdk/utils/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;,
        Lcom/crosspromotion/sdk/utils/DownloadManager$DmHolder;
    }
.end annotation


# instance fields
.field private mActiveTask:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTask:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mActiveTask:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mPendingTask:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/utils/DownloadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/crosspromotion/sdk/utils/DownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/DownloadManager;->addToPendingTask(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V

    return-void
.end method

.method static synthetic access$300(Lcom/crosspromotion/sdk/utils/DownloadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mActiveTask:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/DownloadManager;->callbackPendingTaskFinished(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private addToPendingTask(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
    .locals 3

    const-string v0, "DownloadManager downloadFile addToPendingTask onResDownloadedList.size()  = "

    const-class v1, Lcom/crosspromotion/sdk/utils/DownloadManager;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mPendingTask:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mPendingTask:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private callbackPendingTaskFinished(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const-class v0, Lcom/crosspromotion/sdk/utils/DownloadManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mPendingTask:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;->onCompleted(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/crosspromotion/sdk/utils/DownloadManager;->mPendingTask:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/crosspromotion/sdk/utils/DownloadManager;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/utils/DownloadManager$DmHolder;->access$100()Lcom/crosspromotion/sdk/utils/DownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized downloadFile(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v1}, Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;->onCompleted(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/crosspromotion/sdk/utils/Cache;->existCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;->onCompleted(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance v0, Lcom/crosspromotion/sdk/utils/DownloadManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crosspromotion/sdk/utils/DownloadManager$1;-><init>(Lcom/crosspromotion/sdk/utils/DownloadManager;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
