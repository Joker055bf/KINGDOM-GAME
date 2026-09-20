.class public Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;
.super Ljava/lang/Object;


# instance fields
.field private final message:Ljava/lang/String;

.field private final responseCode:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->responseCode:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    return-void
.end method

.method public static of(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;
    .locals 1

    new-instance v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;

    invoke-direct {v0, p0, p1}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;-><init>(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)V

    return-object v0
.end method


# virtual methods
.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public responseCode()Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->responseCode:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BillingServiceInitErrorResult{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->responseCode:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
