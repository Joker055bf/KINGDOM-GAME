.class public Lcom/openmediation/sdk/inspector/InspectorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/inspector/InspectorManager$ImHolder;
    }
.end annotation


# instance fields
.field private enable:Z

.field private mInitLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/InitLog;",
            ">;"
        }
    .end annotation
.end field

.field private mInventoryLogs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/InventoryLog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/openmediation/sdk/inspector/InspectorNotifyListener;

.field private mSettingsLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/SettingsLog;",
            ">;"
        }
    .end annotation
.end field

.field private mWfLogs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/WaterfallLog;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInitLogs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mSettingsLogs:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mWfLogs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInventoryLogs:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/inspector/InspectorManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/inspector/InspectorManager;-><init>()V

    return-void
.end method

.method private buildPlacementLog(Ljava/lang/String;)Lcom/openmediation/sdk/inspector/logs/PlacementLog;
    .locals 3

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInitLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInitLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/inspector/logs/InitLog;

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->addPlacementLog(Lcom/openmediation/sdk/inspector/logs/BaseLog;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mSettingsLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mSettingsLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/inspector/logs/SettingsLog;

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->addPlacementLog(Lcom/openmediation/sdk/inspector/logs/BaseLog;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mWfLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/inspector/logs/WaterfallLog;

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->addPlacementLog(Lcom/openmediation/sdk/inspector/logs/BaseLog;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInventoryLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/inspector/logs/InventoryLog;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->addPlacementLog(Lcom/openmediation/sdk/inspector/logs/BaseLog;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->sort()V

    return-object v0
.end method

.method public static getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager$ImHolder;->access$100()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addInitLog(Lcom/openmediation/sdk/inspector/logs/InitLog;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->getEventTag()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInitLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    if-nez v0, :cond_0

    return-void
.end method

.method public addInventoryLog(ZLjava/lang/String;Lcom/openmediation/sdk/inspector/logs/InventoryLog;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInventoryLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInventorySize(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setInventorySize(I)V

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/inspector/InspectorManager;->getAvailableInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/openmediation/sdk/inspector/logs/InventoryLog;->setAvailableSize(I)V

    :cond_3
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mInventoryLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSettingsLog(Lcom/openmediation/sdk/inspector/logs/SettingsLog;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mSettingsLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWaterfallLog(Ljava/lang/String;Lcom/openmediation/sdk/inspector/logs/WaterfallLog;)V
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mWfLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mWfLogs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public buildInitLog(ILjava/lang/String;)Lcom/openmediation/sdk/inspector/logs/InitLog;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/inspector/logs/InitLog;

    invoke-direct {v0}, Lcom/openmediation/sdk/inspector/logs/InitLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setDetail(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getAvailableInstance(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/OmManager;->getAvailableInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIntervalTime(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/OmManager;->getIntervalTime(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInventorySize(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/OmManager;->getInventorySize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPlacementLog(Ljava/lang/String;)Lcom/openmediation/sdk/inspector/logs/PlacementLog;
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/inspector/InspectorManager;->buildPlacementLog(Ljava/lang/String;)Lcom/openmediation/sdk/inspector/logs/PlacementLog;

    move-result-object p1

    return-object p1
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    return v0
.end method

.method public notifyWaterfallChanged(Ljava/lang/String;Lcom/openmediation/sdk/inspector/logs/WaterfallLog;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mListener:Lcom/openmediation/sdk/inspector/InspectorNotifyListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/openmediation/sdk/inspector/InspectorNotifyListener;->notifyWaterfallChanged(Ljava/lang/String;Lcom/openmediation/sdk/inspector/logs/WaterfallLog;)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->enable:Z

    return-void
.end method

.method public setInspectorNotifyListener(Lcom/openmediation/sdk/inspector/InspectorNotifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/InspectorManager;->mListener:Lcom/openmediation/sdk/inspector/InspectorNotifyListener;

    return-void
.end method
