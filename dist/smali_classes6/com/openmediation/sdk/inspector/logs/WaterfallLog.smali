.class public Lcom/openmediation/sdk/inspector/logs/WaterfallLog;
.super Lcom/openmediation/sdk/inspector/logs/BaseLog;


# instance fields
.field private instanceLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/InstanceLog;",
            ">;"
        }
    .end annotation
.end field

.field private mediationRuleId:I

.field private mediationRuleName:Ljava/lang/String;

.field private unloadInstance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/inspector/logs/BaseLog;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->instanceLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInsLog(Lcom/openmediation/sdk/inspector/logs/InstanceLog;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->instanceLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->instanceLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getInstanceLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/InstanceLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->instanceLogs:Ljava/util/List;

    return-object v0
.end method

.method public getMediationRuleId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->mediationRuleId:I

    return v0
.end method

.method public getMediationRuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->mediationRuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnloadInstance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->unloadInstance:Ljava/util/List;

    return-object v0
.end method

.method public removeFromUnloadInstance(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->unloadInstance:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setMediationRuleId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->mediationRuleId:I

    return-void
.end method

.method public setMediationRuleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->mediationRuleName:Ljava/lang/String;

    return-void
.end method

.method public setUnloadInstance(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;->unloadInstance:Ljava/util/List;

    return-void
.end method
