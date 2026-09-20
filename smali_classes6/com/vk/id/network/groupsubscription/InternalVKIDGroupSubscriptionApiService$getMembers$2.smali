.class final Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InternalVKIDGroupSubscriptionApiService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->getMembers(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalVKIDGroupSubscriptionApiService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalVKIDGroupSubscriptionApiService.kt\ncom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1557#2:108\n1628#2,3:109\n*S KotlinDebug\n*F\n+ 1 InternalVKIDGroupSubscriptionApiService.kt\ncom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2\n*L\n80#1:108\n80#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
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
    c = "com.vk.id.network.groupsubscription.InternalVKIDGroupSubscriptionApiService$getMembers$2"
    f = "InternalVKIDGroupSubscriptionApiService.kt"
    i = {}
    l = {
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field final synthetic $groupId:Ljava/lang/String;

.field final synthetic $justFriends:Z

.field label:I

.field final synthetic this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;


# direct methods
.method constructor <init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    iput-object p2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$groupId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$justFriends:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;

    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    iget-object v2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$groupId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$justFriends:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->this$0:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;

    invoke-static {p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;->access$getApi$p(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;

    move-result-object p1

    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$groupId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->$justFriends:Z

    invoke-virtual {p1, v1, v3, v4}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->getMembers(Ljava/lang/String;Ljava/lang/String;Z)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiService$getMembers$2;->label:I

    invoke-interface {p1, v1}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 74
    :cond_2
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "response"

    .line 76
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "count"

    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 109
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 81
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/vk/id/network/groupsubscription/data/InternalVKIDMemberData;

    const-string v5, "photo_200"

    .line 83
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {v4, v3}, Lcom/vk/id/network/groupsubscription/data/InternalVKIDMemberData;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 78
    new-instance v0, Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;

    invoke-direct {v0, p1, v2}, Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;-><init>(ILjava/util/List;)V

    return-object v0

    .line 89
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
