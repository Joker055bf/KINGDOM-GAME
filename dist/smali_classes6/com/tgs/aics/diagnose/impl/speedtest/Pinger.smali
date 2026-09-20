.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;
.super Ljava/lang/Thread;
.source "Pinger.java"


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private path:Ljava/lang/String;

.field private stopASAP:Z


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP:Z

    .line 11
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 12
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->path:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->start()V

    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onPong(J)Z
.end method

.method public run()V
    .locals 8

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->path:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getInputStream()Ljava/io/InputStream;

    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->GET(Ljava/lang/String;Z)V

    .line 23
    iget-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v1, 0x0

    move v5, v1

    .line 28
    :cond_3
    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v6}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "transfer-encoding: chunked"

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v2

    :cond_5
    const-string v7, "200 ok"

    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v2

    .line 33
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    :cond_7
    :goto_0
    if-eqz v5, :cond_9

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 40
    iget-boolean v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP:Z

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const-wide/16 v3, 0x2

    .line 41
    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->onPong(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V

    goto :goto_2

    .line 38
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not get a 200"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :catchall_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->onError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP:Z

    return-void
.end method
