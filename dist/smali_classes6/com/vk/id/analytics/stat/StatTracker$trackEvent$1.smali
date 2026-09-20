.class final Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatTracker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/analytics/stat/StatTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
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
    c = "com.vk.id.analytics.stat.StatTracker$trackEvent$1"
    f = "StatTracker.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $params:[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

.field label:I

.field final synthetic this$0:Lcom/vk/id/analytics/stat/StatTracker;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
            "Lcom/vk/id/analytics/stat/StatTracker;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$params:[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    iput-object p3, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    iput-object p4, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$accessToken:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;

    iget-object v1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$params:[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    iget-object v3, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    iget-object v4, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$accessToken:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;-><init>(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 55
    iget v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    new-instance p1, Lcom/vk/id/analytics/stat/StatEventJson;

    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$params:[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    iget-object v2, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v2}, Lcom/vk/id/analytics/stat/StatTracker;->access$getEventCounter$p(Lcom/vk/id/analytics/stat/StatTracker;)Lcom/vk/id/analytics/stat/EventCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/id/analytics/stat/EventCounter;->getEventId()I

    move-result v2

    iget-object v3, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v3}, Lcom/vk/id/analytics/stat/StatTracker;->access$getEventCounter$p(Lcom/vk/id/analytics/stat/StatTracker;)Lcom/vk/id/analytics/stat/EventCounter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/id/analytics/stat/EventCounter;->getPrevEventId()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/vk/id/analytics/stat/StatEventJson;-><init>(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;II)V

    .line 57
    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v0}, Lcom/vk/id/analytics/stat/StatTracker;->access$getEventCounter$p(Lcom/vk/id/analytics/stat/StatTracker;)Lcom/vk/id/analytics/stat/EventCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/analytics/stat/EventCounter;->increment()V

    .line 58
    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v0}, Lcom/vk/id/analytics/stat/StatTracker;->access$getAnonymousBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {v0}, Lcom/vk/id/analytics/stat/StatTracker;->access$getPersonalizedBatchEvents$p(Lcom/vk/id/analytics/stat/StatTracker;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/vk/id/analytics/stat/StatEventJson;->getJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    invoke-static {p1}, Lcom/vk/id/analytics/stat/StatTracker;->access$getTrackerScope$p(Lcom/vk/id/analytics/stat/StatTracker;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;

    iget-object v3, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->this$0:Lcom/vk/id/analytics/stat/StatTracker;

    iget-object v4, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1;->$accessToken:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p1, v3, v4, v5}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;-><init>(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
