.class public final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;
.super Ljava/lang/Object;
.source "ChartboostMediationFullscreenAdQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationFullscreenAdQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationFullscreenAdQueue.kt\ncom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,478:1\n49#2,4:479\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationFullscreenAdQueue.kt\ncom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue\n*L\n354#1:479,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000u\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0016\u0018\u0000 L2\u00020\u0001:\u0001LB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010<\u001a\u00020=H\u0002J\u0008\u0010>\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010?\u001a\u00020=2\u0006\u0010@\u001a\u00020AH\u0002J\u0010\u0010B\u001a\u00020=2\u0006\u0010C\u001a\u00020DH\u0002J\u0006\u0010E\u001a\u00020\u001cJ\u0019\u0010F\u001a\u00020D2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010GJ\u0006\u0010H\u001a\u00020=J\u0012\u0010I\u001a\u00020=2\u0008\u0008\u0002\u0010J\u001a\u00020\u001cH\u0002J\u0006\u0010K\u001a\u00020=R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00088FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001eR\u001e\u0010#\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001eR\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u00020-X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u00100\u001a\u00020+8F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R$\u00106\u001a\u00020+2\u0006\u00105\u001a\u00020+@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00102\"\u0004\u00088\u00109R\u000e\u0010:\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
        "",
        "context",
        "Landroid/content/Context;",
        "placementName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "adQueueListener",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;",
        "getAdQueueListener",
        "()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;",
        "setAdQueueListener",
        "(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;)V",
        "getContext",
        "()Landroid/content/Context;",
        "delayFetchRateMs",
        "",
        "getDelayFetchRateMs",
        "()J",
        "fetchAdJob",
        "Lkotlinx/coroutines/Job;",
        "fullscreenAdQueueAdExpiredListener",
        "com/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;",
        "fullscreenAdsQueued",
        "",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;",
        "isPaused",
        "",
        "isPaused$Helium_release",
        "()Z",
        "setPaused$Helium_release",
        "(Z)V",
        "isQueueFetchInProgress",
        "<set-?>",
        "isRunning",
        "keywords",
        "Lcom/chartboost/heliumsdk/domain/Keywords;",
        "getKeywords",
        "()Lcom/chartboost/heliumsdk/domain/Keywords;",
        "setKeywords",
        "(Lcom/chartboost/heliumsdk/domain/Keywords;)V",
        "maxQueueSize",
        "",
        "notifyQueueToAutoStart",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;",
        "getNotifyQueueToAutoStart$Helium_release",
        "()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;",
        "numberOfAdsReady",
        "getNumberOfAdsReady",
        "()I",
        "getPlacementName",
        "()Ljava/lang/String;",
        "value",
        "queueCapacity",
        "getQueueCapacity",
        "setQueueCapacity",
        "(I)V",
        "queueId",
        "queuedAdTtlMs",
        "cancelAllJobs",
        "",
        "getNextAd",
        "handleAdFetchLoadResultException",
        "error",
        "",
        "handleAdFetchLoadResultNoAd",
        "loadResult",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;",
        "hasNextAd",
        "loadFullscreenAd",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "startAdFetchJob",
        "isDelayed",
        "stop",
        "Companion",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$Companion;

.field private static final LOG_PREFIX:Ljava/lang/String; = "The fullscreen ad queue for:"

.field private static final MINIMUM_QUEUE_SIZE:I = 0x1


# instance fields
.field private adQueueListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;

.field private final context:Landroid/content/Context;

.field private fetchAdJob:Lkotlinx/coroutines/Job;

.field private final fullscreenAdQueueAdExpiredListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;

.field private final fullscreenAdsQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;",
            ">;"
        }
    .end annotation
.end field

.field private isPaused:Z

.field private isRunning:Z

.field private keywords:Lcom/chartboost/heliumsdk/domain/Keywords;

.field private maxQueueSize:I

.field private final notifyQueueToAutoStart:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;

.field private final placementName:Ljava/lang/String;

.field private queueCapacity:I

.field private queueId:Ljava/lang/String;

.field private queuedAdTtlMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->Companion:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    .line 70
    new-instance p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;

    invoke-direct {p1, p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)V

    check-cast p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->notifyQueueToAutoStart:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;

    .line 97
    new-instance p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;

    invoke-direct {p1, p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdQueueAdExpiredListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    .line 157
    sget-object p1, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getQueueAdTtlSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queuedAdTtlMs:J

    .line 163
    sget-object p1, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getMaxQueueSize()I

    move-result p1

    iput p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->maxQueueSize:I

    const-string p1, ""

    .line 173
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueId:Ljava/lang/String;

    .line 208
    sget-object p1, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->getQueueSize(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueCapacity:I

    .line 224
    new-instance p1, Lcom/chartboost/heliumsdk/domain/Keywords;

    invoke-direct {p1}, Lcom/chartboost/heliumsdk/domain/Keywords;-><init>()V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->keywords:Lcom/chartboost/heliumsdk/domain/Keywords;

    return-void
.end method

.method public static final synthetic access$getDelayFetchRateMs(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)J
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getDelayFetchRateMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getFullscreenAdsQueued$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMaxQueueSize$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->maxQueueSize:I

    return p0
.end method

.method public static final synthetic access$getQueueId$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getQueuedAdTtlMs$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queuedAdTtlMs:J

    return-wide v0
.end method

.method public static final synthetic access$handleAdFetchLoadResultException(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Ljava/lang/Throwable;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->handleAdFetchLoadResultException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$handleAdFetchLoadResultNoAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->handleAdFetchLoadResultNoAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;)V

    return-void
.end method

.method public static final synthetic access$loadFullscreenAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->loadFullscreenAd(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setFetchAdJob$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$startAdFetchJob(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob(Z)V

    return-void
.end method

.method private final cancelAllJobs()V
    .locals 3

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    .line 417
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    .line 418
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 419
    :cond_0
    iput-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getDelayFetchRateMs()J
    .locals 4

    .line 184
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getFullscreenLoadTimeoutSeconds()I

    move-result v0

    .line 185
    new-instance v1, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    invoke-direct {v1}, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;-><init>()V

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;->getLoadRateLimitSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private final handleAdFetchLoadResultException(Ljava/lang/Throwable;)V
    .locals 5

    .line 461
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 462
    instance-of v1, p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    if-eqz v1, :cond_0

    .line 463
    check-cast p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 465
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 461
    :goto_0
    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    .line 469
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The fullscreen ad queue for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " encountered an error during ad fetch. The next fetch request has been delayed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getDelayFetchRateMs()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    .line 470
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds to prevent unnecessary requests from being made."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob(Z)V

    return-void
.end method

.method private final handleAdFetchLoadResultNoAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;)V
    .locals 7

    .line 444
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The fullscreen ad queue for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed to load ad. The next fetch request has been delayed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getDelayFetchRateMs()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    .line 445
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds to prevent unnecessary requests from being made."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to queue ad with loadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;->getLoadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 450
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final isQueueFetchInProgress()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadFullscreenAd(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->Companion:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd$Companion;

    .line 432
    new-instance v2, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdLoadRequest;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->keywords:Lcom/chartboost/heliumsdk/domain/Keywords;

    invoke-direct {v2, v1, v3}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdLoadRequest;-><init>(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/Keywords;)V

    .line 433
    iget-object v5, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueId:Ljava/lang/String;

    .line 434
    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAdController$Helium_release()Lcom/chartboost/heliumsdk/controllers/AdController;

    move-result-object v3

    .line 435
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdQueueAdExpiredListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;

    move-object v4, v1

    check-cast v4, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;

    move-object v1, p1

    move-object v6, p2

    .line 430
    invoke-virtual/range {v0 .. v6}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd$Companion;->loadFullscreenAd$Helium_release(Landroid/content/Context;Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdLoadRequest;Lcom/chartboost/heliumsdk/controllers/AdController;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final startAdFetchJob(Z)V
    .locals 7

    .line 337
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    const-string v1, "The fullscreen ad queue for: "

    if-nez v0, :cond_0

    .line 338
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is no longer running. Waiting for the queue to start running."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueCapacity:I

    if-lt v0, v2, :cond_1

    .line 343
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already full. Waiting until next queue fetch job."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isQueueFetchInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already has a queue fetch job in progress."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 353
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 479
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v2, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v2, v0, p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)V

    check-cast v2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 482
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    .line 353
    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;-><init>(ZLcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 352
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fetchAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic startAdFetchJob$default(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob(Z)V

    return-void
.end method


# virtual methods
.method public final getAdQueueListener()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->adQueueListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Ad queue listener is null on FullscreenAdQueueListener"

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->adQueueListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getKeywords()Lcom/chartboost/heliumsdk/domain/Keywords;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->keywords:Lcom/chartboost/heliumsdk/domain/Keywords;

    return-object v0
.end method

.method public final getNextAd()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-static {p0, v1, v2, v3}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob$default(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;ZILjava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0, v3}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->setListener(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;)V

    :goto_0
    return-object v0
.end method

.method public final getNotifyQueueToAutoStart$Helium_release()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->notifyQueueToAutoStart:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;

    return-object v0
.end method

.method public final getNumberOfAdsReady()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPlacementName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueueCapacity()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueCapacity:I

    return v0
.end method

.method public final hasNextAd()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->fullscreenAdsQueued:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isPaused$Helium_release()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    return v0
.end method

.method public final setAdQueueListener(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->adQueueListener:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;

    return-void
.end method

.method public final setKeywords(Lcom/chartboost/heliumsdk/domain/Keywords;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->keywords:Lcom/chartboost/heliumsdk/domain/Keywords;

    return-void
.end method

.method public final setPaused$Helium_release(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    return-void
.end method

.method public final setQueueCapacity(I)V
    .locals 4

    .line 211
    iget v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->maxQueueSize:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 213
    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 215
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queue capacity adjusted to be within valid range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 217
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {p1, v2, v1, v0}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->addQueueSize(Ljava/lang/String;II)V

    .line 212
    iput v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueCapacity:I

    return-void
.end method

.method public final start()V
    .locals 10

    .line 273
    sget-object v0, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getInitializationStatus$Helium_release()Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    move-result-object v0

    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;->INITIALIZED:Lcom/chartboost/heliumsdk/HeliumSdk$ChartboostMediationInitializationStatus;

    const-string v2, "The fullscreen ad queue for: "

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 274
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the Chartboost Mediation SDK has not initialized. Cannot start the queue. Waiting until the Chartboost Mediation SDK has started before queuing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 279
    iput-boolean v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    .line 280
    iput-boolean v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    if-nez v0, :cond_1

    .line 285
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_1
    iput-boolean v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning:Z

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isPaused:Z

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/utils/Environment;->getSessionId$Helium_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->queueId:Ljava/lang/String;

    .line 298
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$start$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$start$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 310
    invoke-static {p0, v0, v3, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob$default(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;ZILjava/lang/Object;)V

    return-void
.end method

.method public final stop()V
    .locals 7

    .line 318
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->cancelAllJobs()V

    .line 320
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$stop$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$stop$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
