.class public final Lru/ok/tracer/base/cert/TrustManagerUtils;
.super Ljava/lang/Object;
.source "TrustManagerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrustManagerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrustManagerUtils.kt\nru/ok/tracer/base/cert/TrustManagerUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0002\u001a\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0010\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u0012\u0010\r\u001a\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0002\u001a!\u0010\r\u001a\u00020\u00012\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0010\"\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "createDefaultTrustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "createKeyStoreFromResource",
        "Ljava/security/KeyStore;",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "createSSLSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "trustManager",
        "Ljavax/net/ssl/TrustManager;",
        "createTracerTrustManager",
        "createTrustManager",
        "keyStore",
        "trustManagers",
        "",
        "([Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static final createKeyStoreFromResource(Landroid/content/Context;I)Ljava/security/KeyStore;
    .locals 3

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 39
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    const-string v2, "X509"

    .line 40
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 50
    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {p1, p0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string p0, "getInstance(KeyStore.get\u2026certName, cert)\n        }"

    .line 48
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final createSSLSocketFactory(Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const-string v0, "trustManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SSL"

    .line 27
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 31
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    const-string v0, "getInstance(\"SSL\")\n     \u2026 }\n        .socketFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createTracerTrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    aput-object v2, v0, v1

    .line 21
    sget v1, Lru/ok/tracer/base/R$raw;->rootca_ssl_rsa2022:I

    .line 19
    invoke-static {p0, v1}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createKeyStoreFromResource(Landroid/content/Context;I)Ljava/security/KeyStore;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 16
    invoke-static {v0}, Lru/ok/tracer/base/cert/TrustManagerUtils;->createTrustManager([Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method

.method private static final createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 55
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 59
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    const-string v0, "getInstance(KeyManagerFa\u2026 }\n        .trustManagers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    .line 59
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method private static final varargs createTrustManager([Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 65
    new-instance v0, Lru/ok/tracer/base/cert/CompositeX509TrustManager;

    invoke-direct {v0, p0}, Lru/ok/tracer/base/cert/CompositeX509TrustManager;-><init>([Ljavax/net/ssl/X509TrustManager;)V

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
