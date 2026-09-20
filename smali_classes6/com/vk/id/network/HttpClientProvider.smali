.class public final Lcom/vk/id/network/HttpClientProvider;
.super Ljava/lang/Object;
.source "HttpClientProvider.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/HttpClientProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/network/HttpClientProvider;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "provide",
        "Lcom/vk/id/network/http/HttpClient;",
        "additionalInterceptors",
        "",
        "Lcom/vk/id/network/http/Interceptor;",
        "buildBaseInterceptors",
        "Companion",
        "network_release"
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
.field private static final Companion:Lcom/vk/id/network/HttpClientProvider$Companion;

.field private static final DEFAULT_MAX_REDIRECTS:I = 0x5

.field private static final DEFAULT_TIMEOUT:I = 0xea60


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/HttpClientProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/HttpClientProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/HttpClientProvider;->Companion:Lcom/vk/id/network/HttpClientProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/HttpClientProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private final buildBaseInterceptors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vk/id/network/http/Interceptor;

    .line 33
    new-instance v1, Lcom/vk/id/network/useragent/UserAgentInterceptor;

    new-instance v2, Lcom/vk/id/network/useragent/UserAgentProvider;

    iget-object v3, p0, Lcom/vk/id/network/HttpClientProvider;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/vk/id/network/useragent/UserAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/vk/id/network/useragent/UserAgentInterceptor;-><init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lcom/vk/id/network/http/LoggingInterceptor;

    const-string v3, "HttpClient"

    invoke-direct {v1, v3}, Lcom/vk/id/network/http/LoggingInterceptor;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 35
    new-instance v1, Lcom/vk/id/network/http/RetryInterceptor;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5, v4}, Lcom/vk/id/network/http/RetryInterceptor;-><init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lcom/vk/id/network/http/captcha/Error14HandlingInterceptor;

    invoke-direct {v1, v4, v3, v4}, Lcom/vk/id/network/http/captcha/Error14HandlingInterceptor;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v5

    .line 37
    new-instance v1, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;

    invoke-direct {v1, v4, v3, v4}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic provide$default(Lcom/vk/id/network/HttpClientProvider;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/id/network/http/HttpClient;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vk/id/network/HttpClientProvider;->provide(Ljava/util/List;)Lcom/vk/id/network/http/HttpClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provide(Ljava/util/List;)Lcom/vk/id/network/http/HttpClient;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;)",
            "Lcom/vk/id/network/http/HttpClient;"
        }
    .end annotation

    const-string v0, "additionalInterceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/vk/id/network/HttpClientProvider;->buildBaseInterceptors()Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/vk/id/network/http/HttpClient;

    .line 20
    new-instance v9, Lcom/vk/id/network/http/HttpClient$Config;

    .line 21
    iget-object v3, p0, Lcom/vk/id/network/HttpClientProvider;->context:Landroid/content/Context;

    const v4, 0xea60

    const v5, 0xea60

    const/4 v6, 0x1

    const/4 v7, 0x5

    .line 26
    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    move-object v2, v9

    .line 20
    invoke-direct/range {v2 .. v8}, Lcom/vk/id/network/http/HttpClient$Config;-><init>(Landroid/content/Context;IIZILjava/util/List;)V

    .line 19
    invoke-direct {v1, v9}, Lcom/vk/id/network/http/HttpClient;-><init>(Lcom/vk/id/network/http/HttpClient$Config;)V

    return-object v1
.end method
