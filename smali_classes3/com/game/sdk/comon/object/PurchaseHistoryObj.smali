.class public Lcom/game/sdk/comon/object/PurchaseHistoryObj;
.super Ljava/lang/Object;
.source "PurchaseHistoryObj.java"


# instance fields
.field private account_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_id"
    .end annotation
.end field

.field private area_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "area_id"
    .end annotation
.end field

.field private charactor_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "charactor_id"
    .end annotation
.end field

.field private is_send:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_send"
    .end annotation
.end field

.field private order_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field private receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receipt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount_id()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->account_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_id()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCharactor_id()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->charactor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    return-object v0
.end method

.method public isIs_send()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->is_send:Z

    return v0
.end method

.method public parseJson(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p1, "{}"

    return-object p1

    .line 66
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAccount_id(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->account_id:Ljava/lang/String;

    return-void
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->area_id:Ljava/lang/String;

    return-void
.end method

.method public setCharactor_id(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->charactor_id:Ljava/lang/String;

    return-void
.end method

.method public setIs_send(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->is_send:Z

    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->order_no:Ljava/lang/String;

    return-void
.end method

.method public setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    return-void
.end method
