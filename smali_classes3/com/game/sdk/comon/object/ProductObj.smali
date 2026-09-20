.class public Lcom/game/sdk/comon/object/ProductObj;
.super Ljava/lang/Object;
.source "ProductObj.java"


# instance fields
.field private order_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field private product_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/object/ProductObj;->getObjectFromData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getObjectFromData(Ljava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/game/sdk/comon/object/ProductObj;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/game/sdk/comon/object/ProductObj;

    .line 39
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/ProductObj;->getOrder_no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/object/ProductObj;->setOrder_no(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/ProductObj;->getProduct_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/object/ProductObj;->setProduct_id(Ljava/lang/String;)V

    return-void
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/game/sdk/comon/object/ProductObj;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_id()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/game/sdk/comon/object/ProductObj;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/game/sdk/comon/object/ProductObj;->order_no:Ljava/lang/String;

    return-void
.end method

.method public setProduct_id(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/game/sdk/comon/object/ProductObj;->product_id:Ljava/lang/String;

    return-void
.end method
