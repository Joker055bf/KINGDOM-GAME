.class final Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InternalVKIDGroupSubscriptionApiService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->subscribeToGroup(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.vk.id.network.groupsubscription.InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2"
    f = "InternalVKIDGroupSubscriptionApiService.kt"
    i = {}
    l = {
        0x63
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field final synthetic $groupId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;


# direct methods
.method constructor <init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    iput-object p2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$groupId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;

    iget-object v0, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$groupId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->label:I

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

    .line 99
    iget-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    invoke-static {p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->access$getApi$p(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;

    move-result-object p1

    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->$groupId:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->subscribeToGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;->label:I

    invoke-interface {p1, v1}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 100
    :cond_2
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    .line 101
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 104
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 102
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
