.class public Lcom/adjust/sdk/AttributionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IAttributionHandler;
.implements Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;


# static fields
.field private static final ATTRIBUTION_TIMER_NAME:Ljava/lang/String; = "Attribution timer"


# instance fields
.field private activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/adjust/sdk/IActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

.field private lastInitiatedBy:Ljava/lang/String;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private paused:Z

.field private scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

.field private timer:Lcom/adjust/sdk/scheduler/TimerOnce;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 3
    new-instance v0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    const-string v1, "AttributionHandler"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 4
    new-instance v0, Lcom/adjust/sdk/scheduler/TimerOnce;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AttributionHandler$1;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    const-string v2, "Attribution timer"

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/scheduler/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/scheduler/TimerOnce;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/AttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/AttributionHandler;->sendAttributionRequest()V

    return-void
.end method

.method public static synthetic access$102(Lcom/adjust/sdk/AttributionHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler;->lastInitiatedBy:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/adjust/sdk/AttributionHandler;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V

    return-void
.end method

.method public static synthetic access$300(Lcom/adjust/sdk/AttributionHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkSessionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkSdkClickResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/AttributionHandler;->sendAttributionRequestI()V

    return-void
.end method

.method private buildAndGetAttributionPackage(Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 3
    new-instance v8, Lcom/adjust/sdk/PackageBuilder;

    .line 4
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getDeviceInfo()Lcom/adjust/sdk/DeviceInfo;

    move-result-object v2

    .line 6
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v3

    .line 7
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getGlobalParameters()Lcom/adjust/sdk/GlobalParameters;

    move-result-object v4

    .line 8
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getFirstSessionDelayManager()Lcom/adjust/sdk/FirstSessionDelayManager;

    move-result-object v5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 10
    iput-object p1, v8, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 12
    iget-object p1, p0, Lcom/adjust/sdk/AttributionHandler;->lastInitiatedBy:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lcom/adjust/sdk/PackageBuilder;->buildAttributionPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->lastInitiatedBy:Ljava/lang/String;

    return-object p1
.end method

.method private checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p2, Lcom/adjust/sdk/ResponseData;->askIn:Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    const-string p1, "backend"

    .line 8
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler;->lastInitiatedBy:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 13
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    return-void
.end method

.method private checkAttributionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AttributionHandler;->checkDeeplinkInAttributionResponseI(Lcom/adjust/sdk/AttributionResponseData;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method private checkDeeplinkInAttributionResponseI(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "attribution"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "deeplink"

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 13
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/adjust/sdk/AttributionResponseData;->deeplink:Landroid/net/Uri;

    return-void
.end method

.method private checkDeeplinkInSessionResponseI(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "deeplink"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 9
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/adjust/sdk/SessionResponseData;->deeplink:Landroid/net/Uri;

    return-void
.end method

.method private checkSdkClickResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->launchSdkClickResponseTasks(Lcom/adjust/sdk/SdkClickResponseData;)V

    return-void
.end method

.method private checkSessionResponseI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionI(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AttributionHandler;->checkDeeplinkInSessionResponseI(Lcom/adjust/sdk/SessionResponseData;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method private getAttributionI(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/scheduler/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerOnce;->getFireIn()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 7
    sget-object v2, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Waiting to query attribution in %s seconds"

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/scheduler/TimerOnce;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/scheduler/TimerOnce;->startIn(J)V

    return-void
.end method

.method private sendAttributionRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$6;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AttributionHandler$6;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendAttributionRequestI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Attribution handler is paused"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getInternalState()Lcom/adjust/sdk/ActivityHandler$InternalState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AttributionHandler;->buildAndGetAttributionPackage(Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v1, "%s"

    invoke-interface {v2, v1, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Lcom/adjust/sdk/network/IActivityPackageSender;->sendActivityPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;)V

    return-void
.end method


# virtual methods
.method public checkAttributionResponse(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$5;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkSdkClickResponse(Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$4;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SdkClickResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$3;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAttribution()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AttributionHandler$2;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    xor-int/lit8 p1, p2, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 3
    iput-object p3, p0, Lcom/adjust/sdk/AttributionHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    return-void
.end method

.method public onResponseDataCallback(Lcom/adjust/sdk/ResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$7;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$7;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/ResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pauseSending()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    return-void
.end method

.method public resumeSending()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    return-void
.end method

.method public teardown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AttributionHandler teardown"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/scheduler/TimerOnce;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerOnce;->teardown()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->teardown()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/scheduler/TimerOnce;

    .line 14
    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 15
    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 16
    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
