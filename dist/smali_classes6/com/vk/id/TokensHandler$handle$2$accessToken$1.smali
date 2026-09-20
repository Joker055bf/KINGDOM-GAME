.class final Lcom/vk/id/TokensHandler$handle$2$accessToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TokensHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/TokensHandler$handle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/vk/id/AccessToken;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokensHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokensHandler.kt\ncom/vk/id/TokensHandler$handle$2$accessToken$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 VKIDTokenPayload.kt\ncom/vk/id/internal/auth/VKIDTokenPayloadKt\n*L\n1#1,52:1\n1#2:53\n21#3,5:54\n*S KotlinDebug\n*F\n+ 1 TokensHandler.kt\ncom/vk/id/TokensHandler$handle$2$accessToken$1\n*L\n33#1:54,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vk/id/AccessToken;",
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
    c = "com.vk.id.TokensHandler$handle$2$accessToken$1"
    f = "TokensHandler.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/vk/id/VKIDUser;

.field final synthetic $payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

.field final synthetic $scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/vk/id/TokensHandler;


# direct methods
.method constructor <init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lcom/vk/id/VKIDUser;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            "Lcom/vk/id/TokensHandler;",
            "Lcom/vk/id/VKIDUser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/TokensHandler$handle$2$accessToken$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    iput-object p2, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->this$0:Lcom/vk/id/TokensHandler;

    iput-object p3, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$it:Lcom/vk/id/VKIDUser;

    iput-object p4, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$scopes:Ljava/util/Set;

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

    new-instance p1, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;

    iget-object v1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    iget-object v2, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->this$0:Lcom/vk/id/TokensHandler;

    iget-object v3, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$it:Lcom/vk/id/VKIDUser;

    iget-object v4, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$scopes:Ljava/util/Set;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;-><init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lcom/vk/id/VKIDUser;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/vk/id/AccessToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    iget v0, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getIdToken()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->this$0:Lcom/vk/id/TokensHandler;

    invoke-static {p1}, Lcom/vk/id/TokensHandler;->access$getTokenStorage$p(Lcom/vk/id/TokensHandler;)Lcom/vk/id/storage/InternalVKIDTokenStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getAccessToken$vkid_release()Lcom/vk/id/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getIdToken()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getUserId()J

    move-result-wide v3

    .line 33
    iget-object p1, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$payload:Lcom/vk/id/internal/auth/VKIDTokenPayload;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getExpiresIn()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v7, v5

    move-wide v5, v7

    goto :goto_1

    :cond_3
    const-wide/16 v5, -0x1

    .line 34
    :goto_1
    iget-object v7, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$it:Lcom/vk/id/VKIDUser;

    .line 35
    iget-object v8, p0, Lcom/vk/id/TokensHandler$handle$2$accessToken$1;->$scopes:Ljava/util/Set;

    .line 29
    new-instance p1, Lcom/vk/id/AccessToken;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/vk/id/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V

    return-object p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
