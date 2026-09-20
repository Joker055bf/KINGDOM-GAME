.class final Lcom/vk/id/VKID$exchangeTokenToV2$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKID.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID;->exchangeTokenToV2(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nVKID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$exchangeTokenToV2$6\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,694:1\n116#2,10:695\n*S KotlinDebug\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$exchangeTokenToV2$6\n*L\n566#1:695,10\n*E\n"
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
    c = "com.vk.id.VKID$exchangeTokenToV2$6"
    f = "VKID.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x2bb,
        0x237
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

.field final synthetic $params:Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

.field final synthetic $v1Token:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method constructor <init>(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKID;",
            "Ljava/lang/String;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKID$exchangeTokenToV2$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->this$0:Lcom/vk/id/VKID;

    iput-object p2, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$v1Token:Ljava/lang/String;

    iput-object p3, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$params:Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iput-object p4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$callback:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/vk/id/VKID$exchangeTokenToV2$6;

    iget-object v1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->this$0:Lcom/vk/id/VKID;

    iget-object v2, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$v1Token:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$params:Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$callback:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/VKID$exchangeTokenToV2$6;-><init>(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$exchangeTokenToV2$6;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$exchangeTokenToV2$6;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/VKID$exchangeTokenToV2$6;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/vk/id/VKID$exchangeTokenToV2$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 565
    iget v1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v3, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v5, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/VKID;

    iget-object v7, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v8, v3

    move-object p1, v7

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    iget-object p1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v6, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->this$0:Lcom/vk/id/VKID;

    iget-object v5, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$v1Token:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$params:Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v7, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->$callback:Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    .line 699
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$3:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->label:I

    invoke-interface {p1, v4, v8}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v1

    move-object v9, v7

    :goto_0
    move-object v7, v5

    .line 567
    :try_start_1
    invoke-virtual {v6}, Lcom/vk/id/VKID;->getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object v1

    const-string v3, "ExchangeTokenToV2"

    new-instance v11, Lcom/vk/id/VKID$exchangeTokenToV2$6$1$1;

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/VKID$exchangeTokenToV2$6$1$1;-><init>(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$3:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/vk/id/VKID$exchangeTokenToV2$6;->label:I

    invoke-interface {v1, v3, v11, p0}, Lcom/vk/id/tracking/core/PerformanceTracker;->runTrackingSuspend(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 570
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 571
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    .line 703
    :goto_2
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
