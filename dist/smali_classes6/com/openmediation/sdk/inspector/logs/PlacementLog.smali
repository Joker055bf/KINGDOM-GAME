.class public Lcom/openmediation/sdk/inspector/logs/PlacementLog;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/openmediation/sdk/inspector/logs/BaseLog;",
        ">;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private logList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/BaseLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->id:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->logList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPlacementLog(Lcom/openmediation/sdk/inspector/logs/BaseLog;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->logList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compare(Lcom/openmediation/sdk/inspector/logs/BaseLog;Lcom/openmediation/sdk/inspector/logs/BaseLog;)I
    .locals 2

    invoke-virtual {p1}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->getStart()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->getStart()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/openmediation/sdk/inspector/logs/BaseLog;

    check-cast p2, Lcom/openmediation/sdk/inspector/logs/BaseLog;

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->compare(Lcom/openmediation/sdk/inspector/logs/BaseLog;Lcom/openmediation/sdk/inspector/logs/BaseLog;)I

    move-result p1

    return p1
.end method

.method public getLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/inspector/logs/BaseLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->logList:Ljava/util/List;

    return-object v0
.end method

.method public sort()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/inspector/logs/PlacementLog;->logList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
