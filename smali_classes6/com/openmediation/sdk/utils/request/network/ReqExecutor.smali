.class Lcom/openmediation/sdk/utils/request/network/ReqExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final CPU_COUNT:I

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->CPU_COUNT:I

    new-instance v8, Lcom/openmediation/sdk/utils/request/network/ReqExecutor$1;

    invoke-direct {v8}, Lcom/openmediation/sdk/utils/request/network/ReqExecutor$1;-><init>()V

    sput-object v8, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v0, v2

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const-wide/16 v4, 0x3c

    move-object v1, v9

    move v2, v3

    move v3, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/openmediation/sdk/utils/request/network/ReqExecutor$2;

    invoke-direct {v1}, Lcom/openmediation/sdk/utils/request/network/ReqExecutor$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/ReqExecutor;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
