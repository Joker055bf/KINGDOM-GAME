.class public Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;
.super Lcom/tgs/aics/diagnose/KeyValuesDiagnose;
.source "UrlsTracerouteDiagnose.java"


# instance fields
.field private mMaxTTL:I

.field private mTtlTimeOut:I


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

    .line 24
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onExecute$0(JLjava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/Result;)V
    .locals 2

    if-eqz p4, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p4, Lcom/tgs/aics/diagnose/Result;

    const/4 v0, 0x0

    const-string v1, "None result"

    invoke-direct {p4, v0, v1}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    .line 64
    :goto_0
    invoke-virtual {p4, p0, p1}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    const-string p1, "netTraceRoute"

    .line 65
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 66
    invoke-interface {p3, p4}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method


# virtual methods
.method public getExecuteOrder()I
    .locals 1

    const v0, 0x186a0

    return v0
.end method

.method public getIntendTime()J
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->getTotal()I

    move-result v0

    .line 74
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->mMaxTTL:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TraceRoute"

    :goto_0
    return-object v0
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 10

    .line 39
    invoke-super {p0}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->getKeyValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    const/4 v0, 0x0

    if-gtz p2, :cond_1

    const-string p1, "Fail execute url trace route while count empty."

    .line 42
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 43
    invoke-interface {p4, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 46
    :cond_1
    new-instance p2, Lcom/tgs/aics/diagnose/impl/traceroute/TGSTraceroute;

    invoke-direct {p2}, Lcom/tgs/aics/diagnose/impl/traceroute/TGSTraceroute;-><init>()V

    .line 47
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->mTtlTimeOut:I

    if-gtz v1, :cond_2

    const/4 v1, 0x2

    :cond_2
    move v8, v1

    .line 49
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->mMaxTTL:I

    if-gtz v1, :cond_3

    const/4 v1, 0x5

    :cond_3
    move v9, v1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/diagnose/KeyValue;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/KeyValue;->getValueText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v0

    .line 54
    :goto_2
    new-instance v5, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v5}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    invoke-virtual {v5, v4}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    const-string v6, "netTraceRoute"

    invoke-virtual {v5, v6}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    const/4 v6, 0x0

    .line 55
    invoke-virtual {v5, v6}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    if-eqz v4, :cond_6

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start url trace route."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/KeyValue;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2, v3, v4, p4}, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    move-object v1, p2

    move-object v2, v5

    move-object v3, v4

    move v4, v8

    move v5, v9

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/tgs/aics/diagnose/impl/traceroute/TGSTraceroute;->startTraceroute(Ljava/lang/String;Ljava/lang/String;IILcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    goto :goto_1

    .line 57
    :cond_6
    :goto_3
    invoke-virtual {v5, v6}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    const-string v2, "Url is empty,Not need start trace route."

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 58
    invoke-interface {p4, v5}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public setMaxTTL(I)Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;
    .locals 0

    .line 33
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->mMaxTTL:I

    return-object p0
.end method

.method public setTtlTimeOut(I)Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;
    .locals 0

    .line 28
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->mTtlTimeOut:I

    return-object p0
.end method
