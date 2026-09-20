.class public Lcom/flexionmobile/fdk/PurchaseBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/PurchaseDeveloperPayloadStep;
.implements Lcom/flexionmobile/fdk/step/PurchaseErrorStep;
.implements Lcom/flexionmobile/fdk/step/PurchaseSuccessStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private final billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

.field private final currentActivity:Landroid/app/Activity;

.field private developerPayload:Ljava/lang/String;

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private final itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseSuccessResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flexionmobile/fdk/BillingServiceInternal;Landroid/app/Activity;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    iput-object p2, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->currentActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    return-void
.end method


# virtual methods
.method public developerPayload(Ljava/lang/String;)Lcom/flexionmobile/fdk/step/PurchaseSuccessStep;
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->developerPayload:Ljava/lang/String;

    return-object p0
.end method

.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/PurchaseErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/PurchaseErrorStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public start()V
    .locals 6

    iget-object v1, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->developerPayload:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->developerPayload:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    iget-object v2, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->itemDefinition:Lcom/flexionmobile/fdk/ItemDefinition;

    iget-object v3, p0, Lcom/flexionmobile/fdk/PurchaseBuilder;->developerPayload:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/flexionmobile/fdk/BillingServiceInternal;->purchaseInternal(Landroid/app/Activity;Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ErrorHandler cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuccessHandler cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
