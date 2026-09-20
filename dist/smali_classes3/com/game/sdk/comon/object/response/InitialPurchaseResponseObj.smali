.class public Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "InitialPurchaseResponseObj.java"


# instance fields
.field private data:Lcom/game/sdk/comon/object/InitalizePurchaseObj;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/game/sdk/comon/object/InitalizePurchaseObj;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->data:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    return-object v0
.end method

.method public setData(Lcom/game/sdk/comon/object/InitalizePurchaseObj;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->data:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    return-void
.end method
