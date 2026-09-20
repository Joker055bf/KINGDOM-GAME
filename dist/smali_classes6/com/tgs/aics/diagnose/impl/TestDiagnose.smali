.class public Lcom/tgs/aics/diagnose/impl/TestDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "TestDiagnose.java"


# instance fields
.field private final mIndex:I

.field private mRandom:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    .line 19
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->mIndex:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/Object;
    .locals 1

    const-string v0, "TestDiagnose"

    return-object v0
.end method

.method public getTotal()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->mRandom:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->mRandom:I

    :cond_0
    return v0
.end method

.method synthetic lambda$onExecute$0$com-tgs-aics-diagnose-impl-TestDiagnose(IILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sssss "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "diagnose"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 31
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 33
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 35
    :goto_0
    new-instance p2, Lcom/tgs/aics/diagnose/Result;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p2, v2, v0}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Test"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2, v0, p1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 35
    invoke-interface {p3, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->getTotal()I

    move-result p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5f00\u59cb\u6267\u884c "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "diagnose"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 28
    new-instance v0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/impl/TestDiagnose;IILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
