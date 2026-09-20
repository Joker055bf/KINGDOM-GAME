.class public final Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChartboostMediationNetworking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->makeQueueRequest(ZLjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationNetworking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2\n+ 2 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking\n+ 3 ChartboostMediationNetworkingResult.kt\ncom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion\n*L\n1#1,404:1\n342#2,15:405\n54#3,39:420\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2\n*L\n383#1:420,39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u008a@\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "com/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.chartboost.heliumsdk.network.ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1"
    f = "ChartboostMediationNetworking.kt"
    i = {}
    l = {
        0x19c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $actualMaxQueueSize$inlined:Ljava/lang/Integer;

.field final synthetic $appSetId$inlined:Ljava/lang/String;

.field final synthetic $isRunning$inlined:Z

.field final synthetic $placementName$inlined:Ljava/lang/String;

.field final synthetic $queueCapacity$inlined:I

.field final synthetic $queueDepth$inlined:I

.field final synthetic $queueId$inlined:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$placementName$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$actualMaxQueueSize$inlined:Ljava/lang/Integer;

    iput p4, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueCapacity$inlined:I

    iput p5, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueDepth$inlined:I

    iput-object p6, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueId$inlined:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$isRunning$inlined:Z

    iput-object p8, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$appSetId$inlined:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$placementName$inlined:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$actualMaxQueueSize$inlined:Ljava/lang/Integer;

    iget v4, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueCapacity$inlined:I

    iget v5, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueDepth$inlined:I

    iget-object v6, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueId$inlined:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$isRunning$inlined:Z

    iget-object v8, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$appSetId$inlined:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ZLjava/lang/String;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "+",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "response.headers()"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v3, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->label:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    .line 412
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    goto :goto_1

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    :try_start_1
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 405
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;

    const/4 v8, 0x0

    .line 406
    iget-object v9, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$placementName$inlined:Ljava/lang/String;

    .line 408
    iget-object v10, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$actualMaxQueueSize$inlined:Ljava/lang/Integer;

    .line 407
    iget v11, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueCapacity$inlined:I

    .line 409
    iget v12, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueDepth$inlined:I

    .line 410
    iget-object v13, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueId$inlined:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v3

    .line 405
    invoke-direct/range {v7 .. v15}, Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 412
    sget-object v7, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->getApi()Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;

    move-result-object v7

    .line 414
    iget-boolean v8, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$isRunning$inlined:Z

    if-ne v8, v6, :cond_2

    .line 415
    sget-object v8, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->START_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->getEndpoint()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    if-nez v8, :cond_9

    .line 416
    sget-object v8, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->END_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->getEndpoint()Ljava/lang/String;

    move-result-object v8

    .line 418
    :goto_0
    new-instance v9, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;

    iget-object v10, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$queueId$inlined:Ljava/lang/String;

    iget-object v11, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->$appSetId$inlined:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iput v6, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;->label:I

    invoke-interface {v7, v8, v9, v3, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;->trackQueueRequest(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/ChartboostMediationHeaderMap$ChartboostQueueRequestMediationHeaderMap;Lcom/chartboost/heliumsdk/network/model/QueueRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast v3, Lretrofit2/Response;

    .line 383
    sget-object v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;->Companion:Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;

    .line 385
    sget-object v0, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->INSTANCE:Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;

    invoke-virtual {v0, v3}, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->transform(Lretrofit2/Response;)Lcom/chartboost/heliumsdk/network/NetworkError;

    move-result-object v0

    .line 421
    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_6

    .line 423
    :try_start_2
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    .line 424
    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v6

    .line 425
    invoke-virtual {v3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    .line 428
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v8

    .line 429
    sget-object v9, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    invoke-static {v9}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    .line 430
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_4

    const-string v10, ""

    :cond_4
    const-string v11, "response.body() ?: \"\""

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v8, v9, v10}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v4

    .line 423
    :goto_2
    invoke-direct {v0, v6, v7, v8}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;-><init>(ILokhttp3/Headers;Ljava/lang/Object;)V

    check-cast v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_2
    .catch Lkotlinx/serialization/SerializationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 444
    :try_start_3
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 446
    invoke-virtual {v3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    .line 447
    sget-object v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 444
    invoke-direct {v2, v5, v3, v6, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    move-object v0, v2

    check-cast v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_4

    :catch_0
    move-exception v0

    .line 437
    new-instance v6, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    .line 439
    invoke-virtual {v3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 437
    invoke-direct {v6, v5, v3, v2, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Lkotlinx/serialization/SerializationException;)V

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_4

    .line 453
    :cond_6
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 454
    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v7

    .line 455
    invoke-virtual {v3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    if-eqz v0, :cond_7

    .line 457
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/network/NetworkError;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v0

    if-nez v0, :cond_8

    .line 458
    :cond_7
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :cond_8
    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v2

    .line 453
    invoke-direct/range {v6 .. v12}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v2

    check-cast v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_4

    .line 416
    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 388
    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Error making network request: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 389
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 393
    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_a

    .line 394
    sget-object v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_3

    .line 396
    :cond_a
    sget-object v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_UNKNOWN_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 389
    :goto_3
    invoke-direct {v2, v5, v4, v3, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    move-object v0, v2

    check-cast v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    :goto_4
    return-object v0
.end method
