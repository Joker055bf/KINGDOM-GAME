.class public Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose;
.super Lcom/tgs/aics/diagnose/KeyValuesDiagnose;
.source "DomainParseDiagnose.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onExecute$0(Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/KeyValue;Ljava/util/concurrent/CountDownLatch;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 6

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    .line 50
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 53
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 57
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p2}, Lcom/tgs/aics/diagnose/KeyValue;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v1, p1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception parse domain."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 65
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 67
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    .line 68
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    invoke-interface {p4, p0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method static synthetic lambda$onExecute$1(ILjava/util/List;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 7

    .line 35
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, p0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const-string v0, "parseDomain"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tgs/aics/diagnose/KeyValue;

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/KeyValue;->getValueText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    move-object v2, p1

    .line 38
    new-instance p1, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {p1}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_2

    .line 46
    :cond_1
    new-instance p1, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda0;

    move-object v0, p1

    move-object v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/KeyValue;Ljava/util/concurrent/CountDownLatch;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p2, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p1, 0x1

    .line 42
    invoke-virtual {v1, p1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Domain path invalid."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string v0, "None"

    invoke-virtual {p1, v0, v0}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 43
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 73
    :cond_3
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0xa

    invoke-virtual {v6, p1, p2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception parse domain timeout. e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p0

    move p2, v1

    :goto_3
    int-to-long v2, p2

    cmp-long v2, v2, p0

    if-gez v2, :cond_4

    .line 78
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    new-instance v2, Lcom/tgs/aics/diagnose/Result;

    const-string v3, "Timeout 10s."

    invoke-direct {v2, v1, v3}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    .line 80
    invoke-virtual {v2, v0}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    .line 79
    invoke-interface {p3, v2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Domains Parse"

    :goto_0
    return-object v0
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose;->getKeyValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-gtz p2, :cond_1

    const-string p1, "Fail execute domain parse while count empty."

    .line 30
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    invoke-interface {p4, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 34
    :cond_1
    new-instance v0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    return-void
.end method
