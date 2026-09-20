.class public Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;
.super Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public connect(Lcom/openmediation/sdk/utils/request/network/Request;)Ljava/net/URLConnection;
    .locals 3

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpConnection"

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->isInstanceFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getRequestMethod()Lcom/openmediation/sdk/utils/request/network/Request$Method;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/Request$Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->isAllowBody(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Z

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Headers;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Headers;->getRequestHeaders(Lcom/openmediation/sdk/utils/request/network/Headers;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method
