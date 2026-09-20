.class public Lcom/tgs/network/http/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/network/http/HttpConnect$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530


# instance fields
.field private connectTimeout:I

.field private headers:Lcom/tgs/network/http/HttpHeaders;

.field private isHttps:Z

.field private method:Ljava/lang/String;

.field private parameter:Lcom/tgs/network/http/Params;

.field private readTimeout:I

.field private responseCode:I

.field private responseHeader:Lcom/tgs/network/http/HttpHeaders;

.field private responseStream:Ljava/io/InputStream;

.field private responseStreamByte:[B

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tgs/network/http/HttpConnect$Builder;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect;->url:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->parameter:Lcom/tgs/network/http/Params;

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect;->parameter:Lcom/tgs/network/http/Params;

    .line 40
    iget v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout:I

    iput v0, p0, Lcom/tgs/network/http/HttpConnect;->connectTimeout:I

    .line 41
    iget v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout:I

    iput v0, p0, Lcom/tgs/network/http/HttpConnect;->readTimeout:I

    .line 42
    iget-boolean v0, p1, Lcom/tgs/network/http/HttpConnect$Builder;->isHttps:Z

    iput-boolean v0, p0, Lcom/tgs/network/http/HttpConnect;->isHttps:Z

    .line 43
    iget-object p1, p1, Lcom/tgs/network/http/HttpConnect$Builder;->headers:Lcom/tgs/network/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    return-void
.end method

.method private doHttpConnect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    .line 67
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    :try_start_1
    iget v3, p0, Lcom/tgs/network/http/HttpConnect;->connectTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    iget v3, p0, Lcom/tgs/network/http/HttpConnect;->readTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 76
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "Content-Type"

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/tgs/network/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v3}, Lcom/tgs/network/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    iget-object v7, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v7, v6}, Lcom/tgs/network/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v5, v6}, Lcom/tgs/network/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    const-string v6, "DELETE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "application/x-www-form-urlencoded"

    :goto_1
    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 89
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 90
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 92
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->parameter:Lcom/tgs/network/http/Params;

    if-eqz v3, :cond_5

    const-string v5, "UTF-8"

    .line 93
    invoke-interface {v3, v5}, Lcom/tgs/network/http/Params;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    .line 94
    array-length v5, v3

    int-to-long v5, v5

    goto :goto_3

    :cond_6
    const-wide/16 v5, 0x0

    .line 95
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect http "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tgs/network/utils/Debug;->D(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 84
    :cond_7
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    move-object v0, v1

    .line 105
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/tgs/network/http/HttpConnect;->responseCode:I

    const/16 v4, 0x190

    if-lt v3, v4, :cond_9

    .line 108
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    goto :goto_6

    .line 110
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 112
    :goto_6
    new-instance v3, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v3}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tgs/network/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/network/http/HttpHeaders$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseHeader:Lcom/tgs/network/http/HttpHeaders;

    .line 114
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v3, :cond_a

    const-string v3, "gzip"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 115
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 118
    :cond_a
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/tgs/network/utils/InputStreamUtils;->InputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/network/http/HttpConnect;->responseStreamByte:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    if-eqz v0, :cond_b

    .line 130
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 136
    :catch_1
    :cond_b
    :try_start_8
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_c
    return-void

    :catchall_0
    move-exception v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_3
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v8

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    :goto_7
    move-object v1, v8

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 120
    :goto_8
    :try_start_9
    invoke-static {v0, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 121
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v3

    .line 124
    :goto_9
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    if-eqz v2, :cond_d

    .line 130
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 136
    :catch_7
    :cond_d
    :try_start_c
    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_e

    .line 137
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 141
    :catch_8
    :cond_e
    throw v0
.end method

.method private doHttpsConnect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SSL"

    .line 152
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 155
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/tgs/network/http/HttpConnect;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 159
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 162
    iget v2, p0, Lcom/tgs/network/http/HttpConnect;->connectTimeout:I

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 163
    iget v2, p0, Lcom/tgs/network/http/HttpConnect;->readTimeout:I

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 167
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "Content-Type"

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/tgs/network/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v2}, Lcom/tgs/network/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 169
    iget-object v7, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v7, v6}, Lcom/tgs/network/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/tgs/network/http/HttpConnect;->headers:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v5, v6}, Lcom/tgs/network/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    const-string v6, "GET"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    const-string v6, "DELETE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "application/x-www-form-urlencoded"

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 181
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 183
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->parameter:Lcom/tgs/network/http/Params;

    if-eqz v2, :cond_5

    const-string v5, "UTF-8"

    invoke-interface {v2, v5}, Lcom/tgs/network/http/Params;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 184
    array-length v5, v2

    int-to-long v5, v5

    goto :goto_3

    :cond_6
    const-wide/16 v5, 0x0

    .line 185
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect https "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/tgs/network/utils/Debug;->D(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 189
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 175
    :cond_7
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    move-object v0, v1

    .line 195
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/tgs/network/http/HttpConnect;->responseCode:I

    const/16 v4, 0x190

    if-lt v2, v4, :cond_9

    .line 198
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    goto :goto_6

    .line 200
    :cond_9
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 202
    :goto_6
    new-instance v2, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v2}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tgs/network/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/network/http/HttpHeaders$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseHeader:Lcom/tgs/network/http/HttpHeaders;

    .line 204
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    const-string v2, "gzip"

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 205
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 208
    :cond_a
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tgs/network/utils/InputStreamUtils;->InputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStreamByte:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    :try_start_6
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    .line 216
    invoke-static {v2, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7
    if-eqz v0, :cond_b

    .line 221
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 224
    invoke-static {v0, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 228
    :cond_b
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 229
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 232
    invoke-static {v0, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c
    :goto_9
    return-void

    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_b

    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 210
    :goto_a
    :try_start_9
    invoke-static {v0, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    .line 214
    :goto_b
    :try_start_a
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_c

    :catch_6
    move-exception v3

    .line 216
    invoke-static {v3, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_c
    if-eqz v2, :cond_d

    .line 221
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_d

    :catch_7
    move-exception v2

    .line 224
    invoke-static {v2, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 228
    :cond_d
    :goto_d
    :try_start_c
    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v2, :cond_e

    .line 229
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_8
    move-exception v2

    .line 232
    invoke-static {v2, v1}, Lcom/tgs/network/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 234
    :cond_e
    :goto_e
    throw v0
.end method


# virtual methods
.method public doConnect()Lcom/tgs/network/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/tgs/network/http/HttpConnect;->isHttps:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/tgs/network/http/HttpConnect;->doHttpsConnect()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/tgs/network/http/HttpConnect;->doHttpConnect()V

    .line 56
    :goto_0
    new-instance v0, Lcom/tgs/network/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpResponse$Builder;-><init>()V

    iget v1, p0, Lcom/tgs/network/http/HttpConnect;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpResponse$Builder;->code(I)Lcom/tgs/network/http/HttpResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect;->responseStreamByte:[B

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpResponse$Builder;->responseStream([B)Lcom/tgs/network/http/HttpResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect;->responseHeader:Lcom/tgs/network/http/HttpHeaders;

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpResponse$Builder;->header(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/HttpResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpResponse$Builder;->build()Lcom/tgs/network/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
