.class public Lcom/game/sdk/comon/object/PaymentConfigObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "PaymentConfigObj.java"


# instance fields
.field private col:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "col"
    .end annotation
.end field

.field private row:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "row"
    .end annotation
.end field

.field private scroll:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scroll"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getCol()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->row:I

    return v0
.end method

.method public getScroll()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->scroll:I

    return v0
.end method

.method public setCol(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->col:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->row:I

    return-void
.end method

.method public setScroll(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/game/sdk/comon/object/PaymentConfigObj;->scroll:I

    return-void
.end method
