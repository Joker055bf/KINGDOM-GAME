.class public final Lcom/vk/id/analytics/stat/StatTracker;
.super Ljava/lang/Object;
.source "StatTracker.kt"

# interfaces
.implements Lcom/vk/id/analytics/VKIDAnalytics$Tracker;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/analytics/stat/StatTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatTracker.kt\ncom/vk/id/analytics/stat/StatTracker\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,132:1\n40#2:133\n*S KotlinDebug\n*F\n+ 1 StatTracker.kt\ncom/vk/id/analytics/stat/StatTracker\n*L\n39#1:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 42\u00020\u0001:\u00014B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ3\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001d\u001a\u00020\u00032\u0012\u0010\u001e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020 0\u001f\"\u00020 H\u0016\u00a2\u0006\u0002\u0010!J\u00b8\u0001\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00032\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0091\u0001\u0010$\u001a\u008c\u0001\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u0002\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\'\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(*\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0+0%H\u0082@\u00a2\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0096\u0002J\u0008\u00102\u001a\u000203H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/vk/id/analytics/stat/StatTracker;",
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "clientId",
        "",
        "clientSecret",
        "api",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/network/InternalVKIDApiContract;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;)V",
        "storage",
        "Lcom/vk/id/analytics/stat/AnalyticsStorage;",
        "trackerScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "anonymousBatchEvents",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lorg/json/JSONObject;",
        "personalizedBatchEvents",
        "eventCounter",
        "Lcom/vk/id/analytics/stat/EventCounter;",
        "trackEvent",
        "",
        "accessToken",
        "name",
        "params",
        "",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V",
        "sendEvents",
        "batchEvents",
        "apiMethod",
        "Lkotlin/Function6;",
        "Lkotlin/ParameterName;",
        "versionName",
        "Lorg/json/JSONArray;",
        "eventsJson",
        "externalDeviceId",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "Companion",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vk/id/analytics/stat/StatTracker$Companion;

.field public static final EXTERNAL_PARAM_FLOW_SOURCE:Ljava/lang/String; = "flow_source"

.field public static final EXTERNAL_PARAM_SESSION_ID:Ljava/lang/String; = "session_id"


# instance fields
.field private final anonymousBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final api:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/InternalVKIDApiContract;",
            ">;"
        }
    .end annotation
.end field

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final eventCounter:Lcom/vk/id/analytics/stat/EventCounter;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final personalizedBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final storage:Lcom/vk/id/analytics/stat/AnalyticsStorage;

.field private final trackerScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/analytics/stat/StatTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/analytics/stat/StatTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/analytics/stat/StatTracker;->Companion:Lcom/vk/id/analytics/stat/StatTracker$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/id/network/InternalVKIDApiContract;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientSecret:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/vk/id/analytics/stat/StatTracker;->api:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/vk/id/analytics/stat/AnalyticsStorage;

    invoke-direct {p1, p5}, Lcom/vk/id/analytics/stat/AnalyticsStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->storage:Lcom/vk/id/analytics/stat/AnalyticsStorage;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 38
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p4, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->trackerScope:Lkotlinx/coroutines/CoroutineScope;

    .line 133
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "getSimpleName(...)"

    const-string p3, "StatTracker"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 40
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->anonymousBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->personalizedBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    new-instance p1, Lcom/vk/id/analytics/stat/EventCounter;

    invoke-direct {p1}, Lcom/vk/id/analytics/stat/EventCounter;-><init>()V

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker;->eventCounter:Lcom/vk/id/analytics/stat/EventCounter;

    return-void
.end method

.method public static final synthetic access$getAnonymousBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/vk/id/analytics/stat/StatTracker;->anonymousBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/analytics/stat/StatTracker;)Lkotlin/Lazy;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/vk/id/analytics/stat/StatTracker;->api:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getEventCounter$p(Lcom/vk/id/analytics/stat/StatTracker;)Lcom/vk/id/analytics/stat/EventCounter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/vk/id/analytics/stat/StatTracker;->eventCounter:Lcom/vk/id/analytics/stat/EventCounter;

    return-object p0
.end method

.method public static final synthetic access$getPersonalizedBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/vk/id/analytics/stat/StatTracker;->personalizedBatchEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getTrackerScope$p(Lcom/vk/id/analytics/stat/StatTracker;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/vk/id/analytics/stat/StatTracker;->trackerScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$sendEvents(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/id/analytics/stat/StatTracker;->sendEvents(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final sendEvents(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lorg/json/JSONArray;",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;

    iget v1, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;

    invoke-direct {v0, p0, p4}, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;-><init>(Lcom/vk/id/analytics/stat/StatTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    check-cast p4, Ljava/util/List;

    .line 98
    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p2, p4}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 99
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_7

    .line 100
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 103
    iget-object v6, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientId:Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientSecret:Ljava/lang/String;

    const-string v8, "2.7.1"

    .line 107
    iget-object p2, p0, Lcom/vk/id/analytics/stat/StatTracker;->storage:Lcom/vk/id/analytics/stat/AnalyticsStorage;

    invoke-virtual {p2}, Lcom/vk/id/analytics/stat/AnalyticsStorage;->getExternalDeviceId()Ljava/lang/String;

    move-result-object v10

    move-object v4, p3

    move-object v5, p1

    .line 101
    invoke-interface/range {v4 .. v10}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/InternalVKIDCall;

    .line 108
    iput-object p0, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/analytics/stat/StatTracker$sendEvents$1;->label:I

    invoke-interface {p1, v0}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 109
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    move-object p2, p4

    :cond_4
    check-cast p2, Lcom/vk/id/network/http/HttpResponse;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, p4

    :goto_2
    if-eqz p2, :cond_7

    .line 112
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 113
    iget-object p3, p1, Lcom/vk/id/analytics/stat/StatTracker;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {p3, p2, p4}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 115
    :cond_6
    iget-object p3, p1, Lcom/vk/id/analytics/stat/StatTracker;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {p3, p2}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 118
    :catch_0
    iget-object p1, p1, Lcom/vk/id/analytics/stat/StatTracker;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {p1, p2}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 122
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 125
    instance-of v0, p1, Lcom/vk/id/analytics/stat/StatTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientSecret:Ljava/lang/String;

    check-cast p1, Lcom/vk/id/analytics/stat/StatTracker;

    iget-object p1, p1, Lcom/vk/id/analytics/stat/StatTracker;->clientSecret:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 10

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;-><init>(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public varargs trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .line 28
    invoke-static {p0, p1, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Tracker$DefaultImpls;->trackEvent(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method
