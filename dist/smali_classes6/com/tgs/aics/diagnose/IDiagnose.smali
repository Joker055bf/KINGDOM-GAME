.class public interface abstract Lcom/tgs/aics/diagnose/IDiagnose;
.super Ljava/lang/Object;
.source "IDiagnose.java"


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract execute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
.end method

.method public getExecuteOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntendTime()J
    .locals 2

    .line 14
    invoke-interface {p0}, Lcom/tgs/aics/diagnose/IDiagnose;->getTotal()I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getTotal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisableUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExecuted()Z
    .locals 2

    .line 63
    invoke-interface {p0}, Lcom/tgs/aics/diagnose/IDiagnose;->getStatus()I

    move-result v0

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpenChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOpenChildren(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setStatus(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
