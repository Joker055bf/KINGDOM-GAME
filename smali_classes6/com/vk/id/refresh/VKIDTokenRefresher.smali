.class public final Lcom/vk/id/refresh/VKIDTokenRefresher;
.super Ljava/lang/Object;
.source "VKIDTokenRefresher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDTokenRefresher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDTokenRefresher.kt\ncom/vk/id/refresh/VKIDTokenRefresher\n+ 2 VKIDRefreshTokenParams.kt\ncom/vk/id/refresh/VKIDRefreshTokenParamsKt\n*L\n1#1,80:1\n17#2:81\n*S KotlinDebug\n*F\n+ 1 VKIDTokenRefresher.kt\ncom/vk/id/refresh/VKIDTokenRefresher\n*L\n29#1:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vk/id/refresh/VKIDTokenRefresher;",
        "",
        "api",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "tokenStorage",
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
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
        "<init>",
        "(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/state/StateGenerator;Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;)V",
        "refresh",
        "",
        "callback",
        "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
        "params",
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
        "(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitUnauthorizedFail",
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

.field private final prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

.field private final tokensHandler:Lcom/vk/id/TokensHandler;


# direct methods
.method public static synthetic $r8$lambda$pMGtxKjfQuvwFkw3m3Rng_Q7Gl0(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh$lambda$2$lambda$1(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/state/StateGenerator;Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGenerator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokensHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsStore"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 19
    iput-object p2, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 20
    iput-object p3, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 21
    iput-object p4, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 22
    iput-object p5, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    .line 23
    iput-object p6, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->tokensHandler:Lcom/vk/id/TokensHandler;

    .line 24
    iput-object p7, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 25
    iput-object p8, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method

.method public static final synthetic access$getPrefsStore$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    return-object p0
.end method

.method public static final synthetic access$getStateGenerator$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/state/StateGenerator;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    return-object p0
.end method

.method public static final synthetic access$getTokenStorage$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object p0
.end method

.method private final emitUnauthorizedFail(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;)V
    .locals 2

    .line 78
    new-instance v0, Lcom/vk/id/refresh/VKIDRefreshTokenFail$NotAuthenticated;

    const-string v1, "You must login before refreshing token"

    invoke-direct {v0, v1}, Lcom/vk/id/refresh/VKIDRefreshTokenFail$NotAuthenticated;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/vk/id/refresh/VKIDRefreshTokenFail;

    invoke-interface {p1, v0}, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;->onFail(Lcom/vk/id/refresh/VKIDRefreshTokenFail;)V

    return-void
.end method

.method public static synthetic refresh$default(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 81
    new-instance p2, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    move-result-object p2

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final refresh$lambda$2$lambda$1(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {p0}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 62
    new-instance p0, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to fetch user data due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p0, Lcom/vk/id/refresh/VKIDRefreshTokenFail;

    .line 61
    invoke-interface {p1, p0}, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;->onFail(Lcom/vk/id/refresh/VKIDRefreshTokenFail;)V

    .line 64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;

    iget v3, v2, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 27
    iget v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

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

    iget-object v2, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iget-object v2, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iget-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v4, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iget-object v6, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v7, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v6

    move-object v11, v7

    goto/16 :goto_4

    :cond_3
    iget-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/vk/id/RefreshToken;

    iget-object v6, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iget-object v10, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    move-object v13, v6

    move-object v3, v10

    :goto_1
    move-object v6, v11

    goto/16 :goto_3

    :cond_4
    iget-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v7, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    iget-object v10, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    iget-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v7

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/vk/id/refresh/VKIDTokenRefresher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v3, v0, Lcom/vk/id/refresh/VKIDTokenRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v3}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$refreshToken$1;

    invoke-direct {v10, v0, v9}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$refreshToken$1;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v0, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput v7, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    invoke-static {v3, v10, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    return-object v2

    :cond_6
    move-object v10, v11

    move-object v11, v0

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    :goto_2
    check-cast v1, Lcom/vk/id/RefreshToken;

    if-nez v1, :cond_7

    .line 34
    invoke-direct {v11, v10}, Lcom/vk/id/refresh/VKIDTokenRefresher;->emitUnauthorizedFail(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 35
    :cond_7
    iget-object v7, v11, Lcom/vk/id/refresh/VKIDTokenRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v7}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;

    invoke-direct {v13, v12, v11, v9}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$3;-><init>(Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iput-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v10, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    iput-object v12, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$4:Ljava/lang/Object;

    iput v6, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    invoke-static {v7, v13, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_8

    return-object v2

    :cond_8
    move-object v13, v3

    move-object v3, v10

    move-object v7, v12

    move-object v12, v1

    move-object v1, v6

    goto :goto_1

    :goto_3
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 39
    iget-object v1, v6, Lcom/vk/id/refresh/VKIDTokenRefresher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v17, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$result$1;

    const/16 v16, 0x0

    move-object/from16 v10, v17

    move-object v11, v6

    move-object/from16 p1, v15

    invoke-direct/range {v10 .. v16}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$result$1;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/RefreshToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v17

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v6, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v3, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput-object v9, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$4:Ljava/lang/Object;

    iput v5, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    invoke-static {v1, v10, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    return-object v2

    :cond_9
    move-object v10, v3

    move-object v5, v7

    move-object v3, v11

    move-object v11, v6

    :goto_4
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v6, v1

    check-cast v6, Lcom/vk/id/internal/auth/VKIDTokenPayload;

    .line 48
    invoke-virtual {v6}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 49
    iget-object v1, v11, Lcom/vk/id/refresh/VKIDTokenRefresher;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v1}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 50
    new-instance v1, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedOAuthState;

    const-string v2, "Wrong state for getting user info"

    invoke-direct {v1, v2}, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedOAuthState;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/refresh/VKIDRefreshTokenFail;

    invoke-interface {v10, v1}, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;->onFail(Lcom/vk/id/refresh/VKIDRefreshTokenFail;)V

    .line 51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 53
    :cond_a
    iget-object v3, v11, Lcom/vk/id/refresh/VKIDTokenRefresher;->tokensHandler:Lcom/vk/id/TokensHandler;

    new-instance v7, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;

    invoke-direct {v7, v11, v10, v9}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    new-instance v9, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;

    invoke-direct {v9, v11, v10}, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;)V

    .line 65
    invoke-virtual {v5}, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->getRefreshAccessToken$vkid_release()Z

    move-result v12

    .line 53
    iput-object v11, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v10, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move v7, v12

    invoke-virtual/range {v3 .. v8}, Lcom/vk/id/TokensHandler;->handle(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_b

    return-object v2

    :cond_b
    move-object v2, v1

    move-object v3, v10

    move-object v4, v11

    :goto_5
    move-object v1, v2

    move-object v10, v3

    move-object v11, v4

    .line 68
    :cond_c
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 69
    iget-object v2, v11, Lcom/vk/id/refresh/VKIDTokenRefresher;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v2}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 71
    new-instance v2, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed code to refresh token due to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Lcom/vk/id/refresh/VKIDRefreshTokenFail;

    .line 70
    invoke-interface {v10, v2}, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;->onFail(Lcom/vk/id/refresh/VKIDRefreshTokenFail;)V

    .line 74
    :cond_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
