.class public Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
.super Ljava/lang/Object;
.source "VerifyPurchaseRequestObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receipt"
.end annotation


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private itemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemType"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->data:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->signature:Ljava/lang/String;

    return-void
.end method
