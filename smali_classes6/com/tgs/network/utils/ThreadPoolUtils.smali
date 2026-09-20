.class public Lcom/tgs/network/utils/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static volatile instance:Lcom/tgs/network/utils/ThreadPoolUtils;


# instance fields
.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tgs/network/utils/ThreadPoolUtils;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/tgs/network/utils/ThreadPoolUtils;->CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 21
    sput v0, Lcom/tgs/network/utils/ThreadPoolUtils;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tgs/network/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/tgs/network/utils/ThreadPoolUtils;->CORE_POOL_SIZE:I

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tgs/network/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/tgs/network/utils/ThreadPoolUtils;
    .locals 2

    .line 36
    sget-object v0, Lcom/tgs/network/utils/ThreadPoolUtils;->instance:Lcom/tgs/network/utils/ThreadPoolUtils;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/tgs/network/utils/ThreadPoolUtils;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/tgs/network/utils/ThreadPoolUtils;->instance:Lcom/tgs/network/utils/ThreadPoolUtils;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/tgs/network/utils/ThreadPoolUtils;

    invoke-direct {v1}, Lcom/tgs/network/utils/ThreadPoolUtils;-><init>()V

    sput-object v1, Lcom/tgs/network/utils/ThreadPoolUtils;->instance:Lcom/tgs/network/utils/ThreadPoolUtils;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/tgs/network/utils/ThreadPoolUtils;->instance:Lcom/tgs/network/utils/ThreadPoolUtils;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Fail execute thread runnable while runnable null."

    .line 54
    invoke-static {p1}, Lcom/tgs/network/utils/Debug;->D(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tgs/network/utils/ThreadPoolUtils;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
