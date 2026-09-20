.class final Lcom/vk/id/VKID$authorize$6$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKID.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID$authorize$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vk.id.VKID$authorize$6$2"
    f = "VKID.kt"
    i = {}
    l = {
        0x1e7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $actualParams:Lcom/vk/id/auth/VKIDAuthParams;

.field final synthetic $statParams:Lcom/vk/id/StatParams;

.field label:I

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method constructor <init>(Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/VKID;",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lcom/vk/id/StatParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/VKID$authorize$6$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/VKID$authorize$6$2;->this$0:Lcom/vk/id/VKID;

    iput-object p2, p0, Lcom/vk/id/VKID$authorize$6$2;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iput-object p3, p0, Lcom/vk/id/VKID$authorize$6$2;->$statParams:Lcom/vk/id/StatParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/vk/id/VKID$authorize$6$2;

    iget-object v0, p0, Lcom/vk/id/VKID$authorize$6$2;->this$0:Lcom/vk/id/VKID;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$2;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v2, p0, Lcom/vk/id/VKID$authorize$6$2;->$statParams:Lcom/vk/id/StatParams;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/vk/id/VKID$authorize$6$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/VKID$authorize$6$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/VKID$authorize$6$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/VKID$authorize$6$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/VKID$authorize$6$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 486
    iget v1, p0, Lcom/vk/id/VKID$authorize$6$2;->label:I

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

    .line 487
    iget-object p1, p0, Lcom/vk/id/VKID$authorize$6$2;->this$0:Lcom/vk/id/VKID;

    invoke-static {p1}, Lcom/vk/id/VKID;->access$getAuthProvidersChooser$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/internal/auth/AuthProvidersChooser;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$2;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/vk/id/VKID$authorize$6$2;->label:I

    invoke-interface {p1, v1, v3}, Lcom/vk/id/internal/auth/AuthProvidersChooser;->chooseBest(Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 486
    :cond_2
    :goto_0
    check-cast p1, Lcom/vk/id/internal/auth/VKIDAuthProvider;

    .line 488
    iget-object v0, p0, Lcom/vk/id/VKID$authorize$6$2;->this$0:Lcom/vk/id/VKID;

    invoke-static {v0}, Lcom/vk/id/VKID;->access$getAuthOptionsCreator$p(Lcom/vk/id/VKID;)Lcom/vk/id/AuthOptionsCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$2;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v2, p0, Lcom/vk/id/VKID$authorize$6$2;->$statParams:Lcom/vk/id/StatParams;

    invoke-virtual {v0, v1, v2}, Lcom/vk/id/AuthOptionsCreator;->create$vkid_release(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lcom/vk/id/internal/auth/AuthOptions;

    move-result-object v0

    .line 489
    invoke-interface {p1, v0}, Lcom/vk/id/internal/auth/VKIDAuthProvider;->auth(Lcom/vk/id/internal/auth/AuthOptions;)V

    .line 490
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
