.class public final Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;
.super Ljava/lang/Object;
.source "ChartboostMediationNetworking.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationNetworking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking\n*L\n1#1,404:1\n379#1:405\n379#1:406\n379#1:407\n379#1:408\n379#1:409\n379#1:410\n379#1:411\n379#1:412\n379#1:413\n379#1:414\n379#1:415\n379#1:416\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationNetworking.kt\ncom/chartboost/heliumsdk/network/ChartboostMediationNetworking\n*L\n117#1:405\n133#1:406\n150#1:407\n167#1:408\n187#1:409\n206#1:410\n221#1:411\n236#1:412\n277#1:413\n317#1:414\n341#1:415\n367#1:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0,2\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J)\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107Ja\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090,2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u001e\u0010@\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040A0A2\u0006\u0010B\u001a\u00020\u00042\u0006\u0010C\u001a\u00020DH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010EJM\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020D2\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010D2\u0006\u0010L\u001a\u00020D2\u0006\u0010M\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010NJ1\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u00042\u0006\u0010S\u001a\u00020TH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010UJG\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001HW0,\"\u0006\u0008\u0000\u0010W\u0018\u00012$\u0008\u0004\u0010X\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040[0Z\u0012\u0006\u0012\u0004\u0018\u00010\u00010YH\u0081H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\\JE\u0010]\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010I\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u00042\u0006\u0010_\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010`J+\u0010a\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0008\u00106\u001a\u0004\u0018\u00010\u00042\u0006\u0010b\u001a\u00020cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010dJ+\u0010e\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0008\u0010f\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010gJ)\u0010h\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010i\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010gJ=\u0010j\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010k\u001a\u00020l2\u0008\u00106\u001a\u0004\u0018\u00010\u00042\u0008\u0010M\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010oJ3\u0010p\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u00100\u001a\u00020\u00042\u0008\u0010f\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J)\u0010q\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030,2\u0006\u0010i\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010gR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R)\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008$\u0010\u0002R!\u0010%\u001a\u00020&8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0018\u0012\u0004\u0008\'\u0010\u0002\u001a\u0004\u0008(\u0010)\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006s"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;",
        "",
        "()V",
        "APP_SET_ID_HEADER_KEY",
        "",
        "AUCTION_ID_HEADER_KEY",
        "DEBUG_HEADER_KEY",
        "DEVICE_OS_HEADER_KEY",
        "DEVICE_OS_VERSION_HEADER_KEY",
        "INIT_HASH_HEADER_KEY",
        "MEDIATION_LOAD_ID_HEADER_KEY",
        "QUEUE_ID_HEADER_KEY",
        "RATE_LIMIT_HEADER_KEY",
        "REWARDED_CALLBACK_DELAY_MS",
        "",
        "SDK_VERSION_HEADER_KEY",
        "SESSION_ID_HEADER_KEY",
        "api",
        "Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;",
        "kotlin.jvm.PlatformType",
        "getApi$annotations",
        "getApi",
        "()Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;",
        "api$delegate",
        "Lkotlin/Lazy;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "client$delegate",
        "customInterceptor",
        "Lokhttp3/Interceptor;",
        "defaultInterceptor",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "jsonConverter",
        "Lretrofit2/Converter$Factory;",
        "getJsonConverter$annotations",
        "retrofitInstance",
        "Lretrofit2/Retrofit;",
        "getRetrofitInstance$annotations",
        "getRetrofitInstance",
        "()Lretrofit2/Retrofit;",
        "retrofitInstance$delegate",
        "getAppConfig",
        "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;",
        "Lcom/chartboost/heliumsdk/domain/AppConfig;",
        "appId",
        "initHash",
        "appSetId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logAuctionWinner",
        "",
        "bids",
        "Lcom/chartboost/heliumsdk/domain/Bids;",
        "loadId",
        "(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeBidRequest",
        "Lcom/chartboost/heliumsdk/domain/BidsResponse;",
        "privacyController",
        "Lcom/chartboost/heliumsdk/controllers/PrivacyController;",
        "partnerController",
        "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
        "adLoadParams",
        "Lcom/chartboost/heliumsdk/domain/AdLoadParams;",
        "bidTokens",
        "",
        "rateLimitHeaderValue",
        "impressionDepth",
        "",
        "(Lcom/chartboost/heliumsdk/controllers/PrivacyController;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Map;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeQueueRequest",
        "isRunning",
        "",
        "placementName",
        "queueCapacity",
        "actualMaxQueueSize",
        "queueDepth",
        "queueId",
        "(ZLjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeRewardedCallbackRequest",
        "activeBid",
        "Lcom/chartboost/heliumsdk/domain/Bid;",
        "customData",
        "rewardedCallbackData",
        "Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;",
        "(Lcom/chartboost/heliumsdk/domain/Bid;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "safeApiCall",
        "T",
        "apiCall",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lretrofit2/Response;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackAdLoad",
        "adType",
        "status",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackAdaptiveBannerSize",
        "bannerSizeBody",
        "Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;",
        "(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackChartboostImpression",
        "auctionID",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackClick",
        "auctionId",
        "trackEvent",
        "event",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        "metricsRequestBody",
        "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
        "(Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackPartnerImpression",
        "trackReward",
        "Method",
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


# static fields
.field public static final APP_SET_ID_HEADER_KEY:Ljava/lang/String; = "x-mediation-idfv"

.field public static final AUCTION_ID_HEADER_KEY:Ljava/lang/String; = "x-mediation-auction-id"

.field public static final DEBUG_HEADER_KEY:Ljava/lang/String; = "X-Helium-Debug"

.field public static final DEVICE_OS_HEADER_KEY:Ljava/lang/String; = "X-Helium-Device-OS"

.field public static final DEVICE_OS_VERSION_HEADER_KEY:Ljava/lang/String; = "X-Helium-Device-OS-Version"

.field public static final INIT_HASH_HEADER_KEY:Ljava/lang/String; = "x-helium-sdk-init-hash"

.field public static final INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

.field public static final MEDIATION_LOAD_ID_HEADER_KEY:Ljava/lang/String; = "X-Mediation-Load-ID"

.field public static final QUEUE_ID_HEADER_KEY:Ljava/lang/String; = "X-Mediation-Queue-ID"

.field public static final RATE_LIMIT_HEADER_KEY:Ljava/lang/String; = "X-Helium-Ratelimit-Reset"

.field private static final REWARDED_CALLBACK_DELAY_MS:J = 0x3e8L

.field public static final SDK_VERSION_HEADER_KEY:Ljava/lang/String; = "X-Helium-SDK-Version"

.field public static final SESSION_ID_HEADER_KEY:Ljava/lang/String; = "X-Helium-SessionID"

.field private static final api$delegate:Lkotlin/Lazy;

.field private static final client$delegate:Lkotlin/Lazy;

.field private static customInterceptor:Lokhttp3/Interceptor;

.field private static final defaultInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

.field private static final jsonConverter:Lretrofit2/Converter$Factory;

.field private static final retrofitInstance$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0ccQW5gejFKkA_1UwzRK4hDFAeU(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->defaultInterceptor$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    .line 62
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 63
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/KotlinSerializationConverterFactory;->create(Lkotlinx/serialization/StringFormat;Lokhttp3/MediaType;)Lretrofit2/Converter$Factory;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->jsonConverter:Lretrofit2/Converter$Factory;

    .line 67
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 75
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 74
    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->defaultInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 78
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$client$2;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$client$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->client$delegate:Lkotlin/Lazy;

    .line 88
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$retrofitInstance$2;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$retrofitInstance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->retrofitInstance$delegate:Lkotlin/Lazy;

    .line 99
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$api$2;->INSTANCE:Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$api$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->api$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClient(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomInterceptor$p()Lokhttp3/Interceptor;
    .locals 1

    .line 40
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->customInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public static final synthetic access$getDefaultInterceptor$p()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 40
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->defaultInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method public static final synthetic access$getJsonConverter$p()Lretrofit2/Converter$Factory;
    .locals 1

    .line 40
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->jsonConverter:Lretrofit2/Converter$Factory;

    return-object v0
.end method

.method private static final defaultInterceptor$lambda$0(Ljava/lang/String;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/utils/LogController;->getLogLevel()Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->INFO:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/platform/Platform;->log$default(Lokhttp3/internal/platform/Platform;Ljava/lang/String;ILjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic getApi$annotations()V
    .locals 0

    return-void
.end method

.method private final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 78
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->client$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static synthetic getJsonConverter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRetrofitInstance$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic makeQueueRequest$default(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;ZLjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 331
    invoke-virtual/range {v1 .. v8}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->makeQueueRequest(ZLjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic trackAdLoad$default(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->trackAdLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getApi()Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;
    .locals 1

    .line 99
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->api$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationApi;

    return-object v0
.end method

.method public final getAppConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lcom/chartboost/heliumsdk/domain/AppConfig;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 416
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$getAppConfig$$inlined$safeApiCall$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$getAppConfig$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRetrofitInstance()Lretrofit2/Retrofit;
    .locals 2

    .line 88
    sget-object v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;->retrofitInstance$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-retrofitInstance>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method

.method public final logAuctionWinner(Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/domain/Bids;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;

    iget v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 230
    iget v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/Bids;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    sget-object p3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object p0, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    invoke-virtual {p3, v0}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 230
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 412
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$$inlined$safeApiCall$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/heliumsdk/domain/Bids;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$logAuctionWinner$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final makeBidRequest(Lcom/chartboost/heliumsdk/controllers/PrivacyController;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Map;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/controllers/PrivacyController;",
            "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
            "Lcom/chartboost/heliumsdk/domain/AdLoadParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lcom/chartboost/heliumsdk/domain/BidsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;

    iget v3, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 298
    iget v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/chartboost/heliumsdk/network/model/BidRequestBody;

    iget-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/chartboost/heliumsdk/domain/AdLoadParams;

    iget-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    new-instance v4, Lcom/chartboost/heliumsdk/network/model/BidRequestBody;

    move-object v9, v4

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move/from16 v13, p6

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/chartboost/heliumsdk/network/model/BidRequestBody;-><init>(Lcom/chartboost/heliumsdk/domain/AdLoadParams;Lcom/chartboost/heliumsdk/controllers/PartnerController;Lcom/chartboost/heliumsdk/controllers/PrivacyController;ILjava/util/Map;)V

    .line 315
    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object v0, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p5

    iput-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$3:Ljava/lang/Object;

    iput v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    .line 298
    :cond_4
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 414
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$$inlined$safeApiCall$1;

    const/4 v10, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v8

    move-object/from16 p4, v7

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BidRequestBody;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeBidRequest$1;->label:I

    invoke-static {v6, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final makeQueueRequest(ZLjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;

    iget v3, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 331
    iget v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->I$1:I

    iget v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->I$0:I

    iget-boolean v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->Z$0:Z

    iget-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v4

    move v13, v7

    move-object v12, v8

    move-object v8, v10

    move v10, v6

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object v0, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$1:Ljava/lang/Object;

    move-object/from16 v7, p4

    iput-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p6

    iput-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$3:Ljava/lang/Object;

    move/from16 v9, p1

    iput-boolean v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->Z$0:Z

    move/from16 v10, p3

    iput v10, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->I$0:I

    move/from16 v11, p5

    iput v11, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->I$1:I

    iput v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v12, v8

    move v13, v9

    move-object v8, v4

    move-object v9, v7

    .line 331
    :goto_1
    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 415
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;

    const/4 v7, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/String;ZLjava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeQueueRequest$1;->label:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final makeRewardedCallbackRequest(Lcom/chartboost/heliumsdk/domain/Bid;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/domain/Bid;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;

    iget v2, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 247
    iget v4, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->I$0:I

    iget-object v7, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    iget-object v8, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/chartboost/heliumsdk/utils/MacroHelper;

    iget-object v10, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;

    iget-object v11, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v7

    move-object v7, v8

    move-object v0, v10

    move v8, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    move-object v9, v11

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->I$0:I

    iget-object v7, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcom/chartboost/heliumsdk/utils/MacroHelper;

    iget-object v9, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;

    iget-object v10, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v8

    move v8, v4

    move-object/from16 v4, v20

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 254
    new-instance v0, Lcom/chartboost/heliumsdk/utils/MacroHelper;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdRevenue()D

    move-result-wide v15

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getCpmPrice()D

    move-result-wide v17

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerName()Ljava/lang/String;

    move-result-object v19

    move-object v11, v0

    move-object/from16 v14, p2

    .line 254
    invoke-direct/range {v11 .. v19}, Lcom/chartboost/heliumsdk/utils/MacroHelper;-><init>(JLjava/lang/String;DDLjava/lang/String;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/chartboost/heliumsdk/utils/MacroHelper;->replaceMacros(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 266
    new-instance v14, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 269
    sget-object v10, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INTERNAL_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v14

    .line 266
    invoke-direct/range {v7 .. v13}, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;-><init>(ILokhttp3/Headers;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v14, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 272
    invoke-virtual/range {p3 .. p3}, Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;->getMaxRetries()I

    move-result v7

    move-object v9, v2

    move v8, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object/from16 v0, p3

    :goto_1
    if-lez v8, :cond_6

    .line 274
    instance-of v10, v14, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, -0x1

    .line 413
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v10

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$$inlined$safeApiCall$1;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v0, v7, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/heliumsdk/domain/RewardedCallbackData;Ljava/lang/String;Lcom/chartboost/heliumsdk/utils/MacroHelper;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v9, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$3:Ljava/lang/Object;

    iput-object v12, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$4:Ljava/lang/Object;

    iput v8, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->I$0:I

    iput v6, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    invoke-static {v10, v11, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_4

    return-object v4

    :cond_4
    move-object/from16 v20, v9

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v10, v20

    :goto_2
    move-object v14, v0

    check-cast v14, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult;

    .line 290
    instance-of v0, v14, Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult$Failure;

    if-eqz v0, :cond_5

    .line 291
    iput-object v10, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$3:Ljava/lang/Object;

    iput-object v14, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->L$4:Ljava/lang/Object;

    iput v8, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->I$0:I

    iput v5, v3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$makeRewardedCallbackRequest$1;->label:I

    const-wide/16 v11, 0x3e8

    invoke-static {v11, v12, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v0, v9

    move-object v9, v10

    goto :goto_1

    :cond_6
    return-object v14
.end method

.method public final synthetic safeApiCall(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 379
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$safeApiCall$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object p1
.end method

.method public final trackAdLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;

    iget v3, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 178
    iget v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v11, v6

    move-object v10, v7

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object v0, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$1:Ljava/lang/Object;

    move-object/from16 v7, p2

    iput-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$3:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$4:Ljava/lang/Object;

    move-object/from16 v10, p5

    iput-object v10, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v11, v9

    move-object v12, v10

    move-object v9, v7

    move-object v10, v8

    move-object v8, v4

    .line 178
    :goto_1
    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 409
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$$inlined$safeApiCall$1;

    const/4 v7, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$4:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->L$5:Ljava/lang/Object;

    iput v5, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdLoad$1;->label:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final trackAdaptiveBannerSize(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;

    iget v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 215
    iget v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;

    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 219
    sget-object p3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object p0, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    invoke-virtual {p3, v0}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 215
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 411
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$$inlined$safeApiCall$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, p3, p2}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerSizeBody;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackAdaptiveBannerSize$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final trackChartboostImpression(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;

    iget v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    sget-object p3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object p0, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    invoke-virtual {p3, v0}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 111
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 405
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$$inlined$safeApiCall$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackChartboostImpression$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final trackClick(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;

    iget v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 144
    iget v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    sget-object p3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object p0, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    invoke-virtual {p3, v0}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 144
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 407
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$$inlined$safeApiCall$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackClick$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method

.method public final trackEvent(Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;

    iget v3, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 198
    iget v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    iget-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    iget-object v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v11, v6

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    sget-object v1, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object v0, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    iput-object v4, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$1:Ljava/lang/Object;

    move-object v7, p2

    iput-object v7, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$3:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$4:Ljava/lang/Object;

    iput v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v11, v8

    move-object v12, v9

    move-object v8, v4

    :goto_1
    move-object v9, v7

    .line 198
    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 410
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$$inlined$safeApiCall$1;

    const/4 v7, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackEvent$1;->label:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final trackPartnerImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 406
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackPartnerImpression$$inlined$safeApiCall$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3, p1}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackPartnerImpression$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final trackReward(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/network/model/ChartboostMediationNetworkingResult<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;

    iget v1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;-><init>(Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    sget-object p3, Lcom/chartboost/heliumsdk/utils/Environment;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Environment;

    iput-object p0, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    invoke-virtual {p3, v0}, Lcom/chartboost/heliumsdk/utils/Environment;->fetchAppSetId$Helium_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 161
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 408
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$$inlined$safeApiCall$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, p2, p3}, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$$inlined$safeApiCall$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/network/ChartboostMediationNetworking$trackReward$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3
.end method
