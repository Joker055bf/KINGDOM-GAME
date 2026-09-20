.class public final Lcom/vk/id/internal/auth/app/TrustedProvidersCache;
.super Ljava/lang/Object;
.source "TrustedProvidersCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrustedProvidersCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrustedProvidersCache.kt\ncom/vk/id/internal/auth/app/TrustedProvidersCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B-\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0082@\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/app/TrustedProvidersCache;",
        "",
        "api",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "clientId",
        "",
        "clientSecret",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "<init>",
        "(Lkotlin/Lazy;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V",
        "cachedTrustedProviders",
        "",
        "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
        "getSilentAuthProviders",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchSilentAuthProvidersSync",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;

.field private static final DEBUG_APP_SHA:Ljava/lang/String; = "86259288a43f6c409a922bc3ce40ba08085bbadb"

.field private static final DEFAULT_TRUSTED_PROVIDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELEASE_APP_SHA:Ljava/lang/String; = "48761eef50ee53afc4cc9c5f10e6bde7f8f5b82f"


# instance fields
.field private final api:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/api/VKIDApiService;",
            ">;"
        }
    .end annotation
.end field

.field private cachedTrustedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->Companion:Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;

    const/16 v1, 0x8

    sput v1, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->$stable:I

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/util/List;

    const-string v3, "com.vkontakte.android"

    .line 69
    invoke-static {v0, v3, v1}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;->access$createBaseProviders(Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "com.vk.im"

    const/4 v3, 0x2

    .line 70
    invoke-static {v0, v1, v3}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;->access$createBaseProviders(Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "com.vk.calls"

    .line 71
    invoke-static {v0, v1, v4}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;->access$createBaseProviders(Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    aput-object v0, v2, v3

    .line 68
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 72
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->DEFAULT_TRUSTED_PROVIDERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlin/Lazy;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/api/VKIDApiService;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
            ")V"
        }
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->api:Lkotlin/Lazy;

    .line 42
    iput-object p2, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->clientId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->clientSecret:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-void
.end method

.method public static final synthetic access$fetchSilentAuthProvidersSync(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->fetchSilentAuthProvidersSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;)Lkotlin/Lazy;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->api:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getClientId$p(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getClientSecret$p(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method private final fetchSilentAuthProvidersSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;

    iget v1, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;-><init>(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    invoke-interface {p1}, Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$2;

    invoke-direct {v2, p0, v3}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$2;-><init>(Lcom/vk/id/internal/auth/app/TrustedProvidersCache;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$fetchSilentAuthProvidersSync$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, p1

    :goto_2
    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_5

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_5
    check-cast v3, Ljava/util/Collection;

    .line 60
    sget-object p1, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->DEFAULT_TRUSTED_PROVIDERS:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 61
    iput-object p1, v0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->cachedTrustedProviders:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final getSilentAuthProviders(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->cachedTrustedProviders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->fetchSilentAuthProvidersSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
