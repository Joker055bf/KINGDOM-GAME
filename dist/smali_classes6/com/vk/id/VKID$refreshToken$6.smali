.class final Lcom/vk/id/VKID$refreshToken$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKID.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID;->refreshToken(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nVKID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$refreshToken$6\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,694:1\n116#2,10:695\n*S KotlinDebug\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID$refreshToken$6\n*L\n524#1:695,10\n*E\n"
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
    c = "com.vk.id.VKID$refreshToken$6"
    f = "VKID.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x2bb,
        0x20d
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
.field final synthetic $callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

.field final synthetic $params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method constructor <init>(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKID;",
            "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKID$refreshToken$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/VKID$refreshToken$6;->this$0:Lcom/vk/id/VKID;

    iput-object p2, p0, Lcom/vk/id/VKID$refreshToken$6;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iput-object p3, p0, Lcom/vk/id/VKID$refreshToken$6;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lcom/vk/id/VKID$refreshToken$6;

    iget-object v1, p0, Lcom/vk/id/VKID$refreshToken$6;->this$0:Lcom/vk/id/VKID;

    iget-object v2, p0, Lcom/vk/id/VKID$refreshToken$6;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v3, p0, Lcom/vk/id/VKID$refreshToken$6;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vk/id/VKID$refreshToken$6;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$refreshToken$6;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/vk/id/VKID$refreshToken$6;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/VKID$refreshToken$6;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/vk/id/VKID$refreshToken$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 523
    iget v1, p0, Lcom/vk/id/VKID$refreshToken$6;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/vk/id/VKID$refreshToken$6;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/vk/id/VKID$refreshToken$6;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iget-object v3, p0, Lcom/vk/id/VKID$refreshToken$6;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v5, p0, Lcom/vk/id/VKID$refreshToken$6;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/VKID;

    iget-object v6, p0, Lcom/vk/id/VKID$refreshToken$6;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 524
    iget-object p1, p0, Lcom/vk/id/VKID$refreshToken$6;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v5, p0, Lcom/vk/id/VKID$refreshToken$6;->this$0:Lcom/vk/id/VKID;

    iget-object v1, p0, Lcom/vk/id/VKID$refreshToken$6;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v6, p0, Lcom/vk/id/VKID$refreshToken$6;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    .line 699
    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/vk/id/VKID$refreshToken$6;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vk/id/VKID$refreshToken$6;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vk/id/VKID$refreshToken$6;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vk/id/VKID$refreshToken$6;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/vk/id/VKID$refreshToken$6;->label:I

    invoke-interface {p1, v4, v7}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v6

    .line 525
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/vk/id/VKID;->getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object v6

    const-string v7, "RefreshToken"

    new-instance v8, Lcom/vk/id/VKID$refreshToken$6$1$1;

    invoke-direct {v8, v5, v3, v1, v4}, Lcom/vk/id/VKID$refreshToken$6$1$1;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/vk/id/VKID$refreshToken$6;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$refreshToken$6;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$refreshToken$6;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vk/id/VKID$refreshToken$6;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/vk/id/VKID$refreshToken$6;->label:I

    invoke-interface {v6, v7, v8, p0}, Lcom/vk/id/tracking/core/PerformanceTracker;->runTrackingSuspend(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 528
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 529
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 703
    :goto_2
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
