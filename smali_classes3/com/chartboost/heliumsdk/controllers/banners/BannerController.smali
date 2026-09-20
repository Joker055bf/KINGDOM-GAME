.class public final Lcom/chartboost/heliumsdk/controllers/banners/BannerController;
.super Ljava/lang/Object;
.source "BannerController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerController.kt\ncom/chartboost/heliumsdk/controllers/banners/BannerController\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,810:1\n49#2,4:811\n*S KotlinDebug\n*F\n+ 1 BannerController.kt\ncom/chartboost/heliumsdk/controllers/banners/BannerController\n*L\n356#1:811,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000{\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0012*\u0001\u0011\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020.H\u0002J\u0006\u00100\u001a\u00020.J\u0006\u00101\u001a\u00020.J\u0008\u00102\u001a\u000203H\u0002J\u0017\u00104\u001a\u0002052\u0008\u00106\u001a\u0004\u0018\u000107H\u0000\u00a2\u0006\u0002\u00088J\u0012\u00109\u001a\u00020.2\u0008\u0008\u0002\u0010:\u001a\u00020\u0014H\u0002J\u0018\u0010;\u001a\u00020.2\u0006\u0010<\u001a\u0002032\u0006\u0010=\u001a\u00020>H\u0002J\u0018\u0010?\u001a\u00020.2\u0006\u0010@\u001a\u00020\r2\u0006\u0010<\u001a\u000203H\u0002J\u0012\u0010A\u001a\u00020.2\u0008\u0010@\u001a\u0004\u0018\u00010\rH\u0002J\u0006\u0010B\u001a\u00020.J\u0006\u0010C\u001a\u00020.J\u0006\u0010D\u001a\u00020.J\u0008\u0010E\u001a\u00020.H\u0002J\r\u0010F\u001a\u00020.H\u0000\u00a2\u0006\u0002\u0008GJ\u0008\u0010H\u001a\u00020.H\u0002J\u0008\u0010I\u001a\u00020.H\u0002J\u0008\u0010J\u001a\u00020.H\u0002J(\u0010K\u001a\u00020.2\u0006\u0010L\u001a\u00020\u000b2\u0006\u0010M\u001a\u0002032\u0006\u0010N\u001a\u0002032\u0006\u0010<\u001a\u000203H\u0002J\u0008\u0010O\u001a\u00020.H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010#\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/controllers/banners/BannerController;",
        "",
        "heliumBannerAdRef",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;",
        "fullscreenAdShowingState",
        "Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;",
        "ilrd",
        "Lcom/chartboost/heliumsdk/Ilrd;",
        "(Ljava/lang/ref/WeakReference;Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;Lcom/chartboost/heliumsdk/Ilrd;)V",
        "bannerShownUptimeMillis",
        "",
        "currentlyShowingAd",
        "Lcom/chartboost/heliumsdk/domain/CachedAd;",
        "fetchAdJob",
        "Lkotlinx/coroutines/Job;",
        "fullscreenAdShowingStateObserver",
        "com/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1",
        "Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;",
        "isAutoRefreshResumed",
        "",
        "isHeliumBannerAdReadyToRefresh",
        "isPublisherTriggeredLoad",
        "isShowingAd",
        "mainHandler",
        "Landroid/os/Handler;",
        "maxRefreshTime",
        "",
        "maxTriesUntilPenaltyTime",
        "nextAd",
        "nextAdJob",
        "refreshTimeMillis",
        "getRefreshTimeMillis",
        "()I",
        "refreshesFailed",
        "shouldAutoRefresh",
        "getShouldAutoRefresh",
        "()Z",
        "shownDurationMillis",
        "swapAdJob",
        "timeToVerifyAdSizeJobMillis",
        "getTimeToVerifyAdSizeJobMillis",
        "()J",
        "visibilityTracker",
        "Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;",
        "cancelAllJobs",
        "",
        "checkAndResumeRefresh",
        "clearAd",
        "destroy",
        "getBannerAdPlacementName",
        "",
        "getCreativeSizeDips",
        "Landroid/util/Size;",
        "bannerSize",
        "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;",
        "getCreativeSizeDips$Helium_release",
        "getNextAd",
        "forceRefresh",
        "handleLoadFailure",
        "loadId",
        "error",
        "",
        "handleLoadSuccess",
        "cachedAd",
        "invalidateAd",
        "load",
        "onHeliumBannerAdPauseRefresh",
        "onHeliumBannerAdResumeRefresh",
        "pauseRefresh",
        "renewCachedAd",
        "renewCachedAd$Helium_release",
        "resetState",
        "scheduleAdSwap",
        "scheduleNextRefresh",
        "sendShowMetricsData",
        "startTime",
        "partnerName",
        "auctionId",
        "swapAd",
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


# instance fields
.field private bannerShownUptimeMillis:J

.field private currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

.field private fetchAdJob:Lkotlinx/coroutines/Job;

.field private final fullscreenAdShowingState:Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

.field private final fullscreenAdShowingStateObserver:Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;

.field private final heliumBannerAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;",
            ">;"
        }
    .end annotation
.end field

.field private final ilrd:Lcom/chartboost/heliumsdk/Ilrd;

.field private isAutoRefreshResumed:Z

.field private isHeliumBannerAdReadyToRefresh:Z

.field private isPublisherTriggeredLoad:Z

.field private isShowingAd:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final maxRefreshTime:I

.field private final maxTriesUntilPenaltyTime:I

.field private nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

.field private nextAdJob:Lkotlinx/coroutines/Job;

.field private refreshesFailed:I

.field private shownDurationMillis:J

.field private swapAdJob:Lkotlinx/coroutines/Job;

.field private visibilityTracker:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;


# direct methods
.method public static synthetic $r8$lambda$i2l0fnBAgnz4jPGbI3OiIFFwvuQ(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/CachedAd;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->load$lambda$3$lambda$2$lambda$1(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;Lcom/chartboost/heliumsdk/Ilrd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;",
            ">;",
            "Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;",
            "Lcom/chartboost/heliumsdk/Ilrd;",
            ")V"
        }
    .end annotation

    const-string v0, "heliumBannerAdRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingState:Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

    .line 43
    iput-object p3, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->ilrd:Lcom/chartboost/heliumsdk/Ilrd;

    .line 66
    sget-object p1, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->getMaxRefreshTime()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->maxRefreshTime:I

    .line 71
    sget-object p1, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->getMaxTriesUntilPenaltyTime()I

    move-result p1

    iput p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->maxTriesUntilPenaltyTime:I

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->mainHandler:Landroid/os/Handler;

    .line 82
    new-instance p1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;

    invoke-direct {p1, p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingStateObserver:Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isAutoRefreshResumed:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;Lcom/chartboost/heliumsdk/Ilrd;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 42
    sget-object p2, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getFullscreenAdShowingState$Helium_release()Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 43
    sget-object p3, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getIlrd$Helium_release()Lcom/chartboost/heliumsdk/Ilrd;

    move-result-object p3

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;-><init>(Ljava/lang/ref/WeakReference;Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;Lcom/chartboost/heliumsdk/Ilrd;)V

    return-void
.end method

.method public static final synthetic access$checkAndResumeRefresh(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->checkAndResumeRefresh()V

    return-void
.end method

.method public static final synthetic access$getBannerAdPlacementName(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getBannerAdPlacementName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentlyShowingAd$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Lcom/chartboost/heliumsdk/domain/CachedAd;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    return-object p0
.end method

.method public static final synthetic access$getHeliumBannerAdRef$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getIlrd$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Lcom/chartboost/heliumsdk/Ilrd;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->ilrd:Lcom/chartboost/heliumsdk/Ilrd;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getRefreshTimeMillis(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getRefreshTimeMillis()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTimeToVerifyAdSizeJobMillis(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)J
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getTimeToVerifyAdSizeJobMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$handleLoadFailure(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->handleLoadFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$handleLoadSuccess(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/CachedAd;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->handleLoadSuccess(Lcom/chartboost/heliumsdk/domain/CachedAd;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isPublisherTriggeredLoad$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    return p0
.end method

.method public static final synthetic access$pauseRefresh(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->pauseRefresh()V

    return-void
.end method

.method public static final synthetic access$scheduleNextRefresh(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->scheduleNextRefresh()V

    return-void
.end method

.method public static final synthetic access$sendShowMetricsData(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->sendShowMetricsData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setBannerShownUptimeMillis$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    return-void
.end method

.method public static final synthetic access$setFetchAdJob$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setShownDurationMillis$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    return-void
.end method

.method public static final synthetic access$swapAd(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAd()V

    return-void
.end method

.method private final cancelAllJobs()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAdJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAdJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 242
    :cond_2
    iput-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    .line 243
    iput-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAdJob:Lkotlinx/coroutines/Job;

    .line 244
    iput-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final checkAndResumeRefresh()V
    .locals 3

    .line 261
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isHeliumBannerAdReadyToRefresh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingState:Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;->isFullscreenAdShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iput-boolean v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isAutoRefreshResumed:Z

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    .line 266
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->scheduleAdSwap()V

    return-void

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->scheduleNextRefresh()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final getBannerAdPlacementName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private final getNextAd(Z)V
    .locals 10

    if-nez p1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Already loading an ad."

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->i(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    if-eqz v2, :cond_2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/utils/Environment;->getSessionId$Helium_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 811
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v4, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$lambda$7$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v4, v1, p0, v2, v3}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$lambda$7$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;)V

    check-cast v4, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 814
    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    const/4 v8, 0x0

    .line 355
    new-instance v9, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;ZLkotlin/coroutines/Continuation;)V

    move-object p1, v9

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x2

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, p1

    move v8, v1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 354
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    .line 352
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 465
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "The Helium SDK Banner reference is missing on getNextAd()"

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->checkAndResumeRefresh()V

    return-void
.end method

.method static synthetic getNextAd$default(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getNextAd(Z)V

    return-void
.end method

.method private final getRefreshTimeMillis()I
    .locals 2

    .line 55
    sget-object v0, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getBannerAdPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->getRefreshTime(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private final getTimeToVerifyAdSizeJobMillis()J
    .locals 2

    .line 61
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getBannerSizeEventDelayMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private final handleLoadFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 502
    iget v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->refreshesFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->refreshesFailed:I

    const-wide/16 v0, 0x0

    .line 503
    iput-wide v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    .line 504
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->scheduleNextRefresh()V

    .line 506
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$handleLoadFailure$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$handleLoadFailure$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    const/4 p1, 0x0

    .line 528
    iput-boolean p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    return-void
.end method

.method private final handleLoadSuccess(Lcom/chartboost/heliumsdk/domain/CachedAd;Ljava/lang/String;)V
    .locals 8

    .line 474
    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setLoadId(Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    const/4 v0, 0x0

    .line 476
    iput v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->refreshesFailed:I

    .line 477
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->scheduleAdSwap()V

    .line 479
    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    if-eqz v1, :cond_0

    .line 480
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$handleLoadSuccess$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, p2, p1, v5}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$handleLoadSuccess$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/CachedAd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 495
    :cond_0
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    return-void
.end method

.method private final invalidateAd(Lcom/chartboost/heliumsdk/domain/CachedAd;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 233
    sget-object v0, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAdController$Helium_release()Lcom/chartboost/heliumsdk/controllers/AdController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/controllers/AdController;->invalidate(Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 234
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Failed to invalidate ad due to no ad controller."

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final load$lambda$3$lambda$2$lambda$1(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/CachedAd;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$partnerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$heliumAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getHeliumBannerAdListener()Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getChartboostPlacement()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getLoadId()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getWinningBidInfo()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    .line 205
    sget-object p0, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;

    .line 207
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getSize()Landroid/util/Size;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->Companion:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;

    sget-object v5, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {p2, v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->asSize(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object p2

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->getCreativeSizeFromPartnerAdDetails(Lcom/chartboost/heliumsdk/domain/PartnerAd;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v5

    .line 200
    invoke-interface/range {v0 .. v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;->onAdCached(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;Landroid/util/Size;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 210
    sget-object p0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string p1, "The Helium SDK Banner listener is detached on onHeliumAdLoaded for onAdCached."

    invoke-virtual {p0, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final pauseRefresh()V
    .locals 6

    .line 289
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isAutoRefreshResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isAutoRefreshResumed:Z

    .line 293
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    .line 294
    iget-wide v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    .line 295
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auto refresh paused. Already shown for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->cancelAllJobs()V

    return-void
.end method

.method private final resetState()V
    .locals 2

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    .line 332
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isShowingAd:Z

    .line 333
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->visibilityTracker:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->visibilityTracker:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    .line 335
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->cancelAllJobs()V

    .line 336
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    invoke-direct {p0, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->invalidateAd(Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    .line 337
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    invoke-direct {p0, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->invalidateAd(Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    .line 338
    iput-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 339
    iput-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 340
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->removeAllViews()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingState:Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingStateObserver:Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;

    check-cast v1, Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState$FullscreenAdShowingStateObserver;

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;->unsubscribe(Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState$FullscreenAdShowingStateObserver;)V

    :cond_2
    return-void
.end method

.method private final scheduleAdSwap()V
    .locals 9

    .line 536
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isHeliumBannerAdReadyToRefresh:Z

    if-nez v0, :cond_0

    .line 537
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Waiting on ad swap since banner is offscreen."

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 540
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 541
    iget-wide v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    sub-long/2addr v0, v2

    .line 543
    iget-wide v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    add-long/2addr v0, v2

    .line 545
    iget-boolean v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isShowingAd:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getRefreshTimeMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getShouldAutoRefresh()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getRefreshTimeMillis()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 551
    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_2

    .line 552
    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 554
    :cond_2
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling a banner ad swap in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " millis."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAdJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 557
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$scheduleAdSwap$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$scheduleAdSwap$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 556
    iput-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAdJob:Lkotlinx/coroutines/Job;

    return-void

    .line 546
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->swapAd()V

    return-void
.end method

.method private final scheduleNextRefresh()V
    .locals 10

    .line 761
    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getShouldAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isHeliumBannerAdReadyToRefresh:Z

    if-nez v0, :cond_1

    .line 765
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "HeliumBannerAd is not on screen. Not refreshing."

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 769
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 770
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-nez v1, :cond_2

    iget v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->refreshesFailed:I

    if-ge v1, v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    .line 772
    :cond_2
    iget v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->refreshesFailed:I

    iget v5, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->maxTriesUntilPenaltyTime:I

    if-lt v1, v5, :cond_3

    .line 773
    iget v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->maxRefreshTime:I

    int-to-long v5, v1

    iget-wide v7, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    goto :goto_0

    .line 775
    :cond_3
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getRefreshTimeMillis()I

    move-result v1

    int-to-long v5, v1

    iget-wide v7, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    :goto_0
    sub-long/2addr v5, v7

    .line 769
    :goto_1
    iput-wide v5, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 779
    iget-wide v5, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_4

    .line 780
    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 782
    :cond_4
    sget-object v1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling next banner refresh in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millis."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAdJob:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 785
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$scheduleNextRefresh$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$scheduleNextRefresh$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 784
    iput-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAdJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final sendShowMetricsData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 800
    new-instance v0, Lcom/chartboost/heliumsdk/domain/Metrics;

    sget-object v1, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-direct {v0, p3, v1}, Lcom/chartboost/heliumsdk/domain/Metrics;-><init>(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)V

    .line 801
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    move-object v2, p3

    check-cast v2, Ljava/util/Set;

    .line 802
    invoke-virtual {v0, p4}, Lcom/chartboost/heliumsdk/domain/Metrics;->setAuctionId(Ljava/lang/String;)V

    .line 803
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/domain/Metrics;->setStart(Ljava/lang/Long;)V

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/domain/Metrics;->setEnd(Ljava/lang/Long;)V

    const/4 p1, 0x1

    .line 805
    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/domain/Metrics;->setSuccess(Z)V

    .line 806
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v3, p5

    invoke-static/range {v1 .. v9}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)V

    return-void
.end method

.method private final swapAd()V
    .locals 16

    move-object/from16 v6, p0

    .line 571
    iget-object v0, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    if-nez v5, :cond_0

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    .line 572
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Failed to swap ad because reference to HeliumBannerAd lost"

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 576
    :cond_0
    iget-object v3, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    if-nez v3, :cond_1

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    .line 577
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Attempting to swap ad with no loaded ad."

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_1
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    .line 582
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to swap ad with no loaded partner ad. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_NO_FILL:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 586
    :cond_2
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getInlineView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    .line 587
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to swap ad with no loaded ad view. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_NO_INLINE_VIEW:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    return-void

    .line 591
    :cond_3
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Showing banner."

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 594
    iget-object v1, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 595
    iput-object v3, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    const/4 v0, 0x0

    .line 598
    iput-object v0, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 601
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 604
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 605
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_6

    .line 606
    invoke-virtual {v5, v9}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "heliumBannerAd.getChildAt(i)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 609
    :cond_6
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v7

    .line 610
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    float-to-double v9, v9

    const/4 v11, 0x1

    if-eqz v7, :cond_7

    .line 613
    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->isAdaptive()Z

    move-result v12

    if-ne v12, v11, :cond_7

    move v8, v11

    :cond_7
    if-eqz v8, :cond_8

    .line 614
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 615
    invoke-virtual {v6, v7}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getCreativeSizeDips$Helium_release(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v9

    double-to-int v12, v12

    .line 616
    invoke-virtual {v6, v7}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getCreativeSizeDips$Helium_release(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-double v13, v7

    mul-double/2addr v13, v9

    double-to-int v7, v13

    .line 614
    invoke-direct {v8, v12, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    .line 621
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v9

    double-to-int v12, v12

    .line 623
    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v7

    int-to-double v13, v7

    mul-double/2addr v13, v9

    double-to-int v7, v13

    .line 621
    invoke-direct {v8, v12, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 628
    :cond_9
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 629
    sget-object v7, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v7

    int-to-double v12, v7

    mul-double/2addr v12, v9

    double-to-int v7, v12

    .line 630
    sget-object v12, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v9

    double-to-int v9, v12

    .line 628
    invoke-direct {v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 v7, 0x11

    .line 634
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 635
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v4, v8}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 640
    invoke-virtual {v5, v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 643
    :cond_a
    iput-boolean v11, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isShowingAd:Z

    const-wide/16 v7, 0x0

    .line 644
    iput-wide v7, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->shownDurationMillis:J

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->bannerShownUptimeMillis:J

    .line 648
    iget-object v0, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->visibilityTracker:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->destroy()V

    .line 650
    :cond_b
    new-instance v0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    .line 651
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v7, "heliumBannerAd.context"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v7, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->Companion:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$Companion;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v5

    check-cast v10, Landroid/view/View;

    invoke-virtual {v7, v9, v10}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$Companion;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    move-object v10, v7

    .line 655
    :goto_3
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getBannerImpressionMinVisibleDips()I

    move-result v11

    .line 656
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getBannerImpressionMinVisibleDurationMs()I

    move-result v12

    .line 657
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getVisibilityTrackerPollIntervalMs()J

    move-result-wide v13

    .line 658
    sget-object v7, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getVisibilityTrackerTraversalLimit()I

    move-result v15

    move-object v7, v0

    move-object v9, v4

    .line 650
    invoke-direct/range {v7 .. v15}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;IIJI)V

    .line 661
    new-instance v7, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$swapAd$1$1;

    move-object v8, v0

    move-object v0, v7

    move-object v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$swapAd$1$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/CachedAd;Landroid/view/View;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;)V

    check-cast v7, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$VisibilityTrackerListener;

    .line 660
    invoke-virtual {v8, v7}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->setVisibilityTrackerListener(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$VisibilityTrackerListener;)V

    .line 750
    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->start()V

    .line 649
    iput-object v8, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->visibilityTracker:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    .line 754
    invoke-direct {v6, v9}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->invalidateAd(Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    return-void
.end method


# virtual methods
.method public final clearAd()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->resetState()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 303
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->resetState()V

    .line 304
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->heliumBannerAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public final getCreativeSizeDips$Helium_release(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->isAdaptive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->currentlyShowingAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    sget-object v2, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;

    .line 316
    sget-object v3, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->Companion:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;

    invoke-virtual {v3, p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->asSize(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object v3

    .line 314
    invoke-virtual {v2, v0, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->getCreativeSizeFromPartnerAdDetails(Lcom/chartboost/heliumsdk/domain/PartnerAd;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    .line 321
    :goto_1
    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encountered a problem getting the creative size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-nez v1, :cond_4

    .line 324
    new-instance v1, Landroid/util/Size;

    if-eqz p1, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v0

    :goto_3
    if-eqz p1, :cond_3

    goto :goto_4

    .line 326
    :cond_3
    sget-object p1, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    :goto_4
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result p1

    .line 324
    invoke-direct {v1, v0, p1}, Landroid/util/Size;-><init>(II)V

    :cond_4
    return-object v1
.end method

.method public final getShouldAutoRefresh()Z
    .locals 2

    .line 49
    sget-object v0, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getBannerAdPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->shouldRefresh(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load()V
    .locals 6

    .line 184
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    sget-object v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_LOAD_IN_PROGRESS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    .line 189
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fetchAdJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    .line 190
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_LOAD_IN_PROGRESS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Treating the next load as a publisher initiated load."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->nextAd:Lcom/chartboost/heliumsdk/domain/CachedAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 197
    sget-object v4, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v5, "Returning cached ad."

    invoke-virtual {v4, v5}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getInlineView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    iput-boolean v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    return-void

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingState:Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->fullscreenAdShowingStateObserver:Lcom/chartboost/heliumsdk/controllers/banners/BannerController$fullscreenAdShowingStateObserver$1;

    check-cast v3, Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState$FullscreenAdShowingStateObserver;

    invoke-virtual {v1, v3}, Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState;->subscribe(Lcom/chartboost/heliumsdk/utils/FullscreenAdShowingState$FullscreenAdShowingStateObserver;)V

    :cond_3
    const/4 v1, 0x0

    .line 219
    invoke-static {p0, v2, v0, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getNextAd$default(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onHeliumBannerAdPauseRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isHeliumBannerAdReadyToRefresh:Z

    .line 281
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->pauseRefresh()V

    return-void
.end method

.method public final onHeliumBannerAdResumeRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isHeliumBannerAdReadyToRefresh:Z

    .line 252
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->checkAndResumeRefresh()V

    return-void
.end method

.method public final renewCachedAd$Helium_release()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->pauseRefresh()V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->isPublisherTriggeredLoad:Z

    .line 173
    invoke-direct {p0, v0}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getNextAd(Z)V

    return-void
.end method
