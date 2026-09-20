.class Lcom/tgs/aics/diagnose/impl/ping/PingNative;
.super Ljava/lang/Object;
.source "PingNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPingStats(Lcom/tgs/aics/diagnose/impl/ping/PingResult;Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 3

    const-string v0, "0% packet loss"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/mdev = "

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, " ms\n"

    .line 108
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 109
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->fullString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 113
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    .line 116
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->result:Ljava/lang/String;

    .line 117
    aget-object p1, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->timeTaken:F

    return-object p0

    .line 111
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string v0, "100% packet loss"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    move-object p1, v0

    goto :goto_2

    :cond_3
    const-string v0, "% packet loss"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "partial packet loss"

    goto :goto_2

    :cond_4
    const-string v0, "unknown host"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "unknown error in getPingStats"

    .line 129
    :goto_2
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    return-object p0
.end method

.method public static ping(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;-><init>(Ljava/net/InetAddress;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 18
    iput-boolean p0, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    return-object v0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->getTimeoutMillis()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 26
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->getTimeToLive()I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 28
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ping"

    if-eqz v5, :cond_2

    .line 32
    invoke-static {v5}, Lcom/tgs/aics/diagnose/impl/ping/IPTools;->isIPv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v6, "ping6"

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v5}, Lcom/tgs/aics/diagnose/impl/ping/IPTools;->isIPv4Address(Ljava/lang/String;)Z

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v6, " -c 1 -W "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " -t "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 46
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    const-string p1, "error, exit = 2"

    goto :goto_1

    :cond_3
    const-string p1, "failed, exit = 1"

    .line 64
    :goto_1
    iput-object p1, v0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-object v0

    .line 50
    :cond_4
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 51
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    :goto_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/diagnose/impl/ping/PingNative;->getPingStats(Lcom/tgs/aics/diagnose/impl/ping/PingResult;Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object p0

    return-object p0
.end method
