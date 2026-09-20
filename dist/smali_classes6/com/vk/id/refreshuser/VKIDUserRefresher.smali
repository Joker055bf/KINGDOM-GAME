.class public final Lcom/vk/id/refreshuser/VKIDUserRefresher;
.super Ljava/lang/Object;
.source "VKIDUserRefresher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDUserRefresher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDUserRefresher.kt\ncom/vk/id/refreshuser/VKIDUserRefresher\n+ 2 VKIDRefreshTokenParams.kt\ncom/vk/id/refresh/VKIDRefreshTokenParamsKt\n+ 3 VKIDGetUserParams.kt\ncom/vk/id/refreshuser/VKIDGetUserParamsKt\n*L\n1#1,88:1\n17#2:89\n13#3:90\n*S KotlinDebug\n*F\n+ 1 VKIDUserRefresher.kt\ncom/vk/id/refreshuser/VKIDUserRefresher\n*L\n59#1:89\n31#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vk/id/refreshuser/VKIDUserRefresher;",
        "",
        "api",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "tokenStorage",
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "deviceIdProvider",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "refresher",
        "Lcom/vk/id/refresh/VKIDTokenRefresher;",
        "<init>",
        "(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/refresh/VKIDTokenRefresher;)V",
        "refresh",
        "",
        "callback",
        "Lcom/vk/id/refreshuser/VKIDGetUserCallback;",
        "params",
        "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
        "(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final refresher:Lcom/vk/id/refresh/VKIDTokenRefresher;

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/refresh/VKIDTokenRefresher;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 23
    iput-object p2, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 24
    iput-object p3, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 25
    iput-object p4, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 26
    iput-object p5, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 27
    iput-object p6, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->refresher:Lcom/vk/id/refresh/VKIDTokenRefresher;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/refreshuser/VKIDUserRefresher;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/refreshuser/VKIDUserRefresher;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method

.method public static final synthetic access$getTokenStorage$p(Lcom/vk/id/refreshuser/VKIDUserRefresher;)Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object p0
.end method

.method public static synthetic refresh$default(Lcom/vk/id/refreshuser/VKIDUserRefresher;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 90
    new-instance p2, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->build()Lcom/vk/id/refreshuser/VKIDGetUserParams;

    move-result-object p2

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/refreshuser/VKIDUserRefresher;->refresh(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final refresh(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refreshuser/VKIDGetUserCallback;",
            "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;

    iget v3, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;-><init>(Lcom/vk/id/refreshuser/VKIDUserRefresher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 29
    iget v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iget-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    iget-object v2, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/refreshuser/VKIDUserRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/refreshuser/VKIDGetUserParams;

    iget-object v6, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    iget-object v7, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/refreshuser/VKIDUserRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v26, v7

    move-object v7, v4

    move-object/from16 v4, v26

    goto/16 :goto_2

    :cond_3
    iget-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/refreshuser/VKIDGetUserParams;

    iget-object v9, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    iget-object v10, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/refreshuser/VKIDUserRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v4

    move-object v4, v10

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object v1, v0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v4

    .line 34
    iget-object v1, v0, Lcom/vk/id/refreshuser/VKIDUserRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$3;

    invoke-direct {v9, v0, v8}, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$3;-><init>(Lcom/vk/id/refreshuser/VKIDUserRefresher;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v0, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput v7, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    invoke-static {v1, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v13, v4

    move-object v9, v10

    move-object v7, v11

    move-object v4, v0

    :goto_1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    if-nez v12, :cond_6

    .line 37
    check-cast v4, Lcom/vk/id/refreshuser/VKIDUserRefresher;

    .line 38
    new-instance v1, Lcom/vk/id/refreshuser/VKIDGetUserFail$NotAuthenticated;

    const-string v2, "Not authorized"

    invoke-direct {v1, v2}, Lcom/vk/id/refreshuser/VKIDGetUserFail$NotAuthenticated;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/refreshuser/VKIDGetUserFail;

    invoke-interface {v9, v1}, Lcom/vk/id/refreshuser/VKIDGetUserCallback;->onFail(Lcom/vk/id/refreshuser/VKIDGetUserFail;)V

    .line 39
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 41
    :cond_6
    iget-object v1, v4, Lcom/vk/id/refreshuser/VKIDUserRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v16, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$5;

    const/4 v15, 0x0

    move-object/from16 v10, v16

    move-object v11, v4

    invoke-direct/range {v10 .. v15}, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$5;-><init>(Lcom/vk/id/refreshuser/VKIDUserRefresher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v16

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput v6, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    invoke-static {v1, v10, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v6, v9

    :goto_2
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 48
    instance-of v10, v9, Lcom/vk/id/VKIDInvalidTokenException;

    if-eqz v10, :cond_9

    .line 49
    iget-object v10, v4, Lcom/vk/id/refreshuser/VKIDUserRefresher;->refresher:Lcom/vk/id/refresh/VKIDTokenRefresher;

    .line 50
    new-instance v11, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;

    invoke-direct {v11, v6, v9}, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;-><init>(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Ljava/lang/Throwable;)V

    check-cast v11, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    .line 89
    new-instance v9, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;

    invoke-direct {v9}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;-><init>()V

    .line 60
    invoke-virtual {v7}, Lcom/vk/id/refreshuser/VKIDGetUserParams;->getRefreshTokenState$vkid_release()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->setState(Ljava/lang/String;)V

    .line 61
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    invoke-virtual {v9}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    move-result-object v7

    .line 49
    iput-object v4, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$1;->label:I

    invoke-virtual {v10, v11, v7, v2}, Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_8

    return-object v3

    :cond_8
    move-object v3, v1

    move-object v2, v4

    move-object v4, v6

    :goto_3
    move-object v1, v3

    move-object v6, v4

    move-object v4, v2

    goto :goto_4

    .line 64
    :cond_9
    new-instance v2, Lcom/vk/id/refreshuser/VKIDGetUserFail$FailedApiCall;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to fetch user data due to "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lcom/vk/id/refreshuser/VKIDGetUserFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Lcom/vk/id/refreshuser/VKIDGetUserFail;

    invoke-interface {v6, v2}, Lcom/vk/id/refreshuser/VKIDGetUserCallback;->onFail(Lcom/vk/id/refreshuser/VKIDGetUserFail;)V

    .line 66
    :cond_a
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast v1, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;

    .line 68
    invoke-virtual {v1}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getFirstName()Ljava/lang/String;

    move-result-object v10

    .line 69
    invoke-virtual {v1}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getLastName()Ljava/lang/String;

    move-result-object v11

    .line 70
    invoke-virtual {v1}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getAvatar()Ljava/lang/String;

    move-result-object v15

    .line 71
    invoke-virtual {v1}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getPhone()Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-virtual {v1}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getEmail()Ljava/lang/String;

    move-result-object v16

    .line 67
    new-instance v1, Lcom/vk/id/VKIDUser;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x18

    const/16 v18, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/vk/id/VKIDUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    iget-object v2, v4, Lcom/vk/id/refreshuser/VKIDUserRefresher;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    invoke-virtual {v2}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getAccessToken$vkid_release()Lcom/vk/id/AccessToken;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 75
    new-instance v8, Lcom/vk/id/AccessToken;

    .line 76
    invoke-virtual {v3}, Lcom/vk/id/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v18

    .line 77
    invoke-virtual {v3}, Lcom/vk/id/AccessToken;->getIdToken()Ljava/lang/String;

    move-result-object v19

    .line 78
    invoke-virtual {v3}, Lcom/vk/id/AccessToken;->getUserID()J

    move-result-wide v20

    .line 79
    invoke-virtual {v3}, Lcom/vk/id/AccessToken;->getExpireTime()J

    move-result-wide v22

    .line 81
    invoke-virtual {v3}, Lcom/vk/id/AccessToken;->getScopes()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v17, v8

    move-object/from16 v24, v1

    .line 75
    invoke-direct/range {v17 .. v25}, Lcom/vk/id/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V

    .line 74
    :cond_b
    invoke-virtual {v2, v8}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->setAccessToken$vkid_release(Lcom/vk/id/AccessToken;)V

    .line 84
    invoke-interface {v6, v1}, Lcom/vk/id/refreshuser/VKIDGetUserCallback;->onSuccess(Lcom/vk/id/VKIDUser;)V

    .line 86
    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
