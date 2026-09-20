.class Lcom/tgs/aics/diagnose/impl/ping/PingTools;
.super Ljava/lang/Object;
.source "PingTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doJavaPing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 6

    .line 62
    new-instance v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;-><init>(Ljava/net/InetAddress;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 65
    iput-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    return-object v0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 71
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->getTimeToLive()I

    move-result v4

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->getTimeoutMillis()I

    move-result p1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result p0

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-float p1, v4

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr p1, v2

    iput p1, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->timeTaken:F

    .line 73
    iput-boolean p0, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    if-nez p0, :cond_1

    const-string p0, "Timed Out"

    .line 74
    iput-object p0, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    iput-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IOException: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static doNativePing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcom/tgs/aics/diagnose/impl/ping/PingNative;->ping(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object p0

    return-object p0
.end method

.method public static doPing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 0

    .line 25
    :try_start_0
    invoke-static {p0, p1}, Lcom/tgs/aics/diagnose/impl/ping/PingTools;->doNativePing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 35
    :catch_0
    invoke-static {p0, p1}, Lcom/tgs/aics/diagnose/impl/ping/PingTools;->doJavaPing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object p0

    return-object p0

    .line 27
    :catch_1
    new-instance p1, Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    invoke-direct {p1, p0}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;-><init>(Ljava/net/InetAddress;)V

    const/4 p0, 0x0

    .line 28
    iput-boolean p0, p1, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    const-string p0, "Interrupted"

    .line 29
    iput-object p0, p1, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    return-object p1
.end method
