.class public final Lcom/adjust/sdk/AdjustLinkResolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;
    }
.end annotation


# static fields
.field private static volatile executor:Ljava/util/concurrent/ExecutorService; = null

.field private static final expectedUrlHostSuffixArray:[Ljava/lang/String;

.field private static final maxRecursions:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "adjust.com"

    const-string v1, "adj.st"

    const-string v2, "go.link"

    const-string v3, "adjust.net.in"

    const-string v4, "adjust.cn"

    const-string v5, "adjust.world"

    const-string v6, "adjust.io"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/AdjustLinkResolution;->expectedUrlHostSuffixArray:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/AdjustLinkResolution;->requestAndResolve(Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    return-void
.end method

.method private static convertToHttps(Ljava/net/URL;)Ljava/net/URL;
    .locals 4

    const-string v0, "https:"

    if-nez p0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "http:"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :goto_0
    return-object p0
.end method

.method private static convertToUri(Ljava/net/URL;)Landroid/net/Uri;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static isTerminalUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/adjust/sdk/AdjustLinkResolution;->expectedUrlHostSuffixArray:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/adjust/sdk/AdjustLinkResolution;->urlMatchesSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static requestAndResolve(Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/adjust/sdk/AdjustLinkResolution;->convertToHttps(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    const-string v2, "Location"

    .line 10
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 p1, p1, 0x1

    .line 21
    invoke-static {v0, p0, p1, p2}, Lcom/adjust/sdk/AdjustLinkResolution;->resolveLink(Ljava/net/URL;Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    return-void

    :catchall_0
    move-object v1, v0

    :catchall_1
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 25
    invoke-static {v0, p0, p1, p2}, Lcom/adjust/sdk/AdjustLinkResolution;->resolveLink(Ljava/net/URL;Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    return-void
.end method

.method public static resolveLink(Ljava/lang/String;[Ljava/lang/String;Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1
    invoke-interface {p2, v0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 12
    invoke-interface {p2, v0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    .line 16
    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/adjust/sdk/AdjustLinkResolution;->urlMatchesSuffix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 18
    invoke-static {v1}, Lcom/adjust/sdk/AdjustLinkResolution;->convertToUri(Ljava/net/URL;)Landroid/net/Uri;

    move-result-object p0

    .line 19
    invoke-interface {p2, p0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    .line 24
    :cond_3
    sget-object p0, Lcom/adjust/sdk/AdjustLinkResolution;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_5

    .line 25
    sget-object p0, Lcom/adjust/sdk/AdjustLinkResolution;->expectedUrlHostSuffixArray:[Ljava/lang/String;

    monitor-enter p0

    .line 26
    :try_start_1
    sget-object p1, Lcom/adjust/sdk/AdjustLinkResolution;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_4

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lcom/adjust/sdk/AdjustLinkResolution;->executor:Ljava/util/concurrent/ExecutorService;

    .line 29
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 33
    :cond_5
    :goto_1
    sget-object p0, Lcom/adjust/sdk/AdjustLinkResolution;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/adjust/sdk/AdjustLinkResolution$1;

    invoke-direct {p1, v1, p2}, Lcom/adjust/sdk/AdjustLinkResolution$1;-><init>(Ljava/net/URL;Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static resolveLink(Ljava/net/URL;Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V
    .locals 0

    if-nez p0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/adjust/sdk/AdjustLinkResolution;->convertToUri(Ljava/net/URL;)Landroid/net/Uri;

    move-result-object p0

    .line 35
    invoke-interface {p3, p0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adjust/sdk/AdjustLinkResolution;->isTerminalUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-static {p0}, Lcom/adjust/sdk/AdjustLinkResolution;->convertToUri(Ljava/net/URL;)Landroid/net/Uri;

    move-result-object p0

    .line 44
    invoke-interface {p3, p0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    :cond_1
    const/16 p1, 0xa

    if-le p2, p1, :cond_2

    .line 52
    invoke-static {p0}, Lcom/adjust/sdk/AdjustLinkResolution;->convertToUri(Ljava/net/URL;)Landroid/net/Uri;

    move-result-object p0

    .line 53
    invoke-interface {p3, p0}, Lcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;->resolvedLinkCallback(Landroid/net/Uri;)V

    return-void

    .line 58
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/adjust/sdk/AdjustLinkResolution;->requestAndResolve(Ljava/net/URL;ILcom/adjust/sdk/AdjustLinkResolution$AdjustLinkResolutionCallback;)V

    return-void
.end method

.method private static urlMatchesSuffix(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
