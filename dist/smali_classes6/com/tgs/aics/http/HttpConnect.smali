.class public Lcom/tgs/aics/http/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/http/HttpConnect$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "aics.HttpConnect"


# instance fields
.field private connectTimeout:I

.field private headers:Lcom/tgs/aics/http/HttpHeaders;

.field private isHttps:Z

.field private method:Ljava/lang/String;

.field private parameter:Lcom/tgs/aics/http/HttpParam;

.field private readTimeout:I

.field private responseCode:I

.field private responseHeader:Lcom/tgs/aics/http/HttpHeaders;

.field private responseStream:Ljava/io/InputStream;

.field private responseStreamByte:[B

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tgs/aics/http/HttpConnect$Builder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->url:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    .line 46
    iget v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->connectTimeout:I

    iput v0, p0, Lcom/tgs/aics/http/HttpConnect;->connectTimeout:I

    .line 47
    iget v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->readTimeout:I

    iput v0, p0, Lcom/tgs/aics/http/HttpConnect;->readTimeout:I

    .line 48
    iget-boolean v0, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->isHttps:Z

    iput-boolean v0, p0, Lcom/tgs/aics/http/HttpConnect;->isHttps:Z

    .line 49
    iget-object p1, p1, Lcom/tgs/aics/http/HttpConnect$Builder;->headers:Lcom/tgs/aics/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    return-void
.end method

.method private buildOomLog(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 267
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response OOM: url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", bytesRead="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doHttpConnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "GET"

    const-string v1, "POST"

    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    iget v4, p0, Lcom/tgs/aics/http/HttpConnect;->connectTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    iget v4, p0, Lcom/tgs/aics/http/HttpConnect;->readTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "User-Agent"

    const-string v5, "AICS/2.4.5 (Android)"

    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v4}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    iget-object v6, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v6, v5}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 91
    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 93
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 96
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tgs/aics/http/HttpParam;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    iget-object v0, v0, Lcom/tgs/aics/http/HttpParam;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpParam;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "Content-Length"

    .line 99
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 105
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v1, v2

    .line 111
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseCode:I

    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 118
    :goto_2
    new-instance v0, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tgs/aics/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/aics/http/HttpHeaders$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseHeader:Lcom/tgs/aics/http/HttpHeaders;

    .line 120
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    const-string v0, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tgs/aics/utils/InputStreamUtils;->InputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStreamByte:[B
    :try_end_4
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 138
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    if-eqz v1, :cond_5

    .line 144
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 150
    :catch_1
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_6
    return-void

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_7

    .line 108
    :cond_7
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported http method:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v1, v2

    :goto_3
    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    :goto_4
    move-object v2, v3

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v1, v2

    .line 134
    :goto_5
    :try_start_9
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 135
    throw v0

    :catch_a
    move-exception v0

    move-object v1, v2

    .line 131
    :goto_6
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 132
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error during HTTP connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    :goto_7
    :try_start_a
    const-string v4, "aics.HttpConnect"

    .line 128
    iget-wide v5, v0, Lcom/tgs/aics/utils/InputStreamUtils$OomException;->bytesRead:J

    invoke-direct {p0, v5, v6, v2}, Lcom/tgs/aics/http/HttpConnect;->buildOomLog(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    :goto_8
    move-object v2, v3

    .line 138
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :catch_c
    if-eqz v1, :cond_8

    .line 144
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 150
    :catch_d
    :cond_8
    :try_start_d
    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 151
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 155
    :catch_e
    :cond_9
    throw v0
.end method

.method private doHttpsConnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "GET"

    const-string v1, "POST"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SSL"

    .line 167
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 168
    invoke-virtual {v3, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 170
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/tgs/aics/http/HttpConnect;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 174
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 177
    iget v3, p0, Lcom/tgs/aics/http/HttpConnect;->connectTimeout:I

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 178
    iget v3, p0, Lcom/tgs/aics/http/HttpConnect;->readTimeout:I

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v3, "User-Agent"

    const-string v5, "AICS/2.4.5 (Android)"

    .line 179
    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v3}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    iget-object v6, p0, Lcom/tgs/aics/http/HttpConnect;->headers:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v6, v5}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 190
    invoke-virtual {v4, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 191
    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 192
    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    iget-object v0, v0, Lcom/tgs/aics/http/HttpParam;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->parameter:Lcom/tgs/aics/http/HttpParam;

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpParam;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "Content-Length"

    .line 197
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 203
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 204
    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v1, v2

    .line 209
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseCode:I

    const/16 v3, 0x190

    if-lt v0, v3, :cond_3

    .line 212
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    goto :goto_2

    .line 214
    :cond_3
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 217
    :goto_2
    new-instance v0, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tgs/aics/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/aics/http/HttpHeaders$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseHeader:Lcom/tgs/aics/http/HttpHeaders;

    .line 219
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    const-string v0, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tgs/aics/utils/InputStreamUtils;->InputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStreamByte:[B
    :try_end_4
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 237
    :try_start_5
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 239
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v1, :cond_5

    .line 244
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 247
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 251
    :cond_5
    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 252
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 255
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-void

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_a

    .line 206
    :cond_7
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported http method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect;->method:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lcom/tgs/aics/utils/InputStreamUtils$OomException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v1, v2

    :goto_6
    move-object v2, v4

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v2

    :goto_7
    move-object v2, v4

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v1, v2

    .line 233
    :goto_8
    :try_start_9
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 234
    throw v0

    :catch_a
    move-exception v0

    move-object v1, v2

    .line 230
    :goto_9
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 231
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error during HTTPS connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    :goto_a
    :try_start_a
    const-string v3, "aics.HttpConnect"

    .line 227
    iget-wide v5, v0, Lcom/tgs/aics/utils/InputStreamUtils$OomException;->bytesRead:J

    invoke-direct {p0, v5, v6, v2}, Lcom/tgs/aics/http/HttpConnect;->buildOomLog(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    :goto_b
    move-object v2, v4

    .line 237
    :goto_c
    :try_start_b
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    .line 239
    invoke-static {v2}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_d
    if-eqz v1, :cond_8

    .line 244
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    .line 247
    invoke-static {v1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 251
    :cond_8
    :goto_e
    :try_start_d
    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 252
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-exception v1

    .line 255
    invoke-static {v1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 257
    :cond_9
    :goto_f
    throw v0
.end method


# virtual methods
.method public doConnect()Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/tgs/aics/http/HttpConnect;->isHttps:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpConnect;->doHttpsConnect()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpConnect;->doHttpConnect()V

    .line 62
    :goto_0
    new-instance v0, Lcom/tgs/aics/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/tgs/aics/http/HttpResponse$Builder;-><init>()V

    iget v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpResponse$Builder;->code(I)Lcom/tgs/aics/http/HttpResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseStreamByte:[B

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpResponse$Builder;->responseStream([B)Lcom/tgs/aics/http/HttpResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect;->responseHeader:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpResponse$Builder;->header(Lcom/tgs/aics/http/HttpHeaders;)Lcom/tgs/aics/http/HttpResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse$Builder;->build()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
