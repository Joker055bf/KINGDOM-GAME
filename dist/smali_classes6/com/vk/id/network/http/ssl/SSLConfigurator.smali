.class public final Lcom/vk/id/network/http/ssl/SSLConfigurator;
.super Ljava/lang/Object;
.source "SSLConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSSLConfigurator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSLConfigurator.kt\ncom/vk/id/network/http/ssl/SSLConfigurator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1863#2,2:98\n*S KotlinDebug\n*F\n+ 1 SSLConfigurator.kt\ncom/vk/id/network/http/ssl/SSLConfigurator\n*L\n82#1:98,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0013\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0002\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/id/network/http/ssl/SSLConfigurator;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactory",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactory$delegate",
        "Lkotlin/Lazy;",
        "configureSSL",
        "",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "createSSLContext",
        "Ljavax/net/ssl/SSLContext;",
        "createTrustManagers",
        "",
        "Ljavax/net/ssl/TrustManager;",
        "()[Ljavax/net/ssl/TrustManager;",
        "loadCertificatePins",
        "",
        "",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final sslSocketFactory$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$E323uP5cT0Ccstpm_ptm-Wxa7fA(Lcom/vk/id/network/http/ssl/SSLConfigurator;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->sslSocketFactory_delegate$lambda$0(Lcom/vk/id/network/http/ssl/SSLConfigurator;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->context:Landroid/content/Context;

    .line 26
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v0, "SSLConfigurator"

    invoke-virtual {p1, v0}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 28
    new-instance p1, Lcom/vk/id/network/http/ssl/SSLConfigurator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/network/http/ssl/SSLConfigurator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->sslSocketFactory$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final createSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    :try_start_0
    const-string v0, "TLSv1.3"

    .line 57
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "TLS"

    .line 61
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "TLS algorithm not available"

    invoke-interface {v1, v2, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create SSL context"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final createTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 71
    new-instance v1, Lcom/vk/id/network/http/ssl/VkIdTrustManager;

    invoke-direct {p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->loadCertificatePins()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/id/network/http/ssl/VkIdTrustManager;-><init>(Ljava/util/Set;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->sslSocketFactory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private final loadCertificatePins()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/vk/id/network/R$raw;->vkid_cacerts_pins:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .line 79
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/InputStream;

    .line 80
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    .line 81
    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 98
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 78
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 86
    iget-object v1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " certificate pins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 78
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Failed to read certificate pins file"

    invoke-interface {v1, v2, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to load certificate pins from resources"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Certificate pins not found in resources"

    invoke-interface {v1, v2, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final sslSocketFactory_delegate$lambda$0(Lcom/vk/id/network/http/ssl/SSLConfigurator;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    .line 30
    invoke-direct {p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->createTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 31
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final configureSSL(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v0, "Skipping SSL configuration for non-HTTPS connection"

    invoke-interface {p1, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_0
    :try_start_0
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    iget-object v0, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Failed to initialize SSL context"

    invoke-interface {v0, v1, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to configure SSL"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
