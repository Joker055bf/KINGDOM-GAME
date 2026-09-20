.class public Lcom/flexionmobile/fdk/PurchaseErrorResult;
.super Ljava/lang/Object;


# instance fields
.field private final itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

.field private final message:Ljava/lang/String;

.field private final responseCode:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;


# direct methods
.method private constructor <init>(Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    iput-object p2, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->responseCode:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;

    return-void
.end method

.method public static of(Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/PurchaseErrorResult;
    .locals 1

    new-instance v0, Lcom/flexionmobile/fdk/PurchaseErrorResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/flexionmobile/fdk/PurchaseErrorResult;-><init>(Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;)V

    return-object v0
.end method


# virtual methods
.method public itemDefinition()Lcom/flexionmobile/fdk/ItemDefinition;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public responseCode()Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->responseCode:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseErrorResult{itemDefinition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseErrorResult;->responseCode:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
