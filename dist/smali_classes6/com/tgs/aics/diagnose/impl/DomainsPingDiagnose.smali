.class public Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "DomainsPingDiagnose.java"


# instance fields
.field private final mDomains:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose;->mDomains:[Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onExecute$0(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Ljava/lang/String;Lcom/tgs/aics/diagnose/Result;)V
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    const-string p3, "None result."

    invoke-virtual {p0, p3}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p3

    .line 41
    :goto_0
    invoke-virtual {p3, p2}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method


# virtual methods
.method public getTotal()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose;->mDomains:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 6

    .line 22
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose;->mDomains:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 23
    array-length p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-gtz p2, :cond_1

    const-string p1, "Fail ping domain while count empty."

    .line 25
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 26
    invoke-interface {p4, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 30
    :cond_1
    array-length p2, p1

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    .line 31
    new-instance v2, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v2}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    const-string v3, "pingDomain"

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    .line 32
    invoke-virtual {v2, p3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    :try_start_0
    new-instance v3, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p4, v1}, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/tgs/aics/diagnose/impl/ping/TGSPing;->pingDomain(Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception ping domain.domain="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " e="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception ping domain.e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 46
    invoke-interface {p4, v2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    goto :goto_3

    .line 34
    :cond_3
    :goto_2
    invoke-virtual {v2, p3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    const-string v3, "Domain is empty,Not need ping."

    invoke-virtual {v1, v3}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 35
    invoke-interface {p4, v2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method
