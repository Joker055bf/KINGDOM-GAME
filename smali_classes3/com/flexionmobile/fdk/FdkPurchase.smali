.class public Lcom/flexionmobile/fdk/FdkPurchase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/Purchase;


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final item:Lcom/flexionmobile/fdk/Item;

.field private final orderId:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final purchaseJson:Ljava/lang/String;

.field private final purchaseTime:Ljava/util/Date;

.field private final signature:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/flexionmobile/fdk/Item;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->item:Lcom/flexionmobile/fdk/Item;

    iput-object p2, p0, Lcom/flexionmobile/fdk/FdkPurchase;->orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseTime:Ljava/util/Date;

    iput-object p4, p0, Lcom/flexionmobile/fdk/FdkPurchase;->developerPayload:Ljava/lang/String;

    iput-object p5, p0, Lcom/flexionmobile/fdk/FdkPurchase;->token:Ljava/lang/String;

    iput-object p6, p0, Lcom/flexionmobile/fdk/FdkPurchase;->provider:Ljava/lang/String;

    iput-object p7, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseJson:Ljava/lang/String;

    iput-object p8, p0, Lcom/flexionmobile/fdk/FdkPurchase;->signature:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/flexionmobile/fdk/Item;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkPurchase;
    .locals 10

    new-instance v9, Lcom/flexionmobile/fdk/FdkPurchase;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/flexionmobile/fdk/FdkPurchase;-><init>(Lcom/flexionmobile/fdk/Item;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lcom/flexionmobile/fdk/Item;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->item:Lcom/flexionmobile/fdk/Item;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkPurchase;->token:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FdkPurchase{item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->item:Lcom/flexionmobile/fdk/Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', purchaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", developerPayload=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', purchaseJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->purchaseJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', signature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkPurchase;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
