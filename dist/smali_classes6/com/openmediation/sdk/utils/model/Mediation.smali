.class public Lcom/openmediation/sdk/utils/model/Mediation;
.super Ljava/lang/Object;


# instance fields
.field private et:J

.field private id:I

.field private k:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private nn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEt()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->et:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->id:I

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->nn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Mediation;->nn:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setEt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/Mediation;->et:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Mediation;->id:I

    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Mediation;->k:Ljava/lang/String;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Mediation;->n:Ljava/lang/String;

    return-void
.end method

.method public setNn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Mediation;->nn:Ljava/lang/String;

    return-void
.end method
