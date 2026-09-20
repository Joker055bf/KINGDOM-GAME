.class public abstract Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;
.super Ljava/lang/Object;


# instance fields
.field private mConnection:Ljava/net/URLConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseResponseHeaders(Ljava/util/Map;)Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/openmediation/sdk/utils/request/network/Headers;"
        }
    .end annotation

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Headers;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/network/Headers;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/network/Headers;->add(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readResponse(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/IOUtil;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v3

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->shouldCallbackResponse()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v4, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->parseResponseHeaders(Ljava/util/Map;)Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/request/network/Headers;->getContentType()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/openmediation/sdk/utils/request/network/StreamBody;

    invoke-direct {v6, v5, v3}, Lcom/openmediation/sdk/utils/request/network/StreamBody;-><init>(Ljava/lang/String;Ljava/io/BufferedInputStream;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/Response;->newBuilder()Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->code(I)Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->body(Lcom/openmediation/sdk/utils/request/network/ResponseBody;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->connection(Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;)Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->build()Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v3, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;

    const-string v4, "%s RequestCode:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;

    if-eqz v1, :cond_2

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;

    invoke-direct {p1, v0}, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;

    invoke-direct {p1, v1}, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v2, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Read data time out: %1$s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/openmediation/sdk/utils/request/network/exception/ReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeBody(Lcom/openmediation/sdk/utils/request/network/RequestBody;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->toBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/openmediation/sdk/utils/request/network/RequestBody;->writeTo(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/exception/WriteException;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/utils/request/network/exception/WriteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract connect(Lcom/openmediation/sdk/utils/request/network/Request;)Ljava/net/URLConnection;
.end method

.method abstract getResponseCode()I
.end method

.method public intercept(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 4

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getRequestMethod()Lcom/openmediation/sdk/utils/request/network/Request$Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->isAllowBody(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getRequestBody()Lcom/openmediation/sdk/utils/request/network/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/openmediation/sdk/utils/request/network/RequestBody;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v0, v3, v2}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/openmediation/sdk/utils/request/network/RequestBody;->contentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3, v2}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->connect(Lcom/openmediation/sdk/utils/request/network/Request;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->writeBody(Lcom/openmediation/sdk/utils/request/network/RequestBody;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->connect(Lcom/openmediation/sdk/utils/request/network/Request;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->mConnection:Ljava/net/URLConnection;

    :goto_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->readResponse(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object p1

    return-object p1
.end method

.method isAllowBody(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Z
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/Request$Method;->POST:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
