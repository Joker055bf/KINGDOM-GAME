.class public final Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;
.super Ljava/lang/Object;
.source "InternalVKIDTestBuilder.kt"

# interfaces
.implements Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/test/InternalVKIDTestBuilder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "com/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1",
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
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
        "getMembersResponseIndex",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getMembers",
        "Lcom/vk/id/network/groupsubscription/data/InternalVKIDGroupMembersData;",
        "justFriends",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "subscribeToGroupResponseIndex",
        "subscribeToGroup",
        "",
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


# instance fields
.field private final getMembersResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final subscribeToGroupResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;


# direct methods
.method constructor <init>(Lcom/vk/id/test/InternalVKIDTestBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->getMembersResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->subscribeToGroupResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getGroup(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 55
    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    invoke-static {p1}, Lcom/vk/id/test/InternalVKIDTestBuilder;->access$getGetGroupResponse$p(Lcom/vk/id/test/InternalVKIDTestBuilder;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getMembers(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 61
    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    invoke-static {p1}, Lcom/vk/id/test/InternalVKIDTestBuilder;->access$getGetMembersResponses$p(Lcom/vk/id/test/InternalVKIDTestBuilder;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->getMembersResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method public isServiceAccount(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 51
    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    invoke-static {p1}, Lcom/vk/id/test/InternalVKIDTestBuilder;->access$isServiceAccountResponse$p(Lcom/vk/id/test/InternalVKIDTestBuilder;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method public shouldShowSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 47
    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    invoke-static {p1}, Lcom/vk/id/test/InternalVKIDTestBuilder;->access$getShouldShowSubscriptionResponse$p(Lcom/vk/id/test/InternalVKIDTestBuilder;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method public subscribeToGroup(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 67
    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->this$0:Lcom/vk/id/test/InternalVKIDTestBuilder;

    invoke-static {p1}, Lcom/vk/id/test/InternalVKIDTestBuilder;->access$getSubscribeToGroupResponses$p(Lcom/vk/id/test/InternalVKIDTestBuilder;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/vk/id/test/InternalVKIDTestBuilder$mockGroupSubscriptionApi$1;->subscribeToGroupResponseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
