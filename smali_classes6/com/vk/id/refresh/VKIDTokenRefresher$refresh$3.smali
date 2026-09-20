.class final Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKIDTokenRefresher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
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
    c = "com.vk.id.refresh.VKIDTokenRefresher$refresh$3"
    f = "VKIDTokenRefresher.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

.field label:I

.field final synthetic this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;


# direct methods
.method constructor <init>(Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
            "Lcom/vk/id/refresh/VKIDTokenRefresher;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iput-object p2, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;

    iget-object v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iget-object v1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-direct {p1, v0, v1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;-><init>(Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 35
    iget v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->$params:Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    invoke-virtual {p1}, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->getState$vkid_release()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {p1}, Lcom/vk/id/refresh/VKIDTokenRefresher;->access$getStateGenerator$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/state/StateGenerator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/internal/state/StateGenerator;->regenerateState()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v0}, Lcom/vk/id/refresh/VKIDTokenRefresher;->access$getDeviceIdProvider$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->getDeviceId$vkid_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
