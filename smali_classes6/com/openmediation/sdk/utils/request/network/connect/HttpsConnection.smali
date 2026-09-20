.class public final Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;
.super Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;


# instance fields
.field private mConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public connect(Lcom/openmediation/sdk/utils/request/network/Request;)Ljava/net/URLConnection;
    .locals 6

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpsConnection"

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->isInstanceFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getRequestMethod()Lcom/openmediation/sdk/utils/request/network/Request$Method;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/Request$Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->isAllowBody(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Z

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "Connection"

    invoke-virtual {v0, v3}, Lcom/openmediation/sdk/utils/request/network/Headers;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Headers;->getRequestHeaders(Lcom/openmediation/sdk/utils/request/network/Headers;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->isCheckChain()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/certificate/PublicKeyTrustManager;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/network/certificate/PublicKeyTrustManager;-><init>()V

    aput-object v0, p1, v1

    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    return-object p1
.end method

.method getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;->mConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method
