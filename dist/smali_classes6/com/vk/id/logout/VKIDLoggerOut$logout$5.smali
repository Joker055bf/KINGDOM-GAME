.class final Lcom/vk/id/logout/VKIDLoggerOut$logout$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKIDLoggerOut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/logout/VKIDLoggerOut;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
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
    c = "com.vk.id.logout.VKIDLoggerOut$logout$5"
    f = "VKIDLoggerOut.kt"
    i = {}
    l = {
        0x2a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $deviceId:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/vk/id/logout/VKIDLoggerOut;


# direct methods
.method constructor <init>(Lcom/vk/id/logout/VKIDLoggerOut;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/logout/VKIDLoggerOut;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/logout/VKIDLoggerOut$logout$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    iput-object p2, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$clientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$deviceId:Ljava/lang/String;

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

    new-instance p1, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;

    iget-object v1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    iget-object v2, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$deviceId:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {p1}, Lcom/vk/id/logout/VKIDLoggerOut;->access$getApi$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/internal/api/VKIDApiService;

    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$token:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$clientId:Ljava/lang/String;

    .line 40
    iget-object v4, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->$deviceId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1, v3, v4}, Lcom/vk/id/internal/api/VKIDApiService;->logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 42
    iput v2, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;->label:I

    invoke-interface {p1, v1}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
