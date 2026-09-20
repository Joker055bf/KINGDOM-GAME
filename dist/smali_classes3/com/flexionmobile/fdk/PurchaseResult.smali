.class public Lcom/flexionmobile/fdk/PurchaseResult;
.super Ljava/lang/Object;


# instance fields
.field private final description:Ljava/lang/String;

.field private final itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

.field private final purchase:Lcom/flexionmobile/fdk/Purchase;

.field private final purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

.field private final resultCode:Lcom/flexionmobile/fdk/PurchaseResultCode;


# direct methods
.method constructor <init>(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->resultCode:Lcom/flexionmobile/fdk/PurchaseResultCode;

    iput-object p2, p0, Lcom/flexionmobile/fdk/PurchaseResult;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchase:Lcom/flexionmobile/fdk/Purchase;

    iput-object p4, p0, Lcom/flexionmobile/fdk/PurchaseResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    iput-object p5, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    return-void
.end method

.method public static of(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)Lcom/flexionmobile/fdk/PurchaseResult;
    .locals 7

    new-instance v6, Lcom/flexionmobile/fdk/PurchaseResult;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flexionmobile/fdk/PurchaseResult;-><init>(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)V

    return-object v6
.end method


# virtual methods
.method public finishTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchase:Lcom/flexionmobile/fdk/Purchase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/PurchaseService;->complete(Lcom/flexionmobile/fdk/Purchase;)V

    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getItemDefinition()Lcom/flexionmobile/fdk/ItemDefinition;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    return-object v0
.end method

.method public getPurchase()Lcom/flexionmobile/fdk/Purchase;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchase:Lcom/flexionmobile/fdk/Purchase;

    return-object v0
.end method

.method public getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseResult;->resultCode:Lcom/flexionmobile/fdk/PurchaseResultCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseResult{resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->resultCode:Lcom/flexionmobile/fdk/PurchaseResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', purchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->purchase:Lcom/flexionmobile/fdk/Purchase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
