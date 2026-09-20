.class public final Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;
.super Ljava/lang/Object;
.source "ChartboostMediationNetworkingResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\u0008\u0001\u0010\u0005\u0018\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0086\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;",
        "",
        "()V",
        "makeResult",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;",
        "T",
        "response",
        "Lretrofit2/Response;",
        "",
        "error",
        "Lcom/chartboost/heliumsdk/network/NetworkError;",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic makeResult(Lretrofit2/Response;Lcom/chartboost/heliumsdk/network/NetworkError;)Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/heliumsdk/network/NetworkError;",
            ")",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "response.headers()"

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, -0x1

    .line 57
    :try_start_0
    new-instance v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;

    .line 58
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Lokhttp3/Headers;

    .line 61
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 62
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    const-string v5, "T"

    const/4 v7, 0x6

    .line 63
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v5, "kotlinx.serialization.serializer.simple"

    invoke-static {v5}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 64
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, ""

    :cond_0
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v5, v6}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 57
    :cond_1
    invoke-direct {v1, v2, v3, v6}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Success;-><init>(ILokhttp3/Headers;Ljava/lang/Object;)V

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    new-instance v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 80
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 81
    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 78
    invoke-direct {v1, p2, p1, v2, v0}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 71
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;

    .line 73
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lokhttp3/Headers;

    .line 74
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 71
    invoke-direct {v2, p2, p1, v0, v1}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$JsonParsingFailure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Lkotlinx/serialization/SerializationException;)V

    move-object v1, v2

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 78
    :goto_0
    move-object p1, v1

    check-cast p1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    goto :goto_1

    .line 87
    :cond_2
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    .line 88
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v3

    .line 89
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    if-eqz p2, :cond_3

    .line 91
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/network/NetworkError;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p1

    if-nez p1, :cond_4

    .line 92
    :cond_3
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :cond_4
    move-object v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v0

    .line 87
    invoke-direct/range {v2 .. v8}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    check-cast v1, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    :goto_1
    return-object v1
.end method
