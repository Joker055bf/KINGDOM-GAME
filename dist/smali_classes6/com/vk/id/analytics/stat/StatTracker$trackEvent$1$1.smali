.class final Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatTracker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vk.id.analytics.stat.StatTracker$trackEvent$1$1"
    f = "StatTracker.kt"
    i = {}
    l = {
        0x3c,
        0x3d,
        0x4b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/vk/id/analytics/stat/StatTracker;


# direct methods
.method public static synthetic $r8$lambda$kyLdqGi1gqQuL_HPVevKR7sHnyU(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->invokeSuspend$lambda$0(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/analytics/stat/StatTracker;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    iput-object p2, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->$accessToken:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 6

    .line 65
    invoke-static {p0}, Lcom/vk/id/analytics/stat/StatTracker;->access$getApi$p(Lcom/vk/id/analytics/stat/StatTracker;)Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/InternalVKIDApiContract;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/vk/id/network/InternalVKIDApiContract;->sendStatEventsAnonymously(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;

    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    iget-object v1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->$accessToken:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;-><init>(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 61
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    .line 63
    invoke-static {p1}, Lcom/vk/id/analytics/stat/StatTracker;->access$getAnonymousBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    .line 61
    iget-object v4, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    new-instance v5, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/analytics/stat/StatTracker;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->label:I

    const-string v3, ""

    invoke-static {p1, v3, v1, v5, v4}, Lcom/vk/id/analytics/stat/StatTracker;->access$sendEvents(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 74
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->$accessToken:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 75
    iget-object v1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    .line 77
    invoke-static {v1}, Lcom/vk/id/analytics/stat/StatTracker;->access$getPersonalizedBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    .line 78
    new-instance v4, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$2;

    iget-object v5, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v5}, Lcom/vk/id/analytics/stat/StatTracker;->access$getApi$p(Lcom/vk/id/analytics/stat/StatTracker;)Lkotlin/Lazy;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function6;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 75
    iput v2, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->label:I

    invoke-static {v1, p1, v3, v4, v5}, Lcom/vk/id/analytics/stat/StatTracker;->access$sendEvents(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlin/jvm/functions/Function6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 81
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
