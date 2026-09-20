.class final Lcom/vk/id/logout/VKIDLoggerOut$logout$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VKIDLoggerOut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/logout/VKIDLoggerOut;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
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
    c = "com.vk.id.logout.VKIDLoggerOut$logout$3"
    f = "VKIDLoggerOut.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/vk/id/logout/VKIDLoggerOut;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/id/logout/VKIDLoggerOut;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/logout/VKIDLoggerOut$logout$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->$accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;

    iget-object v0, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->$accessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-direct {p1, v0, v1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;-><init>(Ljava/lang/String;Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    iget v0, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->$accessToken:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {p1}, Lcom/vk/id/logout/VKIDLoggerOut;->access$getTokenStorage$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/storage/InternalVKIDTokenStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getAccessToken$vkid_release()Lcom/vk/id/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$3;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-static {v0}, Lcom/vk/id/logout/VKIDLoggerOut;->access$getDeviceIdProvider$p(Lcom/vk/id/logout/VKIDLoggerOut;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->getDeviceId$vkid_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
