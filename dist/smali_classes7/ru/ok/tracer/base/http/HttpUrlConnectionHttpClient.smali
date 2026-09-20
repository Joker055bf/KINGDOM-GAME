.class public final Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;
.super Ljava/lang/Object;
.source "HttpUrlConnectionHttpClient.kt"

# interfaces
.implements Lru/ok/tracer/base/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUrlConnectionHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrlConnectionHttpClient.kt\nru/ok/tracer/base/http/HttpUrlConnectionHttpClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000eH\u0002R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;",
        "Lru/ok/tracer/base/http/HttpClient;",
        "context",
        "Landroid/content/Context;",
        "userAgent",
        "",
        "trafficStatsTag",
        "",
        "connectTimeout",
        "readTimeout",
        "(Landroid/content/Context;Ljava/lang/String;III)V",
        "connect",
        "",
        "conn",
        "Ljava/net/HttpURLConnection;",
        "execute",
        "Lru/ok/tracer/base/http/HttpResponse;",
        "request",
        "Lru/ok/tracer/base/http/HttpRequest;",
        "getResponseCode",
        "connection",
        "Companion",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient$Companion;

.field public static final NO_TRAFFIC_STATS_TAG:I = -0x1


# instance fields
.field private final connectTimeout:I

.field private final context:Landroid/content/Context;

.field private final readTimeout:I

.field private final trafficStatsTag:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->Companion:Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->userAgent:Ljava/lang/String;

    .line 17
    iput p3, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->trafficStatsTag:I

    .line 18
    iput p4, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->connectTimeout:I

    .line 19
    iput p5, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->readTimeout:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move v4, p3

    goto :goto_0

    :cond_2
    move v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v5, p3

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method

.method private final connect(Ljava/net/HttpURLConnection;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 103
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v1

    .line 104
    invoke-static {p2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez p3, :cond_1

    .line 110
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    if-lez p4, :cond_2

    .line 113
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_3

    .line 143
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_3
    return-void

    .line 140
    :goto_2
    :try_start_1
    throw p1

    .line 133
    :goto_3
    throw p1

    .line 120
    :goto_4
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "libcore.io.GaiException"

    .line 123
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "android.system.GaiException"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 124
    throw p1

    .line 126
    :cond_4
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    throw p1

    .line 121
    :cond_5
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eq v1, v0, :cond_6

    .line 143
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_6
    throw p1
.end method

.method private final getResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Attempt to read from field \'int com.android.okhttp.okio.Segment.limit\'"

    const/4 v4, 0x0

    .line 31
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 35
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 28
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lru/ok/tracer/base/http/HttpRequest;)Lru/ok/tracer/base/http/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lru/ok/tracer/base/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lru/ok/tracer/base/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lru/ok/tracer/base/http/HttpRequest;->getBody()Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object p1

    .line 46
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 47
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 48
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 49
    iget-object v3, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createTracerTrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/TrustManager;

    .line 48
    invoke-static {v3}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createSSLSocketFactory(Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "User-Agent"

    .line 56
    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v0, "Content-Type"

    if-eqz p1, :cond_3

    .line 60
    :try_start_1
    invoke-interface {p1}, Lru/ok/tracer/base/http/HttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 62
    invoke-interface {p1}, Lru/ok/tracer/base/http/HttpRequestBody;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 63
    invoke-interface {p1}, Lru/ok/tracer/base/http/HttpRequestBody;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1000

    .line 65
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 69
    :cond_3
    :goto_0
    iget v2, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->trafficStatsTag:I

    iget v3, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->connectTimeout:I

    iget v4, p0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->readTimeout:I

    invoke-direct {p0, v1, v2, v3, v4}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->connect(Ljava/net/HttpURLConnection;III)V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lru/ok/tracer/base/http/HttpRequestBody;->writeTo(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result p1

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "application/octet-stream"

    :cond_6
    const/16 v4, 0x190

    const/16 v5, 0x2000

    if-ge p1, v4, :cond_8

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "conn.inputStream"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v4, Ljava/io/BufferedInputStream;

    if-eqz v6, :cond_7

    check-cast v4, Ljava/io/BufferedInputStream;

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v6

    :goto_2
    check-cast v4, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    move-object v5, v4

    check-cast v5, Ljava/io/BufferedInputStream;

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 81
    :cond_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "conn.errorStream"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v4, Ljava/io/BufferedInputStream;

    if-eqz v6, :cond_9

    check-cast v4, Ljava/io/BufferedInputStream;

    goto :goto_3

    :cond_9
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v6

    :goto_3
    check-cast v4, Ljava/io/Closeable;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    move-object v5, v4

    check-cast v5, Ljava/io/BufferedInputStream;

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    :goto_4
    new-instance v2, Lru/ok/tracer/base/http/HttpResponse;

    const-string v4, "responseMessage"

    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v4, Lru/ok/tracer/base/http/HttpByteArrayBody;

    invoke-direct {v4, v0, v5}, Lru/ok/tracer/base/http/HttpByteArrayBody;-><init>(Ljava/lang/String;[B)V

    check-cast v4, Lru/ok/tracer/base/http/HttpResponseBody;

    .line 84
    invoke-direct {v2, p1, v3, v4}, Lru/ok/tracer/base/http/HttpResponse;-><init>(ILjava/lang/String;Lru/ok/tracer/base/http/HttpResponseBody;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    return-object v2

    :catchall_4
    move-exception p1

    .line 81
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 94
    throw p1
.end method
