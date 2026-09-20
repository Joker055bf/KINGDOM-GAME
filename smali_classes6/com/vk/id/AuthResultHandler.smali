.class public final Lcom/vk/id/AuthResultHandler;
.super Ljava/lang/Object;
.source "AuthResultHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthResultHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthResultHandler.kt\ncom/vk/id/AuthResultHandler\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,144:1\n40#2:145\n1863#3,2:146\n1863#3,2:148\n1863#3,2:150\n*S KotlinDebug\n*F\n+ 1 AuthResultHandler.kt\ncom/vk/id/AuthResultHandler\n*L\n34#1:145\n71#1:146,2\n130#1:148,2\n137#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J&\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dH\u0080@\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ$\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dH\u0082@\u00a2\u0006\u0002\u0010#J\u000c\u0010$\u001a\u00020%*\u00020\u001bH\u0002J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020(H\u0002J\u001e\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020%2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/vk/id/AuthResultHandler;",
        "",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "callbacksHolder",
        "Lcom/vk/id/internal/auth/AuthCallbacksHolder;",
        "deviceIdProvider",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "prefsStore",
        "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "api",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "tokensHandler",
        "Lcom/vk/id/TokensHandler;",
        "loggerOut",
        "Lcom/vk/id/logout/VKIDLoggerOut;",
        "tokenStorage",
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "<init>",
        "(Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/auth/AuthCallbacksHolder;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/TokensHandler;Lcom/vk/id/logout/VKIDLoggerOut;Lcom/vk/id/storage/InternalVKIDTokenStorage;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "handle",
        "",
        "authResult",
        "Lcom/vk/id/internal/auth/AuthResult;",
        "onFail",
        "Lkotlin/Function0;",
        "handle$vkid_release",
        "(Lcom/vk/id/internal/auth/AuthResult;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleOauth",
        "oauth",
        "Lcom/vk/id/internal/auth/AuthResult$Success;",
        "(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toVKIDAuthFail",
        "Lcom/vk/id/VKIDAuthFail;",
        "emitAuthSuccess",
        "token",
        "Lcom/vk/id/AccessToken;",
        "emitAuthFail",
        "fail",
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

.field private final callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

.field private final deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final loggerOut:Lcom/vk/id/logout/VKIDLoggerOut;

.field private final prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

.field private final tokensHandler:Lcom/vk/id/TokensHandler;


# direct methods
.method public static synthetic $r8$lambda$8LX2qnYBXfh9D-Z3vaPmptn5GLM(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/AuthResultHandler;->handleOauth$lambda$3$lambda$2(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/auth/AuthCallbacksHolder;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/TokensHandler;Lcom/vk/id/logout/VKIDLoggerOut;Lcom/vk/id/storage/InternalVKIDTokenStorage;)V
    .locals 1

    const-string v0, "dispatchers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacksHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokensHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerOut"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenStorage"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vk/id/AuthResultHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 24
    iput-object p2, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    .line 25
    iput-object p3, p0, Lcom/vk/id/AuthResultHandler;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 26
    iput-object p4, p0, Lcom/vk/id/AuthResultHandler;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    .line 27
    iput-object p5, p0, Lcom/vk/id/AuthResultHandler;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 28
    iput-object p6, p0, Lcom/vk/id/AuthResultHandler;->api:Lcom/vk/id/internal/api/VKIDApiService;

    .line 29
    iput-object p7, p0, Lcom/vk/id/AuthResultHandler;->tokensHandler:Lcom/vk/id/TokensHandler;

    .line 30
    iput-object p8, p0, Lcom/vk/id/AuthResultHandler;->loggerOut:Lcom/vk/id/logout/VKIDLoggerOut;

    .line 31
    iput-object p9, p0, Lcom/vk/id/AuthResultHandler;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 145
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "getSimpleName(...)"

    const-string p3, "AuthResultHandler"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/vk/id/AuthResultHandler;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method

.method public static final synthetic access$emitAuthSuccess(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/AccessToken;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/vk/id/AuthResultHandler;->emitAuthSuccess(Lcom/vk/id/AccessToken;)V

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/api/VKIDApiService;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->api:Lcom/vk/id/internal/api/VKIDApiService;

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdProvider$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    return-object p0
.end method

.method public static final synthetic access$getLoggerOut$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/logout/VKIDLoggerOut;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->loggerOut:Lcom/vk/id/logout/VKIDLoggerOut;

    return-object p0
.end method

.method public static final synthetic access$getPrefsStore$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    return-object p0
.end method

.method public static final synthetic access$getServiceCredentials$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/auth/ServiceCredentials;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    return-object p0
.end method

.method public static final synthetic access$getTokenStorage$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/vk/id/AuthResultHandler;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object p0
.end method

.method public static final synthetic access$handleOauth(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/AuthResultHandler;->handleOauth(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKIDAuthFail;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->getAll()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/auth/VKIDAuthCallback;

    .line 138
    invoke-interface {v1, p1}, Lcom/vk/id/auth/VKIDAuthCallback;->onFail(Lcom/vk/id/VKIDAuthFail;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 141
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->clear()V

    return-void
.end method

.method private final emitAuthSuccess(Lcom/vk/id/AccessToken;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->getAll()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 148
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/auth/VKIDAuthCallback;

    .line 131
    invoke-interface {v1, p1}, Lcom/vk/id/auth/VKIDAuthCallback;->onAuth(Lcom/vk/id/AccessToken;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->clear()V

    return-void
.end method

.method private final handleOauth(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/auth/AuthResult$Success;",
            "Lkotlin/jvm/functions/Function0<",
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

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/vk/id/AuthResultHandler$handleOauth$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vk/id/AuthResultHandler$handleOauth$1;

    iget v4, v3, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vk/id/AuthResultHandler$handleOauth$1;

    invoke-direct {v3, v0, v2}, Lcom/vk/id/AuthResultHandler$handleOauth$1;-><init>(Lcom/vk/id/AuthResultHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v3

    iget-object v2, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 56
    iget v4, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    iget-object v4, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iget-object v6, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/AuthResultHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v4, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/AuthResultHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v4

    :cond_4
    move-object v4, v1

    goto/16 :goto_5

    :cond_5
    iget-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v4, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/internal/auth/AuthResult$Success;

    iget-object v8, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/vk/id/AuthResultHandler;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v4

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iget-object v2, v0, Lcom/vk/id/AuthResultHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v2}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/vk/id/AuthResultHandler$handleOauth$2;

    invoke-direct {v4, v0, v1, v10}, Lcom/vk/id/AuthResultHandler$handleOauth$2;-><init>(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v0, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    iput v8, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    invoke-static {v2, v4, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    return-object v3

    :cond_7
    move-object v8, v0

    move-object v13, v1

    move-object v1, v11

    :goto_1
    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 62
    invoke-virtual {v13}, Lcom/vk/id/internal/auth/AuthResult$Success;->getOauth()Lcom/vk/id/internal/auth/AuthResult$OAuth;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/vk/id/internal/auth/AuthResult$OAuth;->getState()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v10

    :goto_2
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 63
    iget-object v2, v8, Lcom/vk/id/AuthResultHandler;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 64
    invoke-virtual {v13}, Lcom/vk/id/internal/auth/AuthResult$Success;->getOauth()Lcom/vk/id/internal/auth/AuthResult$OAuth;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/vk/id/internal/auth/AuthResult$OAuth;->getState()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, v10

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid oauth state, want "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-interface {v2, v3, v10}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    new-instance v2, Lcom/vk/id/VKIDAuthFail$FailedOAuthState;

    const-string v3, "Invalid state"

    invoke-direct {v2, v3}, Lcom/vk/id/VKIDAuthFail$FailedOAuthState;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/vk/id/VKIDAuthFail;

    invoke-direct {v8, v2, v1}, Lcom/vk/id/AuthResultHandler;->emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V

    .line 68
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 71
    :cond_a
    iget-object v2, v8, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {v2}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->getAll()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/id/auth/VKIDAuthCallback;

    .line 72
    new-instance v11, Lcom/vk/id/auth/AuthCodeData;

    .line 73
    invoke-virtual {v13}, Lcom/vk/id/internal/auth/AuthResult$Success;->getOauth()Lcom/vk/id/internal/auth/AuthResult$OAuth;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vk/id/internal/auth/AuthResult$OAuth;->getCode()Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-virtual {v13}, Lcom/vk/id/internal/auth/AuthResult$Success;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-direct {v11, v12, v5}, Lcom/vk/id/auth/AuthCodeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object v5, v14

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-interface {v4, v11, v5}, Lcom/vk/id/auth/VKIDAuthCallback;->onAuthCode(Lcom/vk/id/auth/AuthCodeData;Z)V

    const/4 v5, 0x4

    goto :goto_4

    .line 78
    :cond_b
    move-object v2, v14

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 79
    iget-object v1, v8, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->clear()V

    .line 80
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 84
    :cond_c
    iget-object v2, v8, Lcom/vk/id/AuthResultHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v2}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;

    const/16 v16, 0x0

    move-object v11, v4

    move-object v12, v8

    invoke-direct/range {v11 .. v16}, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;-><init>(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v8, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    iput-object v10, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    iput v7, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    invoke-static {v2, v4, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_4

    return-object v3

    :goto_5
    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 95
    new-instance v5, Lcom/vk/id/VKIDAuthFail$FailedApiCall;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed code to token exchange api call: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Lcom/vk/id/VKIDAuthFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Lcom/vk/id/VKIDAuthFail;

    invoke-direct {v8, v5, v4}, Lcom/vk/id/AuthResultHandler;->emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V

    .line 97
    :cond_d
    iget-object v2, v8, Lcom/vk/id/AuthResultHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v2}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/vk/id/AuthResultHandler$handleOauth$accessToken$1;

    invoke-direct {v5, v8, v10}, Lcom/vk/id/AuthResultHandler$handleOauth$accessToken$1;-><init>(Lcom/vk/id/AuthResultHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v8, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    iput-object v4, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    iput-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    iput v6, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    invoke-static {v2, v5, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_e

    return-object v3

    :cond_e
    move-object v6, v8

    .line 56
    :goto_6
    check-cast v2, Lcom/vk/id/AccessToken;

    .line 98
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v5, v1

    check-cast v5, Lcom/vk/id/internal/auth/VKIDTokenPayload;

    .line 99
    iget-object v7, v6, Lcom/vk/id/AuthResultHandler;->tokensHandler:Lcom/vk/id/TokensHandler;

    new-instance v8, Lcom/vk/id/AuthResultHandler$handleOauth$5$1;

    invoke-direct {v8, v2, v6, v10}, Lcom/vk/id/AuthResultHandler$handleOauth$5$1;-><init>(Lcom/vk/id/AccessToken;Lcom/vk/id/AuthResultHandler;Lkotlin/coroutines/Continuation;)V

    move-object v2, v8

    check-cast v2, Lkotlin/jvm/functions/Function2;

    new-instance v8, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, v4}, Lcom/vk/id/AuthResultHandler$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    iput-object v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$0:Ljava/lang/Object;

    iput-object v10, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$1:Ljava/lang/Object;

    iput-object v10, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v9, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    move-object v4, v7

    move-object v6, v2

    move-object v7, v8

    move v8, v11

    move v10, v12

    move-object v11, v13

    invoke-static/range {v4 .. v11}, Lcom/vk/id/TokensHandler;->handle$default(Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    return-object v3

    .line 120
    :cond_f
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final handleOauth$lambda$3$lambda$2(Lcom/vk/id/AuthResultHandler;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/vk/id/VKIDAuthFail$FailedApiCall;

    const-string v1, "Failed to fetch user data"

    invoke-direct {v0, v1, p2}, Lcom/vk/id/VKIDAuthFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/vk/id/VKIDAuthFail;

    invoke-direct {p0, v0, p1}, Lcom/vk/id/AuthResultHandler;->emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final toVKIDAuthFail(Lcom/vk/id/internal/auth/AuthResult;)Lcom/vk/id/VKIDAuthFail;
    .locals 2

    .line 123
    instance-of v0, p1, Lcom/vk/id/internal/auth/AuthResult$Canceled;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vk/id/VKIDAuthFail$Canceled;

    check-cast p1, Lcom/vk/id/internal/auth/AuthResult$Canceled;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$Canceled;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/id/VKIDAuthFail$Canceled;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/vk/id/VKIDAuthFail;

    goto :goto_0

    .line 124
    :cond_0
    instance-of v0, p1, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;

    check-cast p1, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/vk/id/VKIDAuthFail;

    goto :goto_0

    .line 125
    :cond_1
    instance-of v0, p1, Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vk/id/VKIDAuthFail$FailedRedirectActivity;

    check-cast p1, Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/vk/id/VKIDAuthFail$FailedRedirectActivity;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/vk/id/VKIDAuthFail;

    :goto_0
    return-object v0

    .line 126
    :cond_2
    instance-of p1, p1, Lcom/vk/id/internal/auth/AuthResult$Success;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AuthResult is Success and cannot be converted to fail!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final handle$vkid_release(Lcom/vk/id/internal/auth/AuthResult;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/auth/AuthResult;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/vk/id/AuthResultHandler;->callbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/AuthCallbacksHolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/vk/id/internal/auth/AuthResult$Success;

    if-nez v0, :cond_1

    .line 44
    invoke-direct {p0, p1}, Lcom/vk/id/AuthResultHandler;->toVKIDAuthFail(Lcom/vk/id/internal/auth/AuthResult;)Lcom/vk/id/VKIDAuthFail;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/vk/id/AuthResultHandler;->emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V

    .line 45
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler;->prefsStore:Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {p1}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 46
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 49
    :cond_1
    check-cast p1, Lcom/vk/id/internal/auth/AuthResult$Success;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$Success;->getOauth()Lcom/vk/id/internal/auth/AuthResult$OAuth;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/AuthResultHandler;->handleOauth(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 52
    :cond_3
    new-instance p1, Lcom/vk/id/VKIDAuthFail$FailedOAuth;

    const-string p3, "OAuth provider response does not have necessary OAuth data."

    invoke-direct {p1, p3}, Lcom/vk/id/VKIDAuthFail$FailedOAuth;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/vk/id/VKIDAuthFail;

    invoke-direct {p0, p1, p2}, Lcom/vk/id/AuthResultHandler;->emitAuthFail(Lcom/vk/id/VKIDAuthFail;Lkotlin/jvm/functions/Function0;)V

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
