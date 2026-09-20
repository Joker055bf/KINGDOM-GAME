.class public Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "FixedResultDiagnose.java"


# instance fields
.field private mFixedResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    return-void
.end method

.method static synthetic lambda$setFixedResult$0(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;
    .locals 1

    if-eqz p0, :cond_0

    .line 38
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    .line 39
    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/Result;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIntendTime()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getTotal()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose;->mFixedResult:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    .line 21
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose;->mFixedResult:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 23
    invoke-interface {p4, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/diagnose/Result;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 27
    invoke-virtual {p2, p3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p2

    :cond_1
    invoke-interface {p4, p2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFixedResult(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 36
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1}, Lcom/tgs/aics/diagnose/JsonObject;->createFromArray(Ljava/lang/String;Lcom/tgs/aics/diagnose/Convertor;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 44
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    check-cast p1, Ljava/util/Collection;

    .line 47
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 48
    instance-of v3, v2, Lcom/tgs/aics/diagnose/Result;

    if-eqz v3, :cond_2

    .line 49
    check-cast v2, Lcom/tgs/aics/diagnose/Result;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_3
    instance-of v1, p1, [Lcom/tgs/aics/diagnose/Result;

    if-eqz v1, :cond_5

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    check-cast p1, [Lcom/tgs/aics/diagnose/Result;

    .line 55
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    if-eqz v4, :cond_4

    .line 56
    instance-of v5, v4, Lcom/tgs/aics/diagnose/Result;

    if-eqz v5, :cond_4

    .line 57
    move-object v5, v4

    check-cast v5, Lcom/tgs/aics/diagnose/Result;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :cond_5
    instance-of v1, p1, Lcom/tgs/aics/diagnose/Result;

    if-eqz v1, :cond_7

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    check-cast p1, Lcom/tgs/aics/diagnose/Result;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object p1, v1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x0

    .line 64
    :goto_3
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/FixedResultDiagnose;->mFixedResult:Ljava/util/List;

    return v0
.end method
