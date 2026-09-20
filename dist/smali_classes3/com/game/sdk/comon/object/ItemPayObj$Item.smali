.class public Lcom/game/sdk/comon/object/ItemPayObj$Item;
.super Ljava/lang/Object;
.source "ItemPayObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/ItemPayObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;
    }
.end annotation


# instance fields
.field private configItem:Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private itemNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_no"
    .end annotation
.end field

.field private itemValue:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_value"
    .end annotation
.end field

.field private price:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private productId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field private unit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit"
    .end annotation
.end field

.field private xt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigItem()Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->configItem:Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNo()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->itemNo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemValue()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->itemValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getXt()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->xt:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigItem(Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->configItem:Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->currency:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->image:Ljava/lang/String;

    return-void
.end method

.method public setItemNo(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->itemNo:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(Ljava/lang/Integer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->itemValue:Ljava/lang/Integer;

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->price:Ljava/lang/Double;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->productId:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->unit:Ljava/lang/String;

    return-void
.end method

.method public setXt(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item;->xt:Ljava/lang/String;

    return-void
.end method
