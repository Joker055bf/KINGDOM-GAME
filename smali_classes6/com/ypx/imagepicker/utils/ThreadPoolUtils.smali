.class public Lcom/ypx/imagepicker/utils/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static volatile instance:Lcom/ypx/imagepicker/utils/ThreadPoolUtils;


# instance fields
.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 18
    sput v0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->CORE_POOL_SIZE:I

    sget v3, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;
    .locals 2

    .line 32
    sget-object v0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->instance:Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->instance:Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    invoke-direct {v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;-><init>()V

    sput-object v1, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->instance:Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->instance:Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    return-object v0
.end method

.method static synthetic lambda$execute$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 59
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadPool task failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "aics.imagepicker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ypx/imagepicker/utils/ThreadPoolUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadPool exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aics.imagepicker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
