.class public Lcom/openmediation/sdk/utils/model/Configurations;
.super Ljava/lang/Object;


# instance fields
.field private api:Lcom/openmediation/sdk/utils/model/ApiConfigurations;

.field private coa:I

.field private d:I

.field private events:Lcom/openmediation/sdk/utils/model/Events;

.field private ics:I

.field private ms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;"
        }
    .end annotation
.end field

.field private pls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;"
        }
    .end annotation
.end field

.field private ri:I

.field private uarx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public auctionEnabled()Z
    .locals 2

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ics:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->api:Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    return-object v0
.end method

.method public getCoa()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->coa:I

    return v0
.end method

.method public getD()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->d:I

    return v0
.end method

.method public getEvents()Lcom/openmediation/sdk/utils/model/Events;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->events:Lcom/openmediation/sdk/utils/model/Events;

    return-object v0
.end method

.method public getMs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ms:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->pls:Ljava/util/Map;

    return-object v0
.end method

.method public getRi()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ri:I

    return v0
.end method

.method public getTopXRevenue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->uarx:Ljava/util/List;

    return-object v0
.end method

.method public setApi(Lcom/openmediation/sdk/utils/model/ApiConfigurations;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->api:Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    return-void
.end method

.method public setCoa(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->coa:I

    return-void
.end method

.method public setD(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->d:I

    return-void
.end method

.method public setEvents(Lcom/openmediation/sdk/utils/model/Events;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->events:Lcom/openmediation/sdk/utils/model/Events;

    return-void
.end method

.method public setIcs(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ics:I

    return-void
.end method

.method public setMs(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/Mediation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ms:Landroid/util/SparseArray;

    return-void
.end method

.method public setPls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Placement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->pls:Ljava/util/Map;

    return-void
.end method

.method public setRi(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->ri:I

    return-void
.end method

.method public setUarX(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Configurations;->uarx:Ljava/util/List;

    return-void
.end method

.method public uarReportEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Configurations;->uarx:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
