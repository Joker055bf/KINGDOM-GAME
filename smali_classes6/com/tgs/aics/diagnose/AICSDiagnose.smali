.class public abstract Lcom/tgs/aics/diagnose/AICSDiagnose;
.super Ljava/lang/Object;
.source "AICSDiagnose.java"

# interfaces
.implements Lcom/tgs/aics/diagnose/IDiagnose;


# static fields
.field public static final DIAGNOSE_ORDER_GAME_FIRST:I = 0x30d40

.field public static final DIAGNOSE_ORDER_MAINTENANCE_FIRST:I = 0x186a0

.field public static final DIAGNOSE_ORDER_TGS_START:I = 0x493e0

.field public static final STATUS_EXECUTE_FAILED:I = 0x2713

.field public static final STATUS_EXECUTE_SUCCEED:I = 0x2712

.field public static final STATUS_EXECUTING:I = 0x2711

.field public static final STATUS_IDLE:I = 0x2710


# instance fields
.field private mCanceled:Z

.field private mDisableUi:Z

.field private mExecuteOrder:I

.field private mIntendTime:J

.field private mName:Ljava/lang/Object;

.field private mOpenChildren:Z

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/Result;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mStatus:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mOpenChildren:Z

    .line 22
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mCanceled:Z

    .line 24
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mDisableUi:Z

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mIntendTime:J

    const v0, 0x493e0

    .line 26
    iput v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mExecuteOrder:I

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mCanceled:Z

    const/4 p1, 0x1

    return p1
.end method

.method public final cleanResults()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 138
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 141
    instance-of v0, p1, Lcom/tgs/aics/diagnose/AICSDiagnose;

    if-eqz v0, :cond_3

    .line 142
    check-cast p1, Lcom/tgs/aics/diagnose/AICSDiagnose;

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getName()Ljava/lang/Object;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final execute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->cleanResults()Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mOpenChildren:Z

    .line 33
    new-instance v0, Lcom/tgs/aics/diagnose/AICSDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4}, Lcom/tgs/aics/diagnose/AICSDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/AICSDiagnose;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method

.method public getExecuteOrder()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mExecuteOrder:I

    return v0
.end method

.method public getIntendTime()J
    .locals 5

    .line 128
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mIntendTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getTotal()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    :cond_1
    return-wide v2
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mName:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/Result;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getStatus()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mStatus:I

    return v0
.end method

.method public abstract getTotal()I
.end method

.method public final isCanceled()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mCanceled:Z

    return v0
.end method

.method public final isDisableUi()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mDisableUi:Z

    return v0
.end method

.method public final isExecuted()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mStatus:I

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

    .line 87
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mOpenChildren:Z

    return v0
.end method

.method synthetic lambda$execute$0$com-tgs-aics-diagnose-AICSDiagnose(Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/Result;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mResults:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 40
    invoke-interface {p1, p2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    :cond_1
    return-void
.end method

.method protected abstract onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
.end method

.method public setDisableUi(Z)Lcom/tgs/aics/diagnose/AICSDiagnose;
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mDisableUi:Z

    return-object p0
.end method

.method public setExecuteOrder(I)Lcom/tgs/aics/diagnose/AICSDiagnose;
    .locals 0

    .line 52
    iput p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mExecuteOrder:I

    return-object p0
.end method

.method public final setIntendTime(J)Lcom/tgs/aics/diagnose/AICSDiagnose;
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mIntendTime:J

    return-object p0
.end method

.method public final setName(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/AICSDiagnose;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mName:Ljava/lang/Object;

    return-object p0
.end method

.method public setOpenChildren(Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mOpenChildren:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setStatus(I)Z
    .locals 0

    .line 58
    iput p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnose;->mStatus:I

    const/4 p1, 0x1

    return p1
.end method
