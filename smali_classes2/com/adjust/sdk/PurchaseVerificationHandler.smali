.class public Lcom/adjust/sdk/PurchaseVerificationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IPurchaseVerificationHandler;


# static fields
.field private static final MILLISECONDS_TO_SECONDS_DIVISOR:D = 1000.0

.field private static final SCHEDULED_EXECUTOR_SOURCE:Ljava/lang/String; = "PurchaseVerificationHandler"


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

.field private isSendingPurchaseVerificationPackage:Z

.field private lastPackageRetryInMilli:J

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/PurchaseVerificationHandler;->init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V

    .line 15
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    new-instance p1, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    const-string p2, "PurchaseVerificationHandler"

    invoke-direct {p1, p2}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/PurchaseVerificationHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendPurchaseVerificationPackageI(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackageI()V

    return-void
.end method

.method public static synthetic access$202(Lcom/adjust/sdk/PurchaseVerificationHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    return-void
.end method

.method private sendNextPurchaseVerificationPackage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/PurchaseVerificationHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/PurchaseVerificationHandler$2;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendNextPurchaseVerificationPackageI()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 2
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "purchase_verification request won\'t be sent for GDPR forgotten user"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PurchaseVerificationHandler is paused"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PurchaseVerificationHandler is is already sending a package"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->waitTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 24
    new-instance v0, Lcom/adjust/sdk/PurchaseVerificationHandler$3;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/PurchaseVerificationHandler$3;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    .line 31
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    invoke-interface {v1, v0, v2, v3}, Lcom/adjust/sdk/scheduler/ThreadScheduler;->schedule(Ljava/lang/Runnable;J)V

    return-void

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 38
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendPurchaseVerificationPackageSync(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private sendPurchaseVerificationPackageI(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Added purchase_verification %d"

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "%s"

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    return-void
.end method

.method private sendPurchaseVerificationPackageSync(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 2
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/network/IActivityPackageSender;->sendActivityPackageSync(Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;)Lcom/adjust/sdk/ResponseData;

    move-result-object p1

    .line 6
    instance-of v1, p1, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 13
    move-object v2, p1

    check-cast v2, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    .line 16
    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 17
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "Could not get purchase_verification JSON response with message: %s"

    invoke-interface {p1, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 26
    :cond_2
    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->trackingState:Lcom/adjust/sdk/TrackingState;

    sget-object v5, Lcom/adjust/sdk/TrackingState;->OPTED_OUT:Lcom/adjust/sdk/TrackingState;

    if-ne v3, v5, :cond_3

    .line 27
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->gotOptOutResponse()V

    return-void

    .line 32
    :cond_3
    iget-boolean v3, v2, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_5

    .line 33
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->retryIn:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_4

    .line 34
    iget-object p1, p1, Lcom/adjust/sdk/ResponseData;->retryIn:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 35
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Retrying purchase_verification package with retry in %d ms"

    .line 37
    invoke-interface {p1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    return-void

    .line 46
    :cond_5
    iput-wide v5, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 51
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    :cond_6
    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    .line 58
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    return-void
.end method

.method private waitTime()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v0, "Waiting for %d ms before retrying purchase_verification with retry_in"

    .line 4
    invoke-interface {v2, v0, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    return-wide v0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p3, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    return-void
.end method

.method public pauseSending()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    return-void
.end method

.method public resumeSending()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    return-void
.end method

.method public sendPurchaseVerificationPackage(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    new-instance v1, Lcom/adjust/sdk/PurchaseVerificationHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/PurchaseVerificationHandler$1;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;Lcom/adjust/sdk/ActivityPackage;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public teardown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PurchaseVerificationHandler teardown"

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->teardown()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 18
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    return-void
.end method
