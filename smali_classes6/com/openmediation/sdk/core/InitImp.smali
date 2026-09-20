.class public final Lcom/openmediation/sdk/core/InitImp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;,
        Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;,
        Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;,
        Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;
    }
.end annotation


# static fields
.field private static final hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final isInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final reInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInitLog:Lcom/openmediation/sdk/inspector/logs/InitLog;

.field private static sInitStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/core/InitImp;->isInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openmediation/sdk/core/InitImp;->reInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InitImp;->getIdAndRequestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InitImp;->requestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->isInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->reInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(ILcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InitImp;->initCompleteReport(ILcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method static synthetic access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->sInitLog:Lcom/openmediation/sdk/inspector/logs/InitLog;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InitImp;->callbackInitErrorOnUIThread(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->initUtil()V

    return-void
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;ZLcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/openmediation/sdk/core/InitImp;->parseConfigData(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;ZLcom/openmediation/sdk/InitCallback;)V

    return-void
.end method

.method private static callbackInitErrorOnUIThread(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InitImp callbackInitError has init callback"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;-><init>(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static callbackInitSuccessOnUIThread(Lcom/openmediation/sdk/InitCallback;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "Init Success"

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InitImp callbackInitSuccess has init callback"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;-><init>(Lcom/openmediation/sdk/InitCallback;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static doAfterGetConfig(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Configurations;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getD()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->enableDebug(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getD()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/InspectorManager;->setEnable(Z)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AFManager;->checkAfDataStatus()V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->updateReportSettings(Lcom/openmediation/sdk/utils/model/Configurations;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->uploadException(Lcom/openmediation/sdk/utils/model/Configurations;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->startTask(Lcom/openmediation/sdk/utils/model/Configurations;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "doAfterGetConfig  exception : "

    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static getIdAndRequestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/core/InitImp$2;

    invoke-direct {v1, p0, p1}, Lcom/openmediation/sdk/core/InitImp$2;-><init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient;->getGaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$OnGetGaidListener;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/inspector/logs/InitLog;Lcom/openmediation/sdk/InitCallback;)V
    .locals 3

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->isInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/openmediation/sdk/core/InitImp;->hasInitCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/openmediation/sdk/core/InitImp;->sInitStart:J

    sput-object p2, Lcom/openmediation/sdk/core/InitImp;->sInitLog:Lcom/openmediation/sdk/inspector/logs/InitLog;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->enableDebug(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->init()V

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->init()V

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->setActivity(Landroid/app/Activity;)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    sget-object p2, Lcom/openmediation/sdk/core/InitImp;->reInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x69

    goto :goto_0

    :cond_2
    const/16 p2, 0x64

    :goto_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(I)V

    new-instance p0, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/openmediation/sdk/core/InitImp$InitAsyncRunnable;-><init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/core/InitImp$1;)V

    invoke-static {p0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initCompleteReport(ILcom/openmediation/sdk/utils/error/Error;)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-wide v1, Lcom/openmediation/sdk/core/InitImp;->sInitStart:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/openmediation/sdk/core/InitImp;->sInitStart:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method private static initUtil()V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->initAdapter()V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static isInit()Z
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static isInitRunning()Z
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->isInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static parseConfigData(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;ZLcom/openmediation/sdk/InitCallback;)V
    .locals 3

    invoke-static {p1}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->parseFormServerResponse(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Configurations;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Om init request config success"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/bid/BidManager;->initBid(Landroid/content/Context;Lcom/openmediation/sdk/utils/model/Configurations;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "initBid  exception : "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p3}, Lcom/openmediation/sdk/core/InitImp;->callbackInitSuccessOnUIThread(Lcom/openmediation/sdk/InitCallback;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/openmediation/sdk/core/InitImp;->doAfterGetConfig(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Configurations;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Lcom/openmediation/sdk/utils/error/Error;

    const-string v0, "Init Error: Response data parse error"

    const/16 v1, 0xc

    const/16 v2, 0x85

    invoke-direct {p1, v2, v0, v1}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Om init format config is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/openmediation/sdk/core/InitImp;->callbackInitErrorOnUIThread(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const-string p1, "InitImp, read cache init data, then read server data"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/openmediation/sdk/core/InitImp;->getIdAndRequestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    :cond_2
    return-void
.end method

.method static reInitSDK(Lcom/openmediation/sdk/InitCallback;)V
    .locals 5

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "AppKey"

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppChannel"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v2

    const-string v3, "InitHost"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/openmediation/sdk/InitConfiguration$Builder;

    invoke-direct {v3}, Lcom/openmediation/sdk/InitConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->channel(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/InitConfiguration$Builder;->initHost(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/InitConfiguration$Builder;->build()Lcom/openmediation/sdk/InitConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getInstance()Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/lifecycle/ActLifecycle;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/openmediation/sdk/inspector/logs/InitLog;

    invoke-direct {v2}, Lcom/openmediation/sdk/inspector/logs/InitLog;-><init>()V

    new-instance v3, Lcom/openmediation/sdk/core/InitImp$1;

    invoke-direct {v3, p0}, Lcom/openmediation/sdk/core/InitImp$1;-><init>(Lcom/openmediation/sdk/InitCallback;)V

    invoke-static {v1, v0, v2, v3}, Lcom/openmediation/sdk/core/InitImp;->init(Landroid/app/Activity;Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/inspector/logs/InitLog;Lcom/openmediation/sdk/InitCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "SDK Not init"

    const/4 v1, 0x3

    const/16 v2, 0xd3

    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/openmediation/sdk/InitCallback;->onError(Lcom/openmediation/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method

.method private static requestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 3

    :try_start_0
    const-string v0, "Om init request config"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openmediation/sdk/InitConfiguration;->getInitHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;

    invoke-direct {v2, p0, p1}, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;-><init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "requestConfig  exception : "

    invoke-static {v0, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init Unknown Internal Error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x97

    const/16 v2, 0xa

    invoke-direct {v0, v1, p0, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", requestConfig"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InitImp;->callbackInitErrorOnUIThread(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method

.method public static startReInitSDK(Lcom/openmediation/sdk/InitCallback;)V
    .locals 2

    sget-object v0, Lcom/openmediation/sdk/core/InitImp;->reInitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/openmediation/sdk/core/InitImp;->reInitSDK(Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method
