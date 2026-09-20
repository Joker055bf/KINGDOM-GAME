.class final Lcom/vk/id/TokensHandler$handle$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TokensHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/TokensHandler;->handle(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vk/id/VKIDUser;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/vk/id/VKIDUser;"
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
    c = "com.vk.id.TokensHandler$handle$2"
    f = "TokensHandler.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x1c,
        0x2a,
        0x2e
    }
    m = "invokeSuspend"
    n = {
        "scopes",
        "accessToken"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/vk/id/AccessToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

.field final synthetic $refreshAccessToken:Z

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/vk/id/TokensHandler;


# direct methods
.method constructor <init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lkotlin/jvm/functions/Function2;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            "Lcom/vk/id/TokensHandler;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/vk/id/AccessToken;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/TokensHandler$handle$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/TokensHandler$handle$2;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    iput-object p2, p0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    iput-object p3, p0, Lcom/vk/id/TokensHandler$handle$2;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iput-boolean p4, p0, Lcom/vk/id/TokensHandler$handle$2;->$refreshAccessToken:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v6, Lcom/vk/id/TokensHandler$handle$2;

    iget-object v1, p0, Lcom/vk/id/TokensHandler$handle$2;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    iget-object v2, p0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    iget-object v3, p0, Lcom/vk/id/TokensHandler$handle$2;->$onSuccess:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p0, Lcom/vk/id/TokensHandler$handle$2;->$refreshAccessToken:Z

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/TokensHandler$handle$2;-><init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lkotlin/jvm/functions/Function2;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Lcom/vk/id/VKIDUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKIDUser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/TokensHandler$handle$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/TokensHandler$handle$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/TokensHandler$handle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vk/id/VKIDUser;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/TokensHandler$handle$2;->invoke(Lcom/vk/id/VKIDUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget v2, v0, Lcom/vk/id/TokensHandler$handle$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/AccessToken;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/vk/id/VKIDUser;

    .line 27
    iget-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {v2}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getScope()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v5, [C

    const/4 v2, 0x0

    const/16 v6, 0x20

    aput-char v6, v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 28
    iget-object v6, v0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    invoke-static {v6}, Lcom/vk/id/TokensHandler;->access$getDispatchers$p(Lcom/vk/id/TokensHandler;)Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    move-result-object v6

    invoke-interface {v6}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;

    iget-object v7, v0, Lcom/vk/id/TokensHandler$handle$2;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    iget-object v8, v0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    const/4 v11, 0x0

    move-object v6, v13

    move-object v10, v2

    invoke-direct/range {v6 .. v11}, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;-><init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lcom/vk/id/VKIDUser;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/vk/id/TokensHandler$handle$2;->label:I

    invoke-static {v12, v13, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    .line 26
    :cond_4
    :goto_0
    check-cast v5, Lcom/vk/id/AccessToken;

    .line 38
    new-instance v10, Lcom/vk/id/RefreshToken;

    .line 39
    iget-object v6, v0, Lcom/vk/id/TokensHandler$handle$2;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {v6}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-direct {v10, v6, v2}, Lcom/vk/id/RefreshToken;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 42
    iget-object v2, v0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    invoke-static {v2}, Lcom/vk/id/TokensHandler;->access$getDispatchers$p(Lcom/vk/id/TokensHandler;)Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    move-result-object v2

    invoke-interface {v2}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/vk/id/TokensHandler$handle$2$1;

    iget-boolean v7, v0, Lcom/vk/id/TokensHandler$handle$2;->$refreshAccessToken:Z

    iget-object v8, v0, Lcom/vk/id/TokensHandler$handle$2;->this$0:Lcom/vk/id/TokensHandler;

    const/4 v11, 0x0

    move-object v6, v12

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/vk/id/TokensHandler$handle$2$1;-><init>(ZLcom/vk/id/TokensHandler;Lcom/vk/id/AccessToken;Lcom/vk/id/RefreshToken;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/vk/id/TokensHandler$handle$2;->label:I

    invoke-static {v2, v12, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, v5

    .line 46
    :goto_1
    iget-object v4, v0, Lcom/vk/id/TokensHandler$handle$2;->$onSuccess:Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/vk/id/TokensHandler$handle$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/TokensHandler$handle$2;->label:I

    invoke-interface {v4, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    .line 47
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
