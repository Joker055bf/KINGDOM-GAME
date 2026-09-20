.class public Lcom/openmediation/sdk/core/runnable/InitScheduleTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startTask(Lcom/openmediation/sdk/utils/model/Configurations;)V
    .locals 3

    sget-object v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->remove(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Configurations;->getRi()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Configurations;->getRi()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute Re Init SDK Delay : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "Execute Re Init SDK Task"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask$1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/runnable/InitScheduleTask$1;-><init>(Lcom/openmediation/sdk/core/runnable/InitScheduleTask;)V

    invoke-static {v0}, Lcom/openmediation/sdk/core/InitImp;->startReInitSDK(Lcom/openmediation/sdk/InitCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
