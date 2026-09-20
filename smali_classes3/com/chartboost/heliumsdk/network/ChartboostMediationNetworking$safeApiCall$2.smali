.class public final Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChartboostMediationNetworking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->safeApiCall(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationNetworking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2\n+ 2 ChartboostMediationNetworkingResult.kt\ncom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion\n*L\n1#1,404:1\n54#2,39:405\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2\n*L\n383#1:405,39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.chartboost.heliumsdk.network.ChartboostMediationNetworking$safeApiCall$2"
    f = "ChartboostMediationNetworking.kt"
    i = {}
    l = {
        0x17d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiCall:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->$apiCall:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;

    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->$apiCall:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "response.headers()"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 379
    iget v2, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    :try_start_1
    iget-object p1, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->$apiCall:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 379
    :cond_2
    :goto_0
    check-cast p1, Lretrofit2/Response;

    .line 383
    sget-object v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;->Companion:Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;

    .line 385
    sget-object v1, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->INSTANCE:Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;

    invoke-virtual {v1, p1}, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->transform(Lretrofit2/Response;)Lcom/chartboost/heliumsdk/network/NetworkError;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 408
    :try_start_2
    new-instance v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    .line 409
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    .line 410
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Lokhttp3/Headers;

    .line 412
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_4

    .line 413
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v6

    const-string v7, "T?"

    const/4 v8, 0x6

    .line 414
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v7, "kotlinx.serialization.serializer.simple"

    invoke-static {v7}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    .line 415
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, ""

    :cond_3
    const-string v9, "response.body() ?: \"\""

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 413
    invoke-virtual {v6, v7, v8}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v4

    .line 408
    :goto_1
    invoke-direct {v1, v2, v3, v6}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;-><init>(ILokhttp3/Headers;Ljava/lang/Object;)V

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_2
    .catch Lkotlinx/serialization/SerializationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 429
    :try_start_3
    new-instance v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 431
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 432
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 429
    invoke-direct {v1, v5, p1, v2, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_2

    :catch_0
    move-exception v1

    .line 422
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    .line 424
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lokhttp3/Headers;

    .line 425
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 422
    invoke-direct {v2, v5, p1, v0, v1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Lkotlinx/serialization/SerializationException;)V

    move-object v1, v2

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 429
    :goto_2
    move-object p1, v1

    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_3

    .line 438
    :cond_5
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 439
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v7

    .line 440
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    if-eqz v1, :cond_6

    .line 442
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/network/NetworkError;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p1

    if-nez p1, :cond_7

    .line 443
    :cond_6
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :cond_7
    move-object v9, p1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v0

    .line 438
    invoke-direct/range {v6 .. v12}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 405
    :goto_3
    move-object p1, v1

    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 388
    :goto_4
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error making network request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 389
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 393
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_8

    .line 394
    sget-object v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_5

    .line 396
    :cond_8
    sget-object v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_UNKNOWN_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 389
    :goto_5
    invoke-direct {v0, v5, v4, v1, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    move-object v1, v0

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    :goto_6
    return-object v1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string p1, "response.headers()"

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;->$apiCall:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Response;

    .line 383
    sget-object v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;->Companion:Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;

    .line 385
    sget-object v3, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->INSTANCE:Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;

    invoke-virtual {v3, v2}, Lcom/chartboost/heliumsdk/network/NetworkErrorTransformer;->transform(Lretrofit2/Response;)Lcom/chartboost/heliumsdk/network/NetworkError;

    move-result-object v3

    .line 406
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 408
    :try_start_1
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    .line 409
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v4

    .line 410
    invoke-virtual {v2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Lokhttp3/Headers;

    .line 412
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 413
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v6

    const-string v7, "T?"

    const/4 v8, 0x6

    .line 414
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v7, "kotlinx.serialization.serializer.simple"

    invoke-static {v7}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    .line 415
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, ""

    :goto_0
    const-string v9, "response.body() ?: \"\""

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 413
    invoke-virtual {v6, v7, v8}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    .line 408
    :goto_1
    invoke-direct {v3, v4, v5, v6}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;-><init>(ILokhttp3/Headers;Ljava/lang/Object;)V

    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 429
    :try_start_2
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 431
    invoke-virtual {v2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 432
    sget-object v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 429
    invoke-direct {v3, v1, v2, v4, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_2

    :catch_0
    move-exception v3

    .line 422
    new-instance v4, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    .line 424
    invoke-virtual {v2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v2

    check-cast p1, Lokhttp3/Headers;

    .line 425
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 422
    invoke-direct {v4, v1, v2, p1, v3}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Lkotlinx/serialization/SerializationException;)V

    move-object v3, v4

    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 429
    :goto_2
    move-object p1, v3

    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_4

    .line 438
    :cond_2
    new-instance p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 439
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v4

    .line 440
    invoke-virtual {v2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    if-eqz v3, :cond_3

    .line 442
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/network/NetworkError;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 443
    :cond_3
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :goto_3
    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, p1

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    .line 438
    invoke-direct/range {v2 .. v8}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, p1

    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 405
    :goto_4
    move-object p1, v3

    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 388
    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error making network request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 389
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 393
    instance-of v3, p1, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_4

    .line 394
    sget-object v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_5

    .line 396
    :cond_4
    sget-object v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_UNKNOWN_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 389
    :goto_5
    invoke-direct {v2, v1, v0, v3, p1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    move-object v3, v2

    check-cast v3, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    :goto_6
    return-object v3
.end method
