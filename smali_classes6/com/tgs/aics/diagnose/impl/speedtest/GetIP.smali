.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;
.super Ljava/lang/Thread;
.source "GetIP.java"


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private distance:Ljava/lang/String;

.field private isp:Z

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 13
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->path:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->isp:Z

    if-eqz p4, :cond_1

    const-string p1, "km"

    .line 15
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mi"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Distance must be null, mi or km"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->distance:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->start()V

    return-void
.end method


# virtual methods
.method public abstract onDataReceived(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 4

    const-string v0, "content-length"

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->path:Ljava/lang/String;

    .line 23
    iget-boolean v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->isp:Z

    if-eqz v2, :cond_0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->url_sep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isp=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->distance:Ljava/lang/String;

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->url_sep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->distance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->GET(Ljava/lang/String;Z)V

    .line 30
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->parseResponseHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/io/BufferedReader;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getInputStreamReader()Ljava/io/InputStreamReader;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [C

    .line 35
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->onDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->onDataReceived(Ljava/lang/String;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :catchall_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
