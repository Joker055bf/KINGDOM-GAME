.class public Lcom/openmediation/sdk/utils/model/Placement;
.super Lcom/openmediation/sdk/utils/model/Frequency;


# instance fields
.field private bs:I

.field private cs:I

.field private fo:I

.field private hasHb:Z

.field private hbAbt:I

.field private id:Ljava/lang/String;

.field private insMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation
.end field

.field private main:I

.field private name:Ljava/lang/String;

.field private oriData:Ljava/lang/String;

.field private pt:I

.field private rf:I

.field private rfs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rlw:I

.field private scenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private wfAbt:I

.field private wfAbtId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/Frequency;-><init>()V

    return-void
.end method


# virtual methods
.method public getBs()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->bs:I

    return v0
.end method

.method public getCs()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->cs:I

    return v0
.end method

.method public getFo()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->fo:I

    return v0
.end method

.method public getHbAbt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->hbAbt:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInsMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->insMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getMain()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->main:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->oriData:Ljava/lang/String;

    return-object v0
.end method

.method public getPt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->pt:I

    return v0
.end method

.method public getRf()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->rf:I

    return v0
.end method

.method public getRfs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->rfs:Ljava/util/Map;

    return-object v0
.end method

.method public getRlw()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->rlw:I

    return v0
.end method

.method public getScenes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Scene;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->scenes:Ljava/util/Map;

    return-object v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->t:I

    return v0
.end method

.method public getWfAbt()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->wfAbt:I

    return v0
.end method

.method public getWfAbtId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->wfAbtId:I

    return v0
.end method

.method public hasHb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/model/Placement;->hasHb:Z

    return v0
.end method

.method public setBs(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->bs:I

    return-void
.end method

.method public setCs(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->cs:I

    return-void
.end method

.method public setFo(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->fo:I

    return-void
.end method

.method public setHasHb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->hasHb:Z

    return-void
.end method

.method public setHbAbt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->hbAbt:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->id:Ljava/lang/String;

    return-void
.end method

.method public setInsMap(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->insMap:Landroid/util/SparseArray;

    return-void
.end method

.method public setMain(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->main:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->name:Ljava/lang/String;

    return-void
.end method

.method public setOriData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->oriData:Ljava/lang/String;

    return-void
.end method

.method public setPt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->pt:I

    return-void
.end method

.method public setRf(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->rf:I

    return-void
.end method

.method public setRfs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->rfs:Ljava/util/Map;

    return-void
.end method

.method public setRlw(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->rlw:I

    return-void
.end method

.method public setScenes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Scene;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->scenes:Ljava/util/Map;

    return-void
.end method

.method public setT(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->t:I

    return-void
.end method

.method public setWfAbt(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->wfAbt:I

    return-void
.end method

.method public setWfAbtId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Placement;->wfAbtId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Placement{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/Placement;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/Placement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/Placement;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
