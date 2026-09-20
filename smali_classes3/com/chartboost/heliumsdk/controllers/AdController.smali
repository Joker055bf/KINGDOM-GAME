.class public final Lcom/chartboost/heliumsdk/controllers/AdController;
.super Ljava/lang/Object;
.source "AdController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/controllers/AdController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdController.kt\ncom/chartboost/heliumsdk/controllers/AdController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n1#2:444\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 =2\u00020\u0001:\u0001=B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ \u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0010H\u0002J\r\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008!J\u000e\u0010\"\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001cJ@\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001c0$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0018\u0010.\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010/\u001a\u000200H\u0002J\"\u00101\u001a\u00020 2\u0006\u00102\u001a\u0002032\u0006\u0010/\u001a\u0002002\u0008\u00104\u001a\u0004\u0018\u000100H\u0002J!\u00105\u001a\u0002062\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@\u00f8\u0001\u0002\u00a2\u0006\u0002\u00107J*\u00108\u001a\u00020 2\u0006\u00109\u001a\u0002002\u0018\u0010:\u001a\u0014\u0012\u0004\u0012\u000200\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000<0;H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006>"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/controllers/AdController;",
        "",
        "bidController",
        "Lcom/chartboost/heliumsdk/controllers/BidController;",
        "partnerController",
        "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
        "privacyController",
        "Lcom/chartboost/heliumsdk/controllers/PrivacyController;",
        "loadRateLimiter",
        "Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;",
        "backgroundTimeMonitor",
        "Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;",
        "ilrd",
        "Lcom/chartboost/heliumsdk/Ilrd;",
        "(Lcom/chartboost/heliumsdk/controllers/BidController;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/controllers/PrivacyController;Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;Lcom/chartboost/heliumsdk/Ilrd;)V",
        "bannerImpressionDepth",
        "",
        "interstitialImpressionDepth",
        "mainHandler",
        "Landroid/os/Handler;",
        "rewardedImpressionDepth",
        "rewardedInterstitialImpressionDepth",
        "createInteractionListener",
        "Lcom/chartboost/heliumsdk/domain/AdInteractionListener;",
        "bids",
        "Lcom/chartboost/heliumsdk/domain/Bids;",
        "adInteractionListener",
        "cachedAd",
        "Lcom/chartboost/heliumsdk/domain/CachedAd;",
        "getImpressionDepth",
        "adType",
        "incrementBannerImpressionDepth",
        "",
        "incrementBannerImpressionDepth$Helium_release",
        "invalidate",
        "load",
        "Lkotlin/Result;",
        "context",
        "Landroid/content/Context;",
        "adLoadParams",
        "Lcom/chartboost/heliumsdk/domain/AdLoadParams;",
        "metricsSet",
        "",
        "Lcom/chartboost/heliumsdk/domain/Metrics;",
        "load-BWLJW6A",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendAuctionWinnerRequest",
        "loadId",
        "",
        "sendLoadId",
        "adIdentifier",
        "Lcom/chartboost/heliumsdk/domain/AdIdentifier;",
        "queueId",
        "show",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/CachedAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateLoadRateLimiter",
        "placement",
        "headers",
        "",
        "",
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
.field public static final Companion:Lcom/chartboost/heliumsdk/controllers/AdController$Companion;


# instance fields
.field private final backgroundTimeMonitor:Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;

.field private bannerImpressionDepth:I

.field private final bidController:Lcom/chartboost/heliumsdk/controllers/BidController;

.field private final ilrd:Lcom/chartboost/heliumsdk/Ilrd;

.field private interstitialImpressionDepth:I

.field private final loadRateLimiter:Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

.field private final mainHandler:Landroid/os/Handler;

.field private final partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

.field private final privacyController:Lcom/chartboost/heliumsdk/controllers/PrivacyController;

.field private rewardedImpressionDepth:I

.field private rewardedInterstitialImpressionDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/AdController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/controllers/AdController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/controllers/AdController;->Companion:Lcom/chartboost/heliumsdk/controllers/AdController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/heliumsdk/controllers/BidController;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/controllers/PrivacyController;Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;Lcom/chartboost/heliumsdk/Ilrd;)V
    .locals 1

    const-string v0, "bidController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadRateLimiter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundTimeMonitor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ilrd"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bidController:Lcom/chartboost/heliumsdk/controllers/BidController;

    .line 43
    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    .line 44
    iput-object p3, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->privacyController:Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    .line 45
    iput-object p4, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->loadRateLimiter:Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    .line 46
    iput-object p5, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->backgroundTimeMonitor:Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;

    .line 47
    iput-object p6, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->ilrd:Lcom/chartboost/heliumsdk/Ilrd;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getImpressionDepth(Lcom/chartboost/heliumsdk/controllers/AdController;I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/controllers/AdController;->getImpressionDepth(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLoadRateLimiter$p(Lcom/chartboost/heliumsdk/controllers/AdController;)Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->loadRateLimiter:Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    return-object p0
.end method

.method public static final synthetic access$getPartnerController$p(Lcom/chartboost/heliumsdk/controllers/AdController;)Lcom/chartboost/heliumsdk/controllers/PartnerController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    return-object p0
.end method

.method public static final synthetic access$getPrivacyController$p(Lcom/chartboost/heliumsdk/controllers/AdController;)Lcom/chartboost/heliumsdk/controllers/PrivacyController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->privacyController:Lcom/chartboost/heliumsdk/controllers/PrivacyController;

    return-object p0
.end method

.method private final createInteractionListener(Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Lcom/chartboost/heliumsdk/domain/CachedAd;)Lcom/chartboost/heliumsdk/domain/AdInteractionListener;
    .locals 1

    .line 272
    new-instance v0, Lcom/chartboost/heliumsdk/controllers/AdController$createInteractionListener$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/chartboost/heliumsdk/controllers/AdController$createInteractionListener$1;-><init>(Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    check-cast v0, Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    return-object v0
.end method

.method private final getImpressionDepth(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 439
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bannerImpressionDepth:I

    goto :goto_0

    .line 437
    :cond_0
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bannerImpressionDepth:I

    goto :goto_0

    .line 438
    :cond_1
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedInterstitialImpressionDepth:I

    goto :goto_0

    .line 436
    :cond_2
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bannerImpressionDepth:I

    goto :goto_0

    .line 435
    :cond_3
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedImpressionDepth:I

    goto :goto_0

    .line 434
    :cond_4
    iget p1, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->interstitialImpressionDepth:I

    :goto_0
    return p1
.end method

.method private final sendAuctionWinnerRequest(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;)V
    .locals 7

    .line 427
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/AdController$sendAuctionWinnerRequest$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v4}, Lcom/chartboost/heliumsdk/controllers/AdController$sendAuctionWinnerRequest$1;-><init>(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final sendLoadId(Lcom/chartboost/heliumsdk/domain/AdIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 338
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/AdController$sendLoadId$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/chartboost/heliumsdk/controllers/AdController$sendLoadId$1;-><init>(Lcom/chartboost/heliumsdk/domain/AdIdentifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateLoadRateLimiter(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Helium-Ratelimit-Reset"

    .line 412
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->loadRateLimiter:Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;->setLoadRateLimit(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    sget-object p2, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to retrieve rate limit on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " due to number format exception."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {p2, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final incrementBannerImpressionDepth$Helium_release()V
    .locals 1

    .line 405
    iget v0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bannerImpressionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->bannerImpressionDepth:I

    return-void
.end method

.method public final invalidate(Lcom/chartboost/heliumsdk/domain/CachedAd;)V
    .locals 1

    const-string v0, "cachedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/AdController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeInvalidate(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 401
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final load-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/AdLoadParams;",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/CachedAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;

    iget v5, v4, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;

    invoke-direct {v4, v0, v3}, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;-><init>(Lcom/chartboost/heliumsdk/controllers/AdController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v4

    iget-object v3, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 75
    iget v5, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    const/4 v6, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v6, :cond_1

    iget-wide v1, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->J$0:J

    iget-object v4, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lcom/chartboost/heliumsdk/domain/CachedAd;

    iget-object v5, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lcom/chartboost/heliumsdk/domain/AuctionResult;

    iget-object v6, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;

    iget-object v7, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    iget-object v8, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/chartboost/heliumsdk/domain/AdLoadParams;

    iget-object v9, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/chartboost/heliumsdk/controllers/AdController;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v8

    move-object v15, v9

    move-object v8, v7

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v1, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->J$0:J

    iget-object v5, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;

    iget-object v9, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    iget-object v10, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/chartboost/heliumsdk/domain/AdLoadParams;

    iget-object v13, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroid/content/Context;

    iget-object v14, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/chartboost/heliumsdk/controllers/AdController;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v14

    move-object v14, v9

    move-wide/from16 v36, v1

    move-object v1, v5

    move-object v2, v10

    move-wide/from16 v9, v36

    goto/16 :goto_3

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/AdController;->loadRateLimiter:Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;

    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chartboost/heliumsdk/domain/LoadRateLimiter;->millisUntilNextLoadIsAllowed(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v3, v9, v13

    const/16 v5, 0x2e

    if-lez v3, :cond_4

    .line 82
    sget-object v3, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getEnableRateLimiting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    sget-object v1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been rate limited. Please try again in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long v6, v9, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr v9, v3

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_RATE_LIMITED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/16 v10, 0x32

    if-ge v9, v10, :cond_5

    if-nez v9, :cond_6

    :cond_5
    const/16 v10, 0x708

    if-le v9, v10, :cond_7

    :cond_6
    move v9, v8

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v12

    :goto_2
    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 91
    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Banner height must be at least 50 and no more than 1800. Banner height is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_INVALID_BANNER_SIZE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 95
    :cond_9
    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/AdController;->backgroundTimeMonitor:Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;

    invoke-interface {v3}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitoring;->startMonitoringOperation()Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;

    move-result-object v3

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 97
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    move-object v13, v3

    check-cast v13, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v5, v13}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 99
    sget-object v5, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getShouldNotifyLoads()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getQueueId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v5, v13, v14}, Lcom/chartboost/heliumsdk/controllers/AdController;->sendLoadId(Lcom/chartboost/heliumsdk/domain/AdIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/chartboost/heliumsdk/controllers/AdController$load$result$1;

    invoke-direct {v13, v0, v2, v1, v12}, Lcom/chartboost/heliumsdk/controllers/AdController$load$result$1;-><init>(Lcom/chartboost/heliumsdk/controllers/AdController;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iput-object v0, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$0:Ljava/lang/Object;

    iput-object v1, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$1:Ljava/lang/Object;

    iput-object v2, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$2:Ljava/lang/Object;

    move-object/from16 v14, p3

    iput-object v14, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$3:Ljava/lang/Object;

    iput-object v3, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$4:Ljava/lang/Object;

    iput-wide v9, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->J$0:J

    iput v8, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    invoke-static {v5, v13, v11}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_b

    return-object v4

    :cond_b
    move-object v15, v0

    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    .line 75
    :goto_3
    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 125
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    move-object v7, v1

    check-cast v7, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v5, v7}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 128
    instance-of v5, v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    if-eqz v5, :cond_14

    .line 130
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 131
    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;->getHeaders()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v7

    .line 129
    invoke-direct {v15, v5, v7}, Lcom/chartboost/heliumsdk/controllers/AdController;->updateLoadRateLimiter(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    new-instance v8, Lcom/chartboost/heliumsdk/domain/AuctionResult;

    .line 136
    new-instance v5, Lcom/chartboost/heliumsdk/domain/Bids;

    .line 138
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chartboost/heliumsdk/domain/BidsResponse;

    if-nez v7, :cond_c

    sget-object v7, Lcom/chartboost/heliumsdk/domain/BidsResponse;->Companion:Lcom/chartboost/heliumsdk/domain/BidsResponse$Companion;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/BidsResponse$Companion;->getEMPTY_BIDS_RESPONSE()Lcom/chartboost/heliumsdk/domain/BidsResponse;

    move-result-object v7

    .line 136
    :cond_c
    invoke-direct {v5, v2, v7}, Lcom/chartboost/heliumsdk/domain/Bids;-><init>(Lcom/chartboost/heliumsdk/domain/AdLoadParams;Lcom/chartboost/heliumsdk/domain/BidsResponse;)V

    .line 140
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;->getHeaders()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    .line 134
    invoke-direct {v8, v5, v3, v12}, Lcom/chartboost/heliumsdk/domain/AuctionResult;-><init>(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 143
    new-instance v3, Lcom/chartboost/heliumsdk/domain/CachedAd;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Bids;->getAuctionId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/chartboost/heliumsdk/domain/CachedAd;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v5, v15, Lcom/chartboost/heliumsdk/controllers/AdController;->bidController:Lcom/chartboost/heliumsdk/controllers/BidController;

    .line 147
    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v7

    .line 148
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v16

    .line 151
    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v12

    .line 152
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdInteractionListener()Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    move-result-object v6

    .line 150
    invoke-direct {v15, v12, v6, v3}, Lcom/chartboost/heliumsdk/controllers/AdController;->createInteractionListener(Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Lcom/chartboost/heliumsdk/domain/CachedAd;)Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    move-result-object v12

    .line 145
    iput-object v15, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$0:Ljava/lang/Object;

    iput-object v2, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$1:Ljava/lang/Object;

    iput-object v14, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$2:Ljava/lang/Object;

    iput-object v1, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$3:Ljava/lang/Object;

    iput-object v8, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$4:Ljava/lang/Object;

    iput-object v3, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->L$5:Ljava/lang/Object;

    iput-wide v9, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->J$0:J

    const/4 v6, 0x2

    iput v6, v11, Lcom/chartboost/heliumsdk/controllers/AdController$load$1;->label:I

    move-object v6, v13

    move-object v13, v8

    move-object/from16 v8, v16

    move-wide/from16 v17, v9

    move-object v9, v12

    move-object v10, v14

    invoke-virtual/range {v5 .. v11}, Lcom/chartboost/heliumsdk/controllers/BidController;->loadBids-hUnOzRk(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_d

    return-object v4

    :cond_d
    move-object v6, v1

    move-object v4, v3

    move-object v3, v5

    move-object v5, v13

    move-object v8, v14

    move-object v14, v2

    move-wide/from16 v1, v17

    .line 157
    :goto_4
    sget-object v7, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 159
    invoke-virtual {v14}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v9

    .line 160
    invoke-virtual {v14}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getQueueId()Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v11

    .line 162
    invoke-interface {v6}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;->backgroundTimeUntilNow()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    .line 164
    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 165
    sget-object v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadSuccess;->INSTANCE:Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadSuccess;

    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult;

    goto :goto_6

    .line 167
    :cond_e
    new-instance v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadPartnerFailure;

    .line 168
    new-instance v2, Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;

    .line 169
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    instance-of v13, v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    if-eqz v13, :cond_f

    check-cast v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    goto :goto_5

    :cond_f
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v6

    if-nez v6, :cond_11

    .line 170
    :cond_10
    sget-object v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_UNKNOWN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 168
    :cond_11
    invoke-direct {v2, v6}, Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 167
    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadPartnerFailure;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;)V

    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult;

    :goto_6
    move-object v13, v1

    check-cast v13, Lcom/chartboost/heliumsdk/domain/EventResult;

    .line 157
    invoke-virtual/range {v7 .. v13}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)V

    .line 175
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_13

    check-cast v3, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 176
    invoke-virtual {v4, v3}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setPartnerAd(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    .line 177
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getBidInfo()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v4, v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setWinningBidInfo(Ljava/util/Map;)V

    .line 178
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getActiveBid()Lcom/chartboost/heliumsdk/domain/Bid;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bid;->getIlrd()Lkotlinx/serialization/json/JsonObject;

    move-result-object v12

    goto :goto_7

    :cond_12
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v4, v12}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setIlrdJson(Lkotlinx/serialization/json/JsonObject;)V

    .line 179
    invoke-virtual {v14}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setLoadId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AuctionResult;->getBids()Lcom/chartboost/heliumsdk/domain/Bids;

    move-result-object v1

    invoke-virtual {v14}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lcom/chartboost/heliumsdk/controllers/AdController;->sendAuctionWinnerRequest(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 183
    :cond_13
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_14
    move-wide/from16 v17, v9

    .line 187
    instance-of v4, v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    const-string/jumbo v5, "x-mediation-auction-id"

    const-string v6, ""

    if-eqz v4, :cond_1a

    .line 188
    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v4

    sget-object v7, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_AUCTION_NO_BID:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    if-eq v4, v7, :cond_15

    .line 189
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v4

    sget-object v7, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_RATE_LIMITED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    if-eq v4, v7, :cond_15

    .line 191
    sget-object v4, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 194
    :cond_15
    sget-object v19, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 196
    sget-object v21, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 197
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getHeaders()Lokhttp3/Headers;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_8

    :cond_16
    move-object/from16 v22, v4

    goto :goto_9

    :cond_17
    :goto_8
    move-object/from16 v22, v6

    .line 198
    :goto_9
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v23

    .line 199
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v24

    .line 200
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementType()Ljava/lang/String;

    move-result-object v25

    .line 202
    invoke-interface {v1}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;->backgroundTimeUntilNow()J

    move-result-wide v4

    .line 204
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->isAdaptive()Z

    move-result v1

    if-ne v1, v8, :cond_18

    move v7, v8

    goto :goto_a

    :cond_18
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_19

    .line 205
    new-instance v12, Landroid/util/Size;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v6

    invoke-direct {v12, v1, v6}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v26, v12

    goto :goto_b

    :cond_19
    const/16 v26, 0x0

    .line 209
    :goto_b
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v29

    .line 211
    new-instance v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadUnspecifiedFailure;

    .line 212
    new-instance v2, Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 211
    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadUnspecifiedFailure;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;)V

    const/16 v20, 0x0

    .line 201
    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v27

    .line 202
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v28

    .line 211
    move-object/from16 v30, v1

    check-cast v30, Lcom/chartboost/heliumsdk/domain/EventResult;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    .line 194
    invoke-static/range {v19 .. v35}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 216
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 219
    :cond_1a
    instance-of v4, v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    if-eqz v4, :cond_22

    .line 220
    sget-object v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_INVALID_BID_RESPONSE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 222
    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;->getException()Lkotlinx/serialization/SerializationException;

    move-result-object v7

    invoke-virtual {v7}, Lkotlinx/serialization/SerializationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v8, [C

    const/16 v7, 0xa

    const/4 v11, 0x0

    aput-char v7, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/4 v9, 0x0

    .line 223
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1c

    :cond_1b
    move-object v7, v6

    .line 227
    :cond_1c
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;->getException()Lkotlinx/serialization/SerializationException;

    move-result-object v9

    invoke-virtual {v9}, Lkotlinx/serialization/SerializationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_1f

    const-string v11, "\nJSON input: "

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 228
    invoke-static {v9, v11, v13, v12, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const/16 v11, 0xd

    .line 229
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1d
    if-nez v9, :cond_1e

    goto :goto_c

    :cond_1e
    move-object v6, v9

    goto :goto_c

    :cond_1f
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 236
    :goto_c
    new-instance v9, Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    .line 238
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;->getException()Lkotlinx/serialization/SerializationException;

    move-result-object v10

    check-cast v10, Ljava/lang/Exception;

    .line 236
    invoke-direct {v9, v4, v10, v7, v6}, Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v19, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 245
    sget-object v21, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 246
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;->getHeaders()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 248
    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v24

    .line 249
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementType()Ljava/lang/String;

    move-result-object v25

    .line 251
    invoke-interface {v1}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;->backgroundTimeUntilNow()J

    move-result-wide v5

    .line 253
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->isAdaptive()Z

    move-result v1

    if-ne v1, v8, :cond_20

    move v7, v8

    goto :goto_d

    :cond_20
    move v7, v13

    :goto_d
    if-eqz v7, :cond_21

    .line 254
    new-instance v12, Landroid/util/Size;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getBannerSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v7

    invoke-direct {v12, v1, v7}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v26, v12

    goto :goto_e

    :cond_21
    move-object/from16 v26, v14

    .line 258
    :goto_e
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;->getLoadId()Ljava/lang/String;

    move-result-object v29

    .line 259
    new-instance v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadJsonFailure;

    invoke-direct {v1, v9}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadJsonFailure;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;)V

    const/16 v20, 0x0

    .line 250
    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v27

    .line 251
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v28

    .line 259
    move-object/from16 v30, v1

    check-cast v30, Lcom/chartboost/heliumsdk/domain/EventResult;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    move-object/from16 v23, v4

    .line 243
    invoke-static/range {v19 .. v35}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 262
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;->getError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_22
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public final show(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/CachedAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/CachedAd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;

    iget v3, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;

    invoke-direct {v2, v0, v1}, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;-><init>(Lcom/chartboost/heliumsdk/controllers/AdController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 350
    iget v3, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v3, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    iget-object v4, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/chartboost/heliumsdk/domain/CachedAd;

    iget-object v2, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/controllers/AdController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/chartboost/heliumsdk/domain/CachedAd;

    iget-object v4, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/chartboost/heliumsdk/controllers/AdController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v3

    move-object v3, v1

    move-object/from16 v1, v22

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 355
    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/AdController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v5

    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getAuctionId()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getLoadId()Ljava/lang/String;

    move-result-object v7

    .line 355
    iput-object v0, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p2

    iput-object v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$1:Ljava/lang/Object;

    iput v11, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    move-object/from16 v4, p1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeShow(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAd;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_4

    return-object v9

    :cond_4
    move-object v4, v0

    .line 350
    :goto_1
    check-cast v3, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;

    .line 361
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;->getMetrics()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/heliumsdk/domain/Metrics;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Metrics;->isSuccess()Z

    move-result v5

    .line 362
    sget-object v12, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;->getMetrics()Ljava/util/Set;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7e

    const/16 v21, 0x0

    invoke-static/range {v12 .. v21}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->buildMetricsDataRequestBody$Helium_release$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-result-object v6

    .line 364
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v7

    .line 366
    sget-object v8, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->Companion:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/SerializationStrategy;

    .line 364
    invoke-static {v7, v6, v8}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v6

    .line 367
    invoke-static {v6}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v6

    invoke-static {v6}, Lcom/chartboost/heliumsdk/utils/JsonTranslatorKt;->toJSONObject(Lkotlinx/serialization/json/JsonObject;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v5, :cond_b

    .line 370
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 371
    invoke-virtual {v1, v3}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setPartnerAd(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    .line 372
    sget-object v5, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getAuctionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getLoadId()Ljava/lang/String;

    move-result-object v8

    iput-object v4, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$2:Ljava/lang/Object;

    iput-object v3, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->L$3:Ljava/lang/Object;

    iput v10, v2, Lcom/chartboost/heliumsdk/controllers/AdController$show$1;->label:I

    invoke-virtual {v5, v7, v8, v2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->trackChartboostImpression(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_5

    return-object v9

    :cond_5
    move-object v5, v1

    move-object v2, v4

    move-object v4, v6

    .line 373
    :goto_2
    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getIlrdJson()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 374
    iget-object v5, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->ilrd:Lcom/chartboost/heliumsdk/Ilrd;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getChartboostPlacement()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/chartboost/heliumsdk/utils/JsonTranslatorKt;->toJSONObject(Lkotlinx/serialization/json/JsonObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/chartboost/heliumsdk/Ilrd;->onIlrdReceived$Helium_release(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 376
    :cond_6
    sget-object v1, Lcom/chartboost/heliumsdk/domain/AdFormat;->REWARDED:Lcom/chartboost/heliumsdk/domain/AdFormat;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object v5

    if-ne v1, v5, :cond_7

    .line 377
    iget v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedImpressionDepth:I

    add-int/2addr v1, v11

    iput v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedImpressionDepth:I

    goto :goto_3

    .line 378
    :cond_7
    sget-object v1, Lcom/chartboost/heliumsdk/domain/AdFormat;->INTERSTITIAL:Lcom/chartboost/heliumsdk/domain/AdFormat;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object v5

    if-ne v1, v5, :cond_8

    .line 379
    iget v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->interstitialImpressionDepth:I

    add-int/2addr v1, v11

    iput v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->interstitialImpressionDepth:I

    goto :goto_3

    .line 380
    :cond_8
    sget-object v1, Lcom/chartboost/heliumsdk/domain/AdFormat;->REWARDED_INTERSTITIAL:Lcom/chartboost/heliumsdk/domain/AdFormat;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object v3

    if-ne v1, v3, :cond_9

    .line 381
    iget v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedInterstitialImpressionDepth:I

    add-int/2addr v1, v11

    iput v1, v2, Lcom/chartboost/heliumsdk/controllers/AdController;->rewardedInterstitialImpressionDepth:I

    .line 383
    :cond_9
    :goto_3
    new-instance v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;-><init>(Lorg/json/JSONObject;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    return-object v1

    .line 384
    :cond_a
    check-cast v4, Lcom/chartboost/heliumsdk/controllers/AdController;

    .line 385
    new-instance v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;

    .line 387
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_READY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 385
    invoke-direct {v1, v6, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;-><init>(Lorg/json/JSONObject;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    return-object v1

    .line 391
    :cond_b
    new-instance v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;

    .line 393
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;->getMetrics()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v2

    if-nez v2, :cond_c

    .line 394
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_UNKNOWN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 391
    :cond_c
    invoke-direct {v1, v6, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdShowResult;-><init>(Lorg/json/JSONObject;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    return-object v1
.end method
