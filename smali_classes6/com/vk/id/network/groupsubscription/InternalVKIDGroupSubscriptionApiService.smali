.class public final Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;
.super Ljava/lang/Object;
.source "InternalVKIDGroupSubscriptionApiService.kt"

# interfaces
.implements Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nJ\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\u000fJ&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;",
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
        "api",
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;",
        "<init>",
        "(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;)V",
        "shouldShowSubscription",
        "",
        "accessToken",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isServiceAccount",
        "getGroup",
        "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupByIdData;",
        "groupId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMembers",
        "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
        "justFriends",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "subscribeToGroup",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final api:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->api:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->api:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;

    return-object p0
.end method


# virtual methods
.method public getGroup(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupByIdData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getGroup$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getGroup$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMembers(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isServiceAccount(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$isServiceAccount$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$isServiceAccount$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public shouldShowSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$shouldShowSubscription$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$shouldShowSubscription$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subscribeToGroup(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$subscribeToGroup$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
