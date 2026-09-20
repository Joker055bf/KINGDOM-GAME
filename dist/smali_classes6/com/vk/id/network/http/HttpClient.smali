.class public final Lcom/vk/id/network/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/HttpClient$Companion;,
        Lcom/vk/id/network/http/HttpClient$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\ncom/vk/id/network/http/HttpClient\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,252:1\n216#2,2:253\n216#2,2:255\n*S KotlinDebug\n*F\n+ 1 HttpClient.kt\ncom/vk/id/network/http/HttpClient\n*L\n167#1:253,2\n197#1:255,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u0002:;B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0080@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020%H\u0002J>\u0010+\u001a\u0004\u0018\u00010\u00152\u0006\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\'2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'002\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u00101\u001a\u0002022\u0006\u0010&\u001a\u00020\'2\u0006\u00103\u001a\u000204H\u0002J\u0018\u00105\u001a\u00020#2\u0006\u0010,\u001a\u00020)2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u00106\u001a\u00020#2\u0006\u0010,\u001a\u00020)2\u0008\u00107\u001a\u0004\u0018\u00010\'H\u0002J\u0014\u00108\u001a\u00020\u0015*\u00020)2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000c\u00109\u001a\u00020\'*\u00020)H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006<"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpClient;",
        "",
        "config",
        "Lcom/vk/id/network/http/HttpClient$Config;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient$Config;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "sslConfigurator",
        "Lcom/vk/id/network/http/ssl/SSLConfigurator;",
        "getSslConfigurator",
        "()Lcom/vk/id/network/http/ssl/SSLConfigurator;",
        "sslConfigurator$delegate",
        "Lkotlin/Lazy;",
        "interceptorManager",
        "Lcom/vk/id/network/http/InterceptorManager;",
        "getInterceptorManager",
        "()Lcom/vk/id/network/http/InterceptorManager;",
        "interceptorManager$delegate",
        "executeRequest",
        "Lkotlin/Result;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "executeRequest-IoAF18A",
        "(Lcom/vk/id/network/http/HttpRequest;)Ljava/lang/Object;",
        "executeHttpRequest",
        "executeHttpRequest$network_release",
        "executeWithInterceptors",
        "executeWithInterceptors$network_release",
        "(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeHttpRequestInternal",
        "redirectCount",
        "",
        "checkRedirectLimit",
        "",
        "createUrlOrThrow",
        "Ljava/net/URL;",
        "url",
        "",
        "createConnection",
        "Ljava/net/HttpURLConnection;",
        "requestUrl",
        "handleRedirectIfNeeded",
        "connection",
        "response",
        "method",
        "headers",
        "",
        "logAndThrowNetworkError",
        "",
        "e",
        "Ljava/io/IOException;",
        "configureConnection",
        "sendRequestBody",
        "body",
        "getResponse",
        "readResponseBody",
        "Config",
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
.field private static final Companion:Lcom/vk/id/network/http/HttpClient$Companion;

.field private static final REDIRECT_STATUSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final config:Lcom/vk/id/network/http/HttpClient$Config;

.field private final interceptorManager$delegate:Lkotlin/Lazy;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final sslConfigurator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Rogbw6ZmTJTpkBc17GX5UkowNiQ(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/ssl/SSLConfigurator;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/http/HttpClient;->sslConfigurator_delegate$lambda$0(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/ssl/SSLConfigurator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rV42Rt6oobWfOIkw5KZjtTknUAw(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/InterceptorManager;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/http/HttpClient;->interceptorManager_delegate$lambda$1(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/InterceptorManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/network/http/HttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/HttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/HttpClient;->Companion:Lcom/vk/id/network/http/HttpClient$Companion;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x12d

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x12e

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x12f

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x131

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x133

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x134

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 240
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vk/id/network/http/HttpClient;->REDIRECT_STATUSES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/network/http/HttpClient$Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    .line 32
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v0, "HttpClient"

    invoke-virtual {p1, v0}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 34
    new-instance p1, Lcom/vk/id/network/http/HttpClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vk/id/network/http/HttpClient$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/network/http/HttpClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/HttpClient;->sslConfigurator$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/vk/id/network/http/HttpClient$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/vk/id/network/http/HttpClient$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/network/http/HttpClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/HttpClient;->interceptorManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getREDIRECT_STATUSES$cp()Ljava/util/Set;
    .locals 1

    .line 18
    sget-object v0, Lcom/vk/id/network/http/HttpClient;->REDIRECT_STATUSES:Ljava/util/Set;

    return-object v0
.end method

.method private final checkRedirectLimit(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpClient$Config;->getMaxRedirects()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpClient$Config;->getMaxRedirects()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many redirects (max: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final configureConnection(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpRequest;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpClient$Config;->getConnectingTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 163
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpClient$Config;->getReadingTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 164
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 167
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "Content-Type"

    .line 172
    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 118
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only HTTPS protocol is supported"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final executeHttpRequestInternal(Lcom/vk/id/network/http/HttpRequest;I)Lcom/vk/id/network/http/HttpResponse;
    .locals 8

    .line 78
    invoke-direct {p0, p2}, Lcom/vk/id/network/http/HttpClient;->checkRedirectLimit(I)V

    .line 79
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/id/network/http/HttpClient;->createUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-direct {p0, v0}, Lcom/vk/id/network/http/HttpClient;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/vk/id/network/http/HttpClient;->getSslConfigurator()Lcom/vk/id/network/http/ssl/SSLConfigurator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->configureSSL(Ljava/net/HttpURLConnection;)V

    .line 89
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/vk/id/network/http/HttpClient;->configureConnection(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpRequest;)V

    .line 90
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/vk/id/network/http/HttpClient;->sendRequestBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v1, p1}, Lcom/vk/id/network/http/HttpClient;->getResponse(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpResponse;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    move-object v2, p0

    move-object v3, v1

    move-object v4, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/network/http/HttpClient;->handleRedirectIfNeeded(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpResponse;Ljava/lang/String;Ljava/util/Map;I)Lcom/vk/id/network/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 97
    :try_start_1
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/vk/id/network/http/HttpClient;->logAndThrowNetworkError(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method

.method private final getInterceptorManager()Lcom/vk/id/network/http/InterceptorManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->interceptorManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/network/http/InterceptorManager;

    return-object v0
.end method

.method private final getResponse(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpResponse;
    .locals 8

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getHeaderFields(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 198
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 199
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vk/id/network/http/HttpClient;->readResponseBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v3, "Failed to read response body"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v3, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_1

    .line 210
    :goto_2
    new-instance v0, Lcom/vk/id/network/http/HttpResponse;

    .line 212
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 213
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v1, 0xc8

    const/4 v7, 0x0

    if-gt v1, p1, :cond_2

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_2

    move v7, v2

    :cond_2
    move-object v1, v0

    move-object v2, p2

    .line 210
    invoke-direct/range {v1 .. v7}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v0
.end method

.method private final getSslConfigurator()Lcom/vk/id/network/http/ssl/SSLConfigurator;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->sslConfigurator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/network/http/ssl/SSLConfigurator;

    return-object v0
.end method

.method private final handleRedirectIfNeeded(Ljava/net/HttpURLConnection;Lcom/vk/id/network/http/HttpResponse;Ljava/lang/String;Ljava/util/Map;I)Lcom/vk/id/network/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/vk/id/network/http/HttpResponse;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/vk/id/network/http/HttpResponse;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpClient$Config;->getFollowRedirects()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vk/id/network/http/HttpClient;->Companion:Lcom/vk/id/network/http/HttpClient$Companion;

    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vk/id/network/http/HttpClient$Companion;->isRedirect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Location"

    .line 136
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redirecting to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 141
    new-instance p1, Lcom/vk/id/network/http/HttpRequest;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/network/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    .line 140
    invoke-direct {p0, p1, p5}, Lcom/vk/id/network/http/HttpClient;->executeHttpRequestInternal(Lcom/vk/id/network/http/HttpRequest;I)Lcom/vk/id/network/http/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final interceptorManager_delegate$lambda$1(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/InterceptorManager;
    .locals 2

    .line 39
    new-instance v0, Lcom/vk/id/network/http/InterceptorManager;

    .line 41
    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {v1}, Lcom/vk/id/network/http/HttpClient$Config;->getApplicationInterceptors()Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-direct {v0, p0, v1}, Lcom/vk/id/network/http/InterceptorManager;-><init>(Lcom/vk/id/network/http/HttpClient;Ljava/util/List;)V

    return-object v0
.end method

.method private final logAndThrowNetworkError(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/Void;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network error during request to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, p1, v1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Network error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final readResponseBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .line 221
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    const-string v0, ""

    if-nez p1, :cond_1

    return-object v0

    .line 228
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 229
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    .line 228
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedReader;

    .line 231
    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 230
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 234
    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v2, "Failed to read response body"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v1, v2, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private final sendRequestBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 184
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 185
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/io/OutputStream;

    .line 186
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "getBytes(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 187
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 188
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 185
    :try_start_2
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 190
    iget-object p2, p0, Lcom/vk/id/network/http/HttpClient;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Failed to send request body"

    invoke-interface {p2, v0, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final sslConfigurator_delegate$lambda$0(Lcom/vk/id/network/http/HttpClient;)Lcom/vk/id/network/http/ssl/SSLConfigurator;
    .locals 1

    .line 35
    new-instance v0, Lcom/vk/id/network/http/ssl/SSLConfigurator;

    iget-object p0, p0, Lcom/vk/id/network/http/HttpClient;->config:Lcom/vk/id/network/http/HttpClient$Config;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpClient$Config;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final executeHttpRequest$network_release(Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpResponse;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/vk/id/network/http/HttpClient;->executeHttpRequestInternal(Lcom/vk/id/network/http/HttpRequest;I)Lcom/vk/id/network/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final executeRequest-IoAF18A(Lcom/vk/id/network/http/HttpRequest;)Ljava/lang/Object;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v0, Lcom/vk/id/network/http/HttpClient$executeRequest$response$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/vk/id/network/http/HttpClient$executeRequest$response$1;-><init>(Lcom/vk/id/network/http/HttpClient;Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    .line 49
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 53
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 51
    throw p1
.end method

.method public final executeWithInterceptors$network_release(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/vk/id/network/http/HttpClient;->getInterceptorManager()Lcom/vk/id/network/http/InterceptorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vk/id/network/http/InterceptorManager;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
