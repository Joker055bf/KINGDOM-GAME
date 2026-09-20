.class final Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserDataFetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/user/UserDataFetcher;->fetchUserData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vk.id.internal.user.UserDataFetcher$fetchUserData$2$info$1"
    f = "UserDataFetcher.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/vk/id/internal/user/UserDataFetcher;


# direct methods
.method constructor <init>(Lcom/vk/id/internal/user/UserDataFetcher;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/user/UserDataFetcher;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->this$0:Lcom/vk/id/internal/user/UserDataFetcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;

    iget-object v0, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->this$0:Lcom/vk/id/internal/user/UserDataFetcher;

    invoke-direct {p1, v0, p2}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;-><init>(Lcom/vk/id/internal/user/UserDataFetcher;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/silentauth/SilentAuthInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 35
    iget v1, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->this$0:Lcom/vk/id/internal/user/UserDataFetcher;

    invoke-static {p1}, Lcom/vk/id/internal/user/UserDataFetcher;->access$getVkSilentAuthInfoProvider$p(Lcom/vk/id/internal/user/UserDataFetcher;)Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->this$0:Lcom/vk/id/internal/user/UserDataFetcher;

    invoke-static {v1}, Lcom/vk/id/internal/user/UserDataFetcher;->access$getServiceCredentials$p(Lcom/vk/id/internal/user/UserDataFetcher;)Lcom/vk/id/internal/auth/ServiceCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;->setAppId(I)V

    .line 37
    iget-object p1, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->this$0:Lcom/vk/id/internal/user/UserDataFetcher;

    invoke-static {p1}, Lcom/vk/id/internal/user/UserDataFetcher;->access$getVkSilentAuthInfoProvider$p(Lcom/vk/id/internal/user/UserDataFetcher;)Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iput v2, p0, Lcom/vk/id/internal/user/UserDataFetcher$fetchUserData$2$info$1;->label:I

    invoke-static/range {v3 .. v8}, Lcom/vk/id/internal/ipc/SilentAuthInfoProvider$DefaultImpls;->getSilentAuthInfos$default(Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
