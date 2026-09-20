.class public Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field private static cipherSuites:[Ljava/lang/String;

.field private static protocols:[Ljava/lang/String;


# instance fields
.field private defaultFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SSL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->protocols:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory$1;

    invoke-direct {v1, p0}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory$1;-><init>(Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private upgradeTLS(Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->defaultFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->upgradeTLS(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/certificate/SSLFactory;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method
