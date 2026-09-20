.class public final Lcom/vk/id/logout/VKIDLoggerOut;
.super Ljava/lang/Object;
.source "VKIDLoggerOut.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDLoggerOut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDLoggerOut.kt\ncom/vk/id/logout/VKIDLoggerOut\n+ 2 VKIDLogoutParams.kt\ncom/vk/id/logout/VKIDLogoutParamsKt\n*L\n1#1,56:1\n13#2:57\n*S KotlinDebug\n*F\n+ 1 VKIDLoggerOut.kt\ncom/vk/id/logout/VKIDLoggerOut\n*L\n26#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ6\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vk/id/logout/VKIDLoggerOut;",
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
        "<init>",
        "(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V",
        "logout",
        "",
        "callback",
        "Lcom/vk/id/logout/VKIDLogoutCallback;",
        "accessToken",
        "",
        "clearTokenStorage",
        "",
        "params",
        "Lcom/vk/id/logout/VKIDLogoutParams;",
        "(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 16
    iput-object p2, p0, Lcom/vk/id/logout/VKIDLoggerOut;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 17
    iput-object p3, p0, Lcom/vk/id/logout/VKIDLoggerOut;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 18
    iput-object p4, p0, Lcom/vk/id/logout/VKIDLoggerOut;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 19
    iput-object p5, p0, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/vk/id/logout/VKIDLoggerOut;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/vk/id/logout/VKIDLoggerOut;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method

.method public static final synthetic access$getTokenStorage$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/vk/id/logout/VKIDLoggerOut;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object p0
.end method

.method public static synthetic logout$default(Lcom/vk/id/logout/VKIDLoggerOut;Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 57
    new-instance p2, Lcom/vk/id/logout/VKIDLogoutParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;->build()Lcom/vk/id/logout/VKIDLogoutParams;

    move-result-object p4

    :cond_2
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/vk/id/logout/VKIDLoggerOut;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/logout/VKIDLogoutCallback;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vk/id/logout/VKIDLogoutParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;

    iget v3, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 21
    iget v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    iget-object v2, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/logout/VKIDLogoutCallback;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iget-object v6, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$2:Ljava/lang/Object;

    iget-object v7, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/logout/VKIDLogoutCallback;

    iget-object v8, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-boolean v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iget-object v7, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/vk/id/logout/VKIDLogoutCallback;

    iget-object v8, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/logout/VKIDLogoutCallback;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-boolean v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iget-object v9, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/vk/id/logout/VKIDLogoutCallback;

    iget-object v11, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v4

    move-object v4, v11

    move-object v11, v9

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object v1, v0, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;

    move-object/from16 v11, p2

    invoke-direct {v4, v11, v0, v10}, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;-><init>(Ljava/lang/String;Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v0, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    move/from16 v12, p3

    iput-boolean v12, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iput v9, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v0

    :goto_1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    if-nez v15, :cond_a

    .line 31
    move-object v1, v4

    check-cast v1, Lcom/vk/id/logout/VKIDLoggerOut;

    if-eqz v12, :cond_9

    .line 32
    iget-object v1, v4, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/vk/id/logout/VKIDLoggerOut$logout$4$1;

    invoke-direct {v5, v4, v10}, Lcom/vk/id/logout/VKIDLoggerOut$logout$4$1;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v11, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    invoke-static {v1, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    :cond_8
    move-object v2, v11

    :goto_2
    move-object v11, v2

    .line 33
    :cond_9
    new-instance v1, Lcom/vk/id/logout/VKIDLogoutFail$NotAuthenticated;

    const-string v2, "Not authorized, can\'t logout"

    invoke-direct {v1, v2}, Lcom/vk/id/logout/VKIDLogoutFail$NotAuthenticated;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/logout/VKIDLogoutFail;

    invoke-interface {v11, v1}, Lcom/vk/id/logout/VKIDLogoutCallback;->onFail(Lcom/vk/id/logout/VKIDLogoutFail;)V

    .line 34
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 36
    :cond_a
    iget-object v1, v4, Lcom/vk/id/logout/VKIDLoggerOut;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v16

    .line 37
    iget-object v1, v4, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;

    const/16 v18, 0x0

    move-object v13, v8

    move-object v14, v4

    invoke-direct/range {v13 .. v18}, Lcom/vk/id/logout/VKIDLoggerOut$logout$5;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    iput-boolean v12, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iput v7, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    invoke-static {v1, v8, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    return-object v3

    :cond_b
    move-object v8, v4

    move-object v7, v11

    move v4, v12

    :goto_3
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 44
    instance-of v11, v9, Lcom/vk/id/VKIDInvalidTokenException;

    if-eqz v11, :cond_e

    if-eqz v4, :cond_d

    .line 45
    iget-object v9, v8, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v9}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lcom/vk/id/logout/VKIDLoggerOut$logout$6$1;

    invoke-direct {v11, v8, v10}, Lcom/vk/id/logout/VKIDLoggerOut$logout$6$1;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v8, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$2:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->Z$0:Z

    iput v6, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    invoke-static {v9, v11, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_c

    return-object v3

    :cond_c
    move-object v6, v1

    :goto_4
    move-object v1, v6

    .line 46
    :cond_d
    invoke-interface {v7}, Lcom/vk/id/logout/VKIDLogoutCallback;->onSuccess()V

    goto :goto_5

    .line 48
    :cond_e
    new-instance v6, Lcom/vk/id/logout/VKIDLogoutFail$FailedApiCall;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to logout due to "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11, v9}, Lcom/vk/id/logout/VKIDLogoutFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v6, Lcom/vk/id/logout/VKIDLogoutFail;

    invoke-interface {v7, v6}, Lcom/vk/id/logout/VKIDLogoutCallback;->onFail(Lcom/vk/id/logout/VKIDLogoutFail;)V

    .line 50
    :cond_f
    :goto_5
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object v6, v1

    check-cast v6, Lkotlin/Unit;

    if-eqz v4, :cond_11

    .line 51
    iget-object v4, v8, Lcom/vk/id/logout/VKIDLoggerOut;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v4}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/vk/id/logout/VKIDLoggerOut$logout$7$1;

    invoke-direct {v6, v8, v10}, Lcom/vk/id/logout/VKIDLoggerOut$logout$7$1;-><init>(Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v7, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    invoke-static {v4, v6, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    return-object v3

    :cond_10
    move-object v2, v7

    :goto_6
    move-object v7, v2

    .line 52
    :cond_11
    invoke-interface {v7}, Lcom/vk/id/logout/VKIDLogoutCallback;->onSuccess()V

    .line 54
    :cond_12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
