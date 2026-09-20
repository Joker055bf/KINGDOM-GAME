.class public Lcom/game/sdk/comon/object/VerifyPurchaseObj;
.super Ljava/lang/Object;
.source "VerifyPurchaseObj.java"


# instance fields
.field public area_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "area_id"
    .end annotation
.end field

.field public character_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "character_id"
    .end annotation
.end field

.field public created_at:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public is_sandbox:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_sandbox"
    .end annotation
.end field

.field public item_value:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_value"
    .end annotation
.end field

.field public order_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field public payload:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation
.end field

.field public platform_price:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform_price"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public user_id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea_id()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter_id()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->character_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDataString(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)Ljava/lang/String;
    .locals 1

    .line 133
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_value()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->item_value:I

    return v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform_price()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->platform_price:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->status:I

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->user_id:I

    return v0
.end method

.method public isIs_sandbox()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->is_sandbox:Z

    return v0
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->area_id:Ljava/lang/String;

    return-void
.end method

.method public setCharacter_id(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->character_id:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->description:Ljava/lang/String;

    return-void
.end method

.method public setIs_sandbox(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->is_sandbox:Z

    return-void
.end method

.method public setItem_value(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->item_value:I

    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->order_no:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->payload:Ljava/lang/String;

    return-void
.end method

.method public setPlatform_price(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->platform_price:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->status:I

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->user_id:I

    return-void
.end method
