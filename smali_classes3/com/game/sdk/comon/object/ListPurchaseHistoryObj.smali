.class public Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;
.super Ljava/lang/Object;
.source "ListPurchaseHistoryObj.java"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "charactor_id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/PurchaseHistoryObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/PurchaseHistoryObj;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/PurchaseHistoryObj;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->data:Ljava/util/ArrayList;

    return-void
.end method
