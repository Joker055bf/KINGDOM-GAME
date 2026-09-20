.class public final Lcom/vk/id/TokensHandler;
.super Ljava/lang/Object;
.source "TokensHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJX\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/id/TokensHandler;",
        "",
        "userInfoFetcher",
        "Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;",
        "tokenStorage",
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "<init>",
        "(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V",
        "handle",
        "",
        "payload",
        "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
        "onSuccess",
        "Lkotlin/Function2;",
        "Lcom/vk/id/AccessToken;",
        "Lkotlin/coroutines/Continuation;",
        "onFailedApiCall",
        "Lkotlin/Function1;",
        "",
        "refreshAccessToken",
        "",
        "(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

.field private final userInfoFetcher:Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;Lcom/vk/id/storage/InternalVKIDTokenStorage;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V
    .locals 1

    const-string v0, "userInfoFetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/TokensHandler;->userInfoFetcher:Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;

    .line 15
    iput-object p2, p0, Lcom/vk/id/TokensHandler;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 16
    iput-object p3, p0, Lcom/vk/id/TokensHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-void
.end method

.method public static final synthetic access$getDispatchers$p(Lcom/vk/id/TokensHandler;)Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/TokensHandler;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getTokenStorage$p(Lcom/vk/id/TokensHandler;)Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/TokensHandler;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object p0
.end method

.method public static synthetic handle$default(Lcom/vk/id/TokensHandler;Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/vk/id/TokensHandler;->handle(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final handle(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/vk/id/AccessToken;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/vk/id/TokensHandler;->userInfoFetcher:Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;

    .line 25
    invoke-virtual {p1}, Lcom/vk/id/internal/auth/VKIDTokenPayload;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v8, Lcom/vk/id/TokensHandler$handle$2;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/TokensHandler$handle$2;-><init>(Lcom/vk/id/internal/auth/VKIDTokenPayload;Lcom/vk/id/TokensHandler;Lkotlin/jvm/functions/Function2;ZLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v8, p3, p5}, Lcom/vk/id/fetchuser/VKIDUserInfoFetcher;->fetch(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
