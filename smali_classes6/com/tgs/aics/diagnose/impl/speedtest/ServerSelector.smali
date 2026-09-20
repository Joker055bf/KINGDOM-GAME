.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;
.super Ljava/lang/Object;
.source "ServerSelector.java"


# static fields
.field private static final DONE:I = 0x2

.field private static final NOT_STARTED:I = 0x0

.field private static final PARALLELISM:I = 0x6

.field private static final PINGS:I = 0x3

.field private static final SLOW_THRESHOLD:I = 0x1f4

.field private static final WORKING:I = 0x1


# instance fields
.field private activeStreams:I

.field private mutex:Ljava/lang/Object;

.field private selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

.field private servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private stopASAP:Z

.field private timeout:I

.field private tpPointer:I


# direct methods
.method public constructor <init>([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    .line 17
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->stopASAP:Z

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->mutex:Ljava/lang/Object;

    .line 55
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->tpPointer:I

    .line 56
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->addTestPoints([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    .line 21
    iput p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->timeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->mutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$110(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)I
    .locals 2

    .line 9
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    return v0
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->next()V

    return-void
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->stopASAP:Z

    return p0
.end method

.method private next()V
    .locals 14

    .line 58
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->stopASAP:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->tpPointer:I

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 61
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    if-gtz v1, :cond_6

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 63
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 64
    iget v3, v2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    iget v4, v4, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_3
    iput-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    goto :goto_0

    .line 67
    :cond_4
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    monitor-exit v0

    return-void

    .line 68
    :cond_5
    iput v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    .line 69
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {p0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    .line 71
    :cond_6
    monitor-exit v0

    return-void

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->tpPointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->tpPointer:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 74
    new-instance v2, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;

    invoke-virtual {v13}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getPingURL()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "fail"

    iget v9, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->timeout:I

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v3, p0

    move v8, v9

    invoke-direct/range {v2 .. v13}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    .line 96
    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->activeStreams:I

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTestPoint(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 1

    .line 24
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add test points at this time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTestPoint(Lorg/json/JSONObject;)V
    .locals 2

    .line 29
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-direct {v1, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add test points at this time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTestPoints(Lorg/json/JSONArray;)V
    .locals 4

    .line 33
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    new-instance v2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add test points at this time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTestPoints([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 3

    .line 41
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    if-nez v0, :cond_1

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->addTestPoint(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add test points at this time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSelectedTestPoint()Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;
    .locals 2

    .line 46
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->selectedTestPoint:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test point hasn\'t been selected yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTestPoints()[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    return-object v0
.end method

.method public abstract onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
.end method

.method public start()V
    .locals 3

    .line 101
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->state:I

    .line 103
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->servers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->next()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->stopASAP:Z

    return-void
.end method
