.class public final Lcom/vk/id/exchangetoken/VKIDTokenExchanger;
.super Ljava/lang/Object;
.source "VKIDTokenExchanger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J&\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0002\u0010\u001cJ.\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0082@\u00a2\u0006\u0002\u0010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vk/id/exchangetoken/VKIDTokenExchanger;",
        "",
        "api",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "deviceIdProvider",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "stateGenerator",
        "Lcom/vk/id/internal/state/StateGenerator;",
        "tokensHandler",
        "Lcom/vk/id/TokensHandler;",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "prefsStore",
        "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
        "pkceGenerator",
        "Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;",
        "<init>",
        "(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/state/StateGenerator;Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;)V",
        "exchange",
        "",
        "v1Token",
        "",
        "params",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
        "callback",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
        "(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleCode",
        "code",
        "codeVerifier",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final api:Lcom/vk/id/internal/api/VKIDApiService;

.field private final deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

.field private final pkceGenerator:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

.field private final prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

.field private final tokensHandler:Lcom/vk/id/TokensHandler;


# direct methods
.method public static synthetic $r8$lambda$bg6wxI8Gn3LRJMifR_Hxn-YrhFo(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->handleCode$lambda$4$lambda$3(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/state/StateGenerator;Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGenerator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokensHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsStore"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkceGenerator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 21
    iput-object p2, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 22
    iput-object p3, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 23
    iput-object p4, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    .line 24
    iput-object p5, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->tokensHandler:Lcom/vk/id/TokensHandler;

    .line 25
    iput-object p6, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 26
    iput-object p7, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    .line 27
    iput-object p8, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->pkceGenerator:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method

.method public static final synthetic access$getServiceCredentials$p(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;)Lcom/vk/id/internal/auth/ServiceCredentials;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    return-object p0
.end method

.method public static final synthetic access$getStateGenerator$p(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;)Lcom/vk/id/internal/state/StateGenerator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    return-object p0
.end method

.method public static final synthetic access$handleCode(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->handleCode(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleCode$lambda$4$onAuth(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->handleCode$lambda$4$onAuth(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleCode(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;

    iget v3, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v3

    move-object v3, v10

    move-object v10, v6

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->getCodeExchangeState$vkid_release()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$state$1;

    invoke-direct {v3, v0, v7}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$state$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v0, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$1:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$2:Ljava/lang/Object;

    move-object/from16 v11, p4

    iput-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$3:Ljava/lang/Object;

    iput v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    invoke-static {v1, v3, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    return-object v2

    :cond_5
    move-object v3, v0

    .line 78
    :goto_1
    check-cast v1, Ljava/lang/String;

    move-object v6, v3

    move-object v14, v9

    move-object v15, v10

    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object v6, v0

    move-object v3, v1

    move-object v14, v9

    move-object v15, v10

    .line 85
    :goto_2
    iget-object v1, v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$callResult$1;

    const/16 v17, 0x0

    move-object v12, v9

    move-object v13, v6

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$callResult$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$2:Ljava/lang/Object;

    iput-object v7, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$3:Ljava/lang/Object;

    iput v5, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    invoke-static {v1, v9, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_7

    return-object v2

    :cond_7
    move-object v5, v11

    :goto_3
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 96
    iget-object v10, v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v10}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 97
    new-instance v10, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to exchange code due to: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v10, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;

    invoke-interface {v5, v10}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V

    .line 99
    :cond_8
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, v1

    check-cast v9, Lcom/vk/id/internal/auth/VKIDTokenPayload;

    .line 100
    iget-object v10, v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v10}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 101
    invoke-virtual {v9}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 102
    new-instance v1, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedOAuthState;

    const-string v2, "Invalid state during code exchange"

    invoke-direct {v1, v2}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedOAuthState;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;

    invoke-interface {v5, v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V

    .line 103
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 105
    :cond_9
    iget-object v3, v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->tokensHandler:Lcom/vk/id/TokensHandler;

    .line 107
    new-instance v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$3$1;

    invoke-direct {v6, v5}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$3$1;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 105
    new-instance v10, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$$ExternalSyntheticLambda0;

    invoke-direct {v10, v5}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    iput-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->L$2:Ljava/lang/Object;

    iput v4, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$1;->label:I

    move-object v4, v9

    move-object v5, v6

    move-object v6, v10

    move v7, v11

    move v9, v12

    move-object v10, v13

    invoke-static/range {v3 .. v10}, Lcom/vk/id/TokensHandler;->handle$default(Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_a

    return-object v2

    .line 113
    :cond_a
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final handleCode$lambda$4$lambda$3(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;

    const-string v1, "Failed to fetch user data"

    invoke-direct {v0, v1, p1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;

    invoke-interface {p0, v0}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V

    .line 110
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic handleCode$lambda$4$onAuth(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-interface {p0, p1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onAuth(Lcom/vk/id/AccessToken;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final exchange(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;

    iget v3, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/internal/auth/VKIDCodePayload;

    iget-object v5, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$4:Ljava/lang/Object;

    iget-object v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v12, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v5

    move-object v5, v6

    move-object v7, v10

    move-object v6, v11

    goto/16 :goto_4

    :cond_3
    iget-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v12, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    iget-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    iget-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v12

    move-object v12, v11

    move-object/from16 v19, v10

    move-object v10, v1

    move-object/from16 v1, v19

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$deviceId$1;

    invoke-direct {v3, v0, v9}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$deviceId$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v0, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    move-object/from16 v12, p3

    iput-object v12, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    iput v7, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    invoke-static {v1, v3, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v15, v0

    move-object v3, v12

    move-object v12, v10

    move-object v10, v1

    move-object v1, v11

    .line 29
    :goto_1
    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    .line 35
    iget-object v10, v15, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {v10}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v13

    .line 36
    invoke-virtual {v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->getState$vkid_release()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    iget-object v10, v15, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    invoke-virtual {v10}, Lcom/vk/id/internal/state/StateGenerator;->regenerateState()Ljava/lang/String;

    move-result-object v10

    :cond_7
    move-object v11, v10

    .line 37
    invoke-virtual {v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->getCodeChallenge$vkid_release()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    .line 38
    iget-object v10, v15, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->pkceGenerator:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v7}, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->generateRandomCodeVerifier(Ljava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v7

    .line 39
    iget-object v10, v15, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->pkceGenerator:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

    invoke-virtual {v10, v7}, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    goto :goto_2

    .line 41
    :cond_8
    invoke-virtual {v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->getCodeChallenge$vkid_release()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 37
    :goto_2
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 43
    iget-object v7, v15, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v7}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v18, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$result$1;

    const/16 v17, 0x0

    move-object v4, v10

    move-object/from16 v10, v18

    move-object/from16 p1, v11

    move-object v11, v15

    move-object v5, v15

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$result$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v18

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v5, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    iput-object v4, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$4:Ljava/lang/Object;

    iput v6, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    invoke-static {v7, v10, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_9

    return-object v2

    :cond_9
    move-object v10, v3

    move-object v3, v4

    move-object v12, v5

    move-object/from16 v19, v11

    move-object v11, v1

    move-object v1, v6

    move-object/from16 v6, v19

    :goto_3
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    .line 52
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 53
    iget-object v4, v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v4}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 54
    new-instance v4, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to exchange token due to: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;

    invoke-interface {v10, v4}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V

    .line 56
    :cond_a
    invoke-static {v5}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v5

    check-cast v1, Lcom/vk/id/internal/auth/VKIDCodePayload;

    .line 57
    iget-object v4, v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v4}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 58
    invoke-virtual {v1}, Lcom/vk/id/internal/auth/VKIDCodePayload;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 59
    new-instance v1, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedOAuthState;

    const-string v2, "Invalid state during code receiving"

    invoke-direct {v1, v2}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail$FailedOAuthState;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;

    invoke-interface {v10, v1}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V

    .line 60
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 62
    :cond_b
    iget-object v4, v12, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v4}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$3$1;

    invoke-direct {v6, v12, v1, v9}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$3$1;-><init>(Lcom/vk/id/exchangetoken/VKIDTokenExchanger;Lcom/vk/id/internal/auth/VKIDCodePayload;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v12, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    iput-object v11, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    iput-object v10, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$4:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    invoke-static {v4, v6, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_c

    return-object v2

    :cond_c
    move-object v7, v10

    move-object v6, v11

    move-object/from16 v19, v3

    move-object v3, v1

    move-object v1, v5

    move-object/from16 v5, v19

    .line 63
    :goto_4
    new-instance v4, Lcom/vk/id/auth/AuthCodeData;

    .line 64
    invoke-virtual {v3}, Lcom/vk/id/internal/auth/VKIDCodePayload;->getCode()Ljava/lang/String;

    move-result-object v10

    .line 65
    invoke-virtual {v3}, Lcom/vk/id/internal/auth/VKIDCodePayload;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 63
    invoke-direct {v4, v10, v11}, Lcom/vk/id/auth/AuthCodeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_d

    const/4 v10, 0x1

    goto :goto_5

    :cond_d
    const/4 v10, 0x0

    .line 67
    :goto_5
    invoke-interface {v7, v4, v10}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;->onAuthCode(Lcom/vk/id/auth/AuthCodeData;Z)V

    if-nez v5, :cond_e

    .line 68
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 70
    :cond_e
    invoke-virtual {v3}, Lcom/vk/id/internal/auth/VKIDCodePayload;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 69
    iput-object v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$0:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$1:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$2:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$3:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$4:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->L$5:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v8, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$exchange$1;->label:I

    move-object v3, v12

    invoke-direct/range {v3 .. v8}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->handleCode(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_f

    return-object v2

    .line 76
    :cond_f
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
