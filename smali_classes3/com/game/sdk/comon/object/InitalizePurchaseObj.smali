.class public Lcom/game/sdk/comon/object/InitalizePurchaseObj;
.super Ljava/lang/Object;
.source "InitalizePurchaseObj.java"


# instance fields
.field private amount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private created_at:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private game_id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game_id"
    .end annotation
.end field

.field private item_value:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_value"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field private order_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field private payload:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation
.end field

.field private platform_price:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform_price"
    .end annotation
.end field

.field private product_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private user_id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->amount:F

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->game_id:I

    return v0
.end method

.method public getItem_value()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->item_value:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform_price()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->platform_price:F

    return v0
.end method

.method public getProduct_id()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->status:I

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->user_id:I

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->amount:F

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->currency:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->description:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->game_id:I

    return-void
.end method

.method public setItem_value(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->item_value:I

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->method:Ljava/lang/String;

    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->order_no:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->payload:Ljava/lang/String;

    return-void
.end method

.method public setPlatform_price(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->platform_price:F

    return-void
.end method

.method public setProduct_id(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->product_id:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->status:I

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->user_id:I

    return-void
.end method
