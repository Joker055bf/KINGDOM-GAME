.class public Lcom/tgs/aics/diagnose/impl/ping/TGSPing;
.super Ljava/lang/Object;
.source "TGSPing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pingDomain(Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 9

    .line 14
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const-string v2, "pingDomain"

    .line 15
    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->onAddress(Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->setTimeOutMillis(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->doPing()Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 26
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\nPinging Address: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ""

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\nHostName: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->getTimeTaken()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "%.2f ms"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "Unknown duration"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->onAddress(Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->setTimeOutMillis(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->setTimes(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;

    invoke-direct {v2, v5, v0, p0, p1}, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;-><init>(Ljava/lang/StringBuilder;Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->doPing(Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;)Lcom/tgs/aics/diagnose/impl/ping/Ping;

    return-void

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 21
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception ping.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 22
    invoke-interface {p1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
