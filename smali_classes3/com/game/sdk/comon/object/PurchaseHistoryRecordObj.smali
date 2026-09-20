.class public Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;
.super Ljava/lang/Object;
.source "PurchaseHistoryRecordObj.java"


# instance fields
.field developerPayload:Z

.field productId:Ljava/lang/String;

.field purchaseTime:J

.field purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->purchaseTime:J

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public isDeveloperPayload()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->developerPayload:Z

    return v0
.end method

.method public setDeveloperPayload(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->developerPayload:Z

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->productId:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseTime(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->purchaseTime:J

    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->purchaseToken:Ljava/lang/String;

    return-void
.end method
