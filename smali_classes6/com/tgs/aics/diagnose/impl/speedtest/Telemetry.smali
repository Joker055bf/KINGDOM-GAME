.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;
.super Ljava/lang/Thread;
.source "Telemetry.java"


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private dl:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private ispinfo:Ljava/lang/String;

.field private jitter:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private log:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private ping:Ljava/lang/String;

.field private ul:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "disabled"

    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->onDataReceived(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 17
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->path:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->level:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ispinfo:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->extra:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->dl:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ul:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ping:Ljava/lang/String;

    .line 24
    iput-object p9, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->jitter:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->log:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->start()V

    return-void
.end method


# virtual methods
.method public abstract onDataReceived(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 7

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->path:Ljava/lang/String;

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ispinfo="

    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ispinfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dl="

    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->dl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ul="

    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ul:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ping="

    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->ping:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&jitter="

    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->jitter:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->level:Ljava/lang/String;

    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&log="

    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->log:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&extra="

    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->extra:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const/4 v2, 0x0

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->POST(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->parseResponseHeaders()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "transfer-encoding"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "chunked"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->onDataReceived(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :catchall_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
