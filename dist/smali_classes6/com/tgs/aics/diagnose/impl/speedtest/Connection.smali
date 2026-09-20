.class Lcom/tgs/aics/diagnose/impl/speedtest/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x7d0

.field private static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LOCALE:Ljava/lang/String;

.field private static final MODE_HTTP:I = 0x1

.field private static final MODE_HTTPS:I = 0x2

.field private static final MODE_NOT_SET:I

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private isr:Ljava/io/InputStreamReader;

.field private mode:I

.field private port:I

.field private ps:Ljava/io/PrintStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speedtest-Android/1.2.3 (SDK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->USER_AGENT:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->LOCALE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x7d0

    const/16 v3, 0x1388

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const-string v0, "http:"

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I

    const/4 v2, 0x0

    .line 124
    iput-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->ps:Ljava/io/PrintStream;

    .line 135
    iput-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->isr:Ljava/io/InputStreamReader;

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    const-string v2, "http://"

    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 33
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v3

    goto :goto_0

    .line 37
    :catchall_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed URL (HTTP)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v2, "https://"

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p1, v1

    move v1, v3

    goto :goto_0

    .line 46
    :catchall_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed URL (HTTPS)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v1, "//"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 52
    :try_start_2
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move p1, v3

    move v1, p1

    :goto_0
    const/4 v0, -0x1

    .line 62
    :try_start_3
    iget v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 63
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    const/16 v2, 0x1bb

    if-lez p2, :cond_3

    .line 66
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    iget v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I

    if-ne v6, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    invoke-direct {v4, v5, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_3

    .line 68
    :cond_3
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    iget v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I

    if-ne v6, v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    invoke-direct {v4, v5, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    :goto_3
    const/4 v1, 0x2

    .line 70
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :catchall_2
    :cond_5
    :try_start_4
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 75
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    const/16 v1, 0x50

    if-lez p2, :cond_7

    .line 78
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    iget v5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I

    if-ne v5, v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v5

    :goto_4
    invoke-direct {v2, v4, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_6

    .line 80
    :cond_7
    new-instance p2, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    iget v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I

    if-ne v4, v0, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    invoke-direct {p2, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 82
    :goto_6
    iput v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 85
    :catchall_3
    :cond_9
    iget p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I

    if-eqz p1, :cond_d

    if-lez p3, :cond_a

    .line 88
    :try_start_5
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_a
    if-lez p4, :cond_b

    .line 93
    :try_start_6
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_b
    if-lez p5, :cond_c

    .line 98
    :try_start_7
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p5}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_c
    return-void

    .line 85
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to connect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :catchall_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed URL (HTTP/HTTPS)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed URL (Unknown or unspecified protocol)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public GET(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "Accept-Language: "

    const-string v2, "Connection: "

    const-string v3, "User-Agent: "

    const-string v4, "Host: "

    const-string v5, "GET "

    const-string v6, "/"

    .line 149
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v6

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " HTTP/1.1\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p2, "keep-alive"

    goto :goto_0

    :cond_1
    const-string p2, "close"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "Accept-Encoding: identity\r\n"

    .line 155
    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->LOCALE:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 160
    :catchall_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to send GET request"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public POST(Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "Content-Length: "

    const-string v2, "Content-Type: "

    const-string v3, "Accept-Language: "

    const-string v4, "Connection: "

    const-string v5, "User-Agent: "

    const-string v6, "Host: "

    const-string v7, "POST "

    const-string v8, "/"

    .line 166
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v8

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, " HTTP/1.1\r\n"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p2, "keep-alive"

    goto :goto_0

    :cond_1
    const-string p2, "close"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "Accept-Encoding: identity\r\n"

    .line 172
    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->LOCALE:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    const-string p1, "Content-Encoding: identity\r\n"

    .line 175
    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-ltz p1, :cond_4

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    :cond_4
    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 180
    :catchall_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to send POST request"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStreamReader()Ljava/io/InputStreamReader;
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->isr:Ljava/io/InputStreamReader;

    if-nez v0, :cond_0

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->isr:Ljava/io/InputStreamReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->isr:Ljava/io/InputStreamReader;

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->isr:Ljava/io/InputStreamReader;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->mode:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->port:I

    return v0
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->ps:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "utf-8"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->ps:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->ps:Ljava/io/PrintStream;

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->ps:Ljava/io/PrintStream;

    return-object v0
.end method

.method public parseResponseHeaders()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ")"

    const-string v1, ":"

    const-string v2, "Did not receive an HTTP 200 ("

    .line 202
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v4

    const-string v5, "200 OK"

    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 208
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 214
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get response headers ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readLineUnbuffered()Ljava/lang/String;
    .locals 4

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getInputStreamReader()Ljava/io/InputStreamReader;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-char v3, v2

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 194
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
