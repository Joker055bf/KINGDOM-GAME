.class Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/InitImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitAsyncRunnable"
.end annotation


# instance fields
.field private initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

.field private mCallback:Lcom/openmediation/sdk/InitCallback;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iput-object p2, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/core/InitImp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;-><init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method private saveInitConfig()V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v1}, Lcom/openmediation/sdk/InitConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppKey"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v0}, Lcom/openmediation/sdk/InitConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppChannel"

    invoke-virtual {v1, v2, v0}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v0}, Lcom/openmediation/sdk/InitConfiguration;->getInitHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v1}, Lcom/openmediation/sdk/InitConfiguration;->getInitHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InitHost"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v1}, Lcom/openmediation/sdk/InitConfiguration;->getCacheAdTypes()Ljava/util/List;

    move-result-object v1

    const-string v2, "cache_ad_type"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v1}, Lcom/openmediation/sdk/InitConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/SdkUtil;->banRun(Landroid/content/Context;Ljava/lang/String;)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v1, v0}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$800()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->saveInitConfig()V

    invoke-static {}, Lcom/openmediation/sdk/core/OmCacheManager;->getInstance()Lcom/openmediation/sdk/core/OmCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/OmCacheManager;->getInitData(Lcom/openmediation/sdk/InitConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iget-object v2, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Lcom/openmediation/sdk/core/InitImp;->access$900(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;ZLcom/openmediation/sdk/InitCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/InitImp;->access$1000(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "initOnAsyncThread  exception : "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init Unknown Internal Error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x97

    const/16 v3, 0xa

    invoke-direct {v1, v2, v0, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", initOnAsyncThread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method
