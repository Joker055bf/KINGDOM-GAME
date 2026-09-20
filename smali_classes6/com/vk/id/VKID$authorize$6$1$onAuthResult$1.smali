.class final Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKID.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID$authorize$6$1;->onAuthResult(Lcom/vk/id/internal/auth/AuthResult;)V
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
    c = "com.vk.id.VKID$authorize$6$1$onAuthResult$1"
    f = "VKID.kt"
    i = {}
    l = {
        0x1d9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $actualParams:Lcom/vk/id/auth/VKIDAuthParams;

.field final synthetic $authResult:Lcom/vk/id/internal/auth/AuthResult;

.field final synthetic $performanceKey:Ljava/lang/String;

.field final synthetic $statParams:Lcom/vk/id/StatParams;

.field label:I

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method public static synthetic $r8$lambda$0RwD7gcmF91fzxVoPQTjCQ5dwf8(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->invokeSuspend$lambda$0(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/vk/id/VKID;Lcom/vk/id/internal/auth/AuthResult;Ljava/lang/String;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKID;",
            "Lcom/vk/id/internal/auth/AuthResult;",
            "Ljava/lang/String;",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lcom/vk/id/StatParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    iput-object p2, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$authResult:Lcom/vk/id/internal/auth/AuthResult;

    iput-object p3, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$performanceKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iput-object p5, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$statParams:Lcom/vk/id/StatParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lkotlin/Unit;
    .locals 0

    .line 474
    invoke-virtual {p0}, Lcom/vk/id/auth/VKIDAuthParams;->getInternalUse$vkid_release()Z

    move-result p0

    if-nez p0, :cond_0

    .line 475
    sget-object p0, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;->INSTANCE:Lcom/vk/id/internal/analytics/CustomAuthAnalytics;

    invoke-virtual {p0, p1}, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;->customAuthError$vkid_release(Lcom/vk/id/StatParams;)V

    .line 477
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    iget-object v2, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$authResult:Lcom/vk/id/internal/auth/AuthResult;

    iget-object v3, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$performanceKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v5, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$statParams:Lcom/vk/id/StatParams;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/internal/auth/AuthResult;Ljava/lang/String;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 472
    iget v1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 473
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getAuthResultHandler$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/AuthResultHandler;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$authResult:Lcom/vk/id/internal/auth/AuthResult;

    iget-object v3, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v4, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$statParams:Lcom/vk/id/StatParams;

    new-instance v5, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->label:I

    invoke-virtual {p1, v1, v5, v3}, Lcom/vk/id/AuthResultHandler;->handle$vkid_release(Lcom/vk/id/internal/auth/AuthResult;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 478
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    invoke-virtual {p1}, Lcom/vk/id/VKID;->getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$performanceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/vk/id/tracking/core/PerformanceTracker;->endTracking(Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 480
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 482
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
