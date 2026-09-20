.class public final Lcom/vk/id/internal/user/UserDataFetcher;
.super Ljava/lang/Object;
.source "UserDataFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;,
        Lcom/vk/id/internal/user/UserDataFetcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserDataFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataFetcher.kt\ncom/vk/id/internal/user/UserDataFetcher\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,50:1\n116#2,9:51\n*S KotlinDebug\n*F\n+ 1 UserDataFetcher.kt\ncom/vk/id/internal/user/UserDataFetcher\n*L\n28#1:51,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/internal/user/UserDataFetcher;",
        "",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "vkSilentAuthInfoProvider",
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
        "<init>",
        "(Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;)V",
        "fetchUserData",
        "Lcom/vk/id/VKIDUser;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "CachedUserWithTimeFetched",
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
.field public static final $stable:I = 0x0

.field private static final CACHED_USER_TIME_TO_EXPIRE_MS:I = 0x1f4

.field public static final Companion:Lcom/vk/id/internal/user/UserDataFetcher$Companion;

.field private static cachedUserData:Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;

.field private static final fetchUserMutex:Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

.field private final serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

.field private final vkSilentAuthInfoProvider:Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/internal/user/UserDataFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/user/UserDataFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/user/UserDataFetcher;->Companion:Lcom/vk/id/internal/user/UserDataFetcher$Companion;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 23
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/user/UserDataFetcher;->fetchUserMutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;Lcom/vk/id/internal/auth/ServiceCredentials;Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;)V
    .locals 1

    const-string v0, "dispatchers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vkSilentAuthInfoProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vk/id/internal/user/UserDataFetcher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 18
    iput-object p2, p0, Lcom/vk/id/internal/user/UserDataFetcher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 19
    iput-object p3, p0, Lcom/vk/id/internal/user/UserDataFetcher;->vkSilentAuthInfoProvider:Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;

    return-void
.end method

.method public static final synthetic access$getServiceCredentials$p(Lcom/vk/id/internal/user/UserDataFetcher;)Lcom/vk/id/internal/auth/ServiceCredentials;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/internal/user/UserDataFetcher;->serviceCredentials:Lcom/vk/id/internal/auth/ServiceCredentials;

    return-object p0
.end method

.method public static final synthetic access$getVkSilentAuthInfoProvider$p(Lcom/vk/id/internal/user/UserDataFetcher;)Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/internal/user/UserDataFetcher;->vkSilentAuthInfoProvider:Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;

    return-object p0
.end method


# virtual methods
.method public final fetchUserData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKIDUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;

    iget v1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;-><init>(Lcom/vk/id/internal/user/UserDataFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/internal/user/UserDataFetcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/vk/id/internal/user/UserDataFetcher;->fetchUserMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 55
    iput-object p0, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 29
    :goto_1
    :try_start_1
    sget-object v2, Lcom/vk/id/internal/user/UserDataFetcher;->cachedUserData:Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;

    if-eqz v2, :cond_5

    .line 30
    invoke-virtual {v2}, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->isValid()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 31
    invoke-virtual {v2}, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->getData()Lcom/vk/id/VKIDUser;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 35
    :cond_5
    :try_start_2
    iget-object v2, v4, Lcom/vk/id/internal/user/UserDataFetcher;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {v2}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;

    invoke-direct {v6, v4, v5}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;-><init>(Lcom/vk/id/internal/user/UserDataFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$1;->label:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    .line 28
    :goto_2
    :try_start_3
    check-cast p1, Lcom/vk/silentauth/SilentAuthInfo;

    if-eqz p1, :cond_7

    .line 39
    invoke-static {p1}, Lcom/vk/id/VKIDUserKt;->toVKIDUser(Lcom/vk/silentauth/SilentAuthInfo;)Lcom/vk/id/VKIDUser;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 40
    :goto_3
    new-instance v1, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;-><init>(Lcom/vk/id/VKIDUser;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vk/id/internal/user/UserDataFetcher;->cachedUserData:Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    :goto_4
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
