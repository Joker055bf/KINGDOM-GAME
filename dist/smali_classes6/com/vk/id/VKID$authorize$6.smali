.class final Lcom/vk/id/VKID$authorize$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKID.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID;->authorize(Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$authorize$6\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,694:1\n326#2:695\n*S KotlinDebug\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$authorize$6\n*L\n459#1:695\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.vk.id.VKID$authorize$6"
    f = "VKID.kt"
    i = {
        0x0
    }
    l = {
        0x1c7,
        0x1e6
    }
    m = "invokeSuspend"
    n = {
        "actualParams"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vk/id/auth/VKIDAuthCallback;

.field final synthetic $params:Lcom/vk/id/auth/VKIDAuthParams;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method public static synthetic $r8$lambda$C4iOgvqdY4GC5iY6XKQFvc7TfOo(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/VKID$authorize$6;->invokeSuspend$lambda$0(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lcom/vk/id/VKID;",
            "Lcom/vk/id/auth/VKIDAuthCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKID$authorize$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/VKID$authorize$6;->$params:Lcom/vk/id/auth/VKIDAuthParams;

    iput-object p2, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    iput-object p3, p0, Lcom/vk/id/VKID$authorize$6;->$callback:Lcom/vk/id/auth/VKIDAuthCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams$Builder;)Lkotlin/Unit;
    .locals 0

    .line 453
    invoke-virtual {p0}, Lcom/vk/id/auth/VKIDAuthParams;->getLocale$vkid_release()Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->Companion:Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;

    invoke-virtual {p1}, Lcom/vk/id/VKID;->getInternalVKIDLocale()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;->fromLocale(Ljava/util/Locale;)Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object p0

    :cond_0
    invoke-virtual {p2, p0}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setLocale(Lcom/vk/id/auth/VKIDAuthParams$Locale;)V

    .line 454
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/vk/id/VKID$authorize$6;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6;->$params:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v2, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    iget-object v3, p0, Lcom/vk/id/VKID$authorize$6;->$callback:Lcom/vk/id/auth/VKIDAuthCallback;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vk/id/VKID$authorize$6;-><init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$authorize$6;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$authorize$6;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/VKID$authorize$6;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/vk/id/VKID$authorize$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 451
    iget v1, p0, Lcom/vk/id/VKID$authorize$6;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/vk/id/auth/VKIDAuthParams;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 452
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6;->$params:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    new-instance v5, Lcom/vk/id/VKID$authorize$6$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v1}, Lcom/vk/id/VKID$authorize$6$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;)V

    invoke-virtual {p1, v5}, Lcom/vk/id/auth/VKIDAuthParams;->newBuilder(Lkotlin/jvm/functions/Function1;)Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object v1

    .line 455
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/vk/id/VKID$authorize$6;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/vk/id/VKID$authorize$6;->label:I

    invoke-static {p1, v4, v5, v3, v4}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const-string v8, "Authorize"

    .line 457
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    invoke-virtual {p1}, Lcom/vk/id/VKID;->getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object p1

    invoke-interface {p1, v8}, Lcom/vk/id/tracking/core/PerformanceTracker;->startTracking(Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getAuthCallbacksHolder$p(Lcom/vk/id/VKID;)Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    move-result-object p1

    iget-object v3, p0, Lcom/vk/id/VKID$authorize$6;->$callback:Lcom/vk/id/auth/VKIDAuthCallback;

    invoke-virtual {p1, v3}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->add(Lcom/vk/id/auth/VKIDAuthCallback;)V

    .line 695
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    .line 461
    invoke-virtual {v1}, Lcom/vk/id/auth/VKIDAuthParams;->getInternalUse$vkid_release()Z

    move-result p1

    if-nez p1, :cond_4

    .line 462
    sget-object p1, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;->INSTANCE:Lcom/vk/id/internal/analytics/CustomAuthAnalytics;

    invoke-virtual {p1, v1}, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;->customAuthStart$vkid_release(Lcom/vk/id/auth/VKIDAuthParams;)Lcom/vk/id/StatParams;

    move-result-object p1

    goto :goto_2

    .line 464
    :cond_4
    new-instance p1, Lcom/vk/id/StatParams;

    .line 465
    invoke-virtual {v1}, Lcom/vk/id/auth/VKIDAuthParams;->getExtraParams$vkid_release()Ljava/util/Map;

    move-result-object v3

    const-string v5, ""

    if-eqz v3, :cond_5

    const-string v7, "flow_source"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_5
    move-object v3, v5

    .line 466
    :cond_6
    invoke-virtual {v1}, Lcom/vk/id/auth/VKIDAuthParams;->getExtraParams$vkid_release()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v9, "session_id"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v7

    .line 464
    :cond_8
    :goto_1
    invoke-direct {p1, v3, v5}, Lcom/vk/id/StatParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_2
    sget-object v3, Lcom/vk/id/internal/auth/AuthEventBridge;->INSTANCE:Lcom/vk/id/internal/auth/AuthEventBridge;

    new-instance v11, Lcom/vk/id/VKID$authorize$6$1;

    iget-object v7, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    move-object v5, v11

    move-object v9, v1

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/VKID$authorize$6$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)V

    check-cast v11, Lcom/vk/id/internal/auth/AuthEventBridge$Listener;

    invoke-virtual {v3, v11}, Lcom/vk/id/internal/auth/AuthEventBridge;->setListener$vkid_release(Lcom/vk/id/internal/auth/AuthEventBridge$Listener;)V

    .line 486
    iget-object v3, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    invoke-static {v3}, Lcom/vk/id/VKID;->access$getDispatchers$p(Lcom/vk/id/VKID;)Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    move-result-object v3

    invoke-interface {v3}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/vk/id/VKID$authorize$6$2;

    iget-object v6, p0, Lcom/vk/id/VKID$authorize$6;->this$0:Lcom/vk/id/VKID;

    invoke-direct {v5, v6, v1, p1, v4}, Lcom/vk/id/VKID$authorize$6$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/vk/id/VKID$authorize$6;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/vk/id/VKID$authorize$6;->label:I

    invoke-static {v3, v5, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 491
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
