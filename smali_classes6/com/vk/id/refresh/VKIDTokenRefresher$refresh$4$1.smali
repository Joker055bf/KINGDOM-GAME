.class final Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKIDTokenRefresher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vk/id/AccessToken;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/vk/id/AccessToken;"
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
    c = "com.vk.id.refresh.VKIDTokenRefresher$refresh$4$1"
    f = "VKIDTokenRefresher.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;


# direct methods
.method constructor <init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refresh/VKIDTokenRefresher;",
            "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    iput-object p2, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;

    iget-object v1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    iget-object v2, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    invoke-direct {v0, v1, v2, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;-><init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/AccessToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vk/id/AccessToken;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->invoke(Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 55
    iget v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/AccessToken;

    .line 56
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-static {v0}, Lcom/vk/id/refresh/VKIDTokenRefresher;->access$getPrefsStore$p(Lcom/vk/id/refresh/VKIDTokenRefresher;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->clear()V

    .line 57
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$4$1;->$callback:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    invoke-interface {v0, p1}, Lcom/vk/id/refresh/VKIDRefreshTokenCallback;->onSuccess(Lcom/vk/id/AccessToken;)V

    .line 58
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
