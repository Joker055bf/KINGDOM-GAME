.class final Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthResultHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/AuthResultHandler;->handleOauth(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
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
    c = "com.vk.id.AuthResultHandler$handleOauth$callResult$1"
    f = "AuthResultHandler.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $codeVerifier:Ljava/lang/String;

.field final synthetic $oauth:Lcom/vk/id/internal/auth/AuthResult$Success;

.field final synthetic $realState:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/vk/id/AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/AuthResultHandler;",
            "Lcom/vk/id/internal/auth/AuthResult$Success;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->this$0:Lcom/vk/id/AuthResultHandler;

    iput-object p2, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$oauth:Lcom/vk/id/internal/auth/AuthResult$Success;

    iput-object p3, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$codeVerifier:Ljava/lang/String;

    iput-object p4, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$realState:Ljava/lang/String;

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

    new-instance p1, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;

    iget-object v1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->this$0:Lcom/vk/id/AuthResultHandler;

    iget-object v2, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$oauth:Lcom/vk/id/internal/auth/AuthResult$Success;

    iget-object v3, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$codeVerifier:Ljava/lang/String;

    iget-object v4, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$realState:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;-><init>(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->label:I

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

    .line 85
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->this$0:Lcom/vk/id/AuthResultHandler;

    invoke-static {p1}, Lcom/vk/id/AuthResultHandler;->access$getApi$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/api/VKIDApiService;

    move-result-object v3

    .line 86
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$oauth:Lcom/vk/id/internal/auth/AuthResult$Success;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$Success;->getOauth()Lcom/vk/id/internal/auth/AuthResult$OAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$OAuth;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$codeVerifier:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->this$0:Lcom/vk/id/AuthResultHandler;

    invoke-static {p1}, Lcom/vk/id/AuthResultHandler;->access$getServiceCredentials$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/auth/ServiceCredentials;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v6

    .line 89
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$oauth:Lcom/vk/id/internal/auth/AuthResult$Success;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/AuthResult$Success;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 90
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->this$0:Lcom/vk/id/AuthResultHandler;

    invoke-static {p1}, Lcom/vk/id/AuthResultHandler;->access$getServiceCredentials$p(Lcom/vk/id/AuthResultHandler;)Lcom/vk/id/internal/auth/ServiceCredentials;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/ServiceCredentials;->getRedirectUri()Ljava/lang/String;

    move-result-object v8

    .line 91
    iget-object v9, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->$realState:Ljava/lang/String;

    .line 85
    invoke-virtual/range {v3 .. v9}, Lcom/vk/id/internal/api/VKIDApiService;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 92
    iput v2, p0, Lcom/vk/id/AuthResultHandler$handleOauth$callResult$1;->label:I

    invoke-interface {p1, v1}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
