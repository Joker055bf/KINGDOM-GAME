.class final Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealInternalVKIDCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "T",
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
    c = "com.vk.id.network.http.RealInternalVKIDCall$execute$2$job$1"
    f = "RealInternalVKIDCall.kt"
    i = {}
    l = {
        0x2b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/network/http/RealInternalVKIDCall<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vk/id/network/http/RealInternalVKIDCall;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/RealInternalVKIDCall<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;

    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-direct {p1, v0, p2}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;-><init>(Lcom/vk/id/network/http/RealInternalVKIDCall;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    :try_start_1
    iget-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {p1}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getHttpClient$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpClient;

    move-result-object p1

    iget-object v1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v1}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getRequest$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/vk/id/network/http/HttpClient;->executeWithInterceptors$network_release(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 41
    :cond_2
    :goto_0
    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    .line 45
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v0}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getResponseMapper$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v0}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getLogger$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v1}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getRequest$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Execution error during request to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 49
    :goto_2
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v0}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getLogger$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2$job$1;->this$0:Lcom/vk/id/network/http/RealInternalVKIDCall;

    invoke-static {v1}, Lcom/vk/id/network/http/RealInternalVKIDCall;->access$getRequest$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network error during request to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 47
    :goto_4
    throw p1
.end method
