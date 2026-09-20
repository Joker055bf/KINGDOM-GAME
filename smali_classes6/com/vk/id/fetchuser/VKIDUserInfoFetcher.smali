.class public final Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;
.super Ljava/lang/Object;
.source "VKIDUserInfoFetcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJN\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\"\u0010\u0010\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00112\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\r0\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;",
        "",
        "api",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "deviceIdProvider",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "<init>",
        "(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V",
        "fetch",
        "",
        "accessToken",
        "",
        "onSuccess",
        "Lkotlin/Function2;",
        "Lcom/vk/id/VKIDUser;",
        "Lkotlin/coroutines/Continuation;",
        "onFailedApiCall",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 15
    iput-object p2, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 16
    iput-object p3, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 17
    iput-object p4, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method


# virtual methods
.method public final fetch(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/vk/id/VKIDUser;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;

    iget v3, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;

    invoke-direct {v2, v0, v1}, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;-><init>(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 19
    iget v4, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v6, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v4, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v9, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iget-object v10, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v4, v1

    move-object v1, v9

    move-object/from16 v19, v11

    move-object v11, v10

    move-object/from16 v10, v19

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v1, v0, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$deviceId$1;

    invoke-direct {v9, v0, v8}, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$deviceId$1;-><init>(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v0, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$1:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$2:Ljava/lang/Object;

    move-object/from16 v12, p3

    iput-object v12, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$4:Ljava/lang/Object;

    iput v7, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    invoke-static {v1, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v7, v12

    move-object v12, v4

    move-object v4, v1

    move-object v1, v11

    move-object v11, v10

    move-object v10, v0

    .line 19
    :goto_1
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 26
    iget-object v4, v10, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v4}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v15, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$userInfoResult$1;

    const/4 v14, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$userInfoResult$1;-><init>(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    iput-object v1, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$4:Ljava/lang/Object;

    iput v6, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    invoke-static {v4, v15, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    return-object v3

    :cond_6
    move-object v6, v1

    move-object v1, v4

    move-object v4, v7

    :goto_2
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_7
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    check-cast v4, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;

    .line 37
    invoke-virtual {v4}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getFirstName()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v4}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getLastName()Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual {v4}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getAvatar()Ljava/lang/String;

    move-result-object v15

    .line 40
    invoke-virtual {v4}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getPhone()Ljava/lang/String;

    move-result-object v12

    .line 41
    invoke-virtual {v4}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;->getEmail()Ljava/lang/String;

    move-result-object v16

    .line 36
    new-instance v4, Lcom/vk/id/VKIDUser;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x18

    const/16 v18, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v18}, Lcom/vk/id/VKIDUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    iput-object v1, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher$fetch$1;->label:I

    invoke-interface {v6, v4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    .line 45
    :cond_8
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
