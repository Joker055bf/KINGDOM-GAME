.class public Lcom/openmediation/sdk/utils/model/Frequency;
.super Ljava/lang/Object;


# instance fields
.field private fc:I

.field private fi:I

.field private fu:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrequencyCap()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fc:I

    return v0
.end method

.method public getFrequencyInterval()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fi:I

    return v0
.end method

.method public getFrequencyUnit()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fu:I

    return v0
.end method

.method public setFrequencyCap(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fc:I

    return-void
.end method

.method public setFrequencyInterval(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fi:I

    return-void
.end method

.method public setFrequencyUnit(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Frequency;->fu:I

    return-void
.end method
