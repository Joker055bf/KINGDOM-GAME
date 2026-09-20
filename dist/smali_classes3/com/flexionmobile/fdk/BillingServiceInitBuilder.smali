.class Lcom/flexionmobile/fdk/BillingServiceInitBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/BillingServiceInitErrorStep;
.implements Lcom/flexionmobile/fdk/step/BillingServiceInitSuccessStep;
.implements Lcom/flexionmobile/fdk/step/ItemDefinitionsStep;
.implements Lcom/flexionmobile/fdk/step/PurchaseListenerStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private billingModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ModuleProvider<",
            "Lcom/flexionmobile/fdk/BillingServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private itemDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseListener:Lcom/flexionmobile/fdk/PurchaseListener;

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/flexionmobile/fdk/ModuleProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/flexionmobile/fdk/ModuleProvider<",
            "Lcom/flexionmobile/fdk/BillingServiceInternal;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->billingModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public itemDefinitions(Ljava/util/List;)Lcom/flexionmobile/fdk/step/PurchaseListenerStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/PurchaseListenerStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->itemDefinitions:Ljava/util/List;

    return-object p0
.end method

.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/BillingServiceInitBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/BillingServiceInitBuilder$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/BillingServiceInitErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/BillingServiceInitErrorStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/BillingServiceInitBuilder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/BillingServiceInitBuilder$$ExternalSyntheticLambda1;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public purchaseListener(Lcom/flexionmobile/fdk/PurchaseListener;)Lcom/flexionmobile/fdk/step/BillingServiceInitSuccessStep;
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->purchaseListener:Lcom/flexionmobile/fdk/PurchaseListener;

    return-object p0
.end method

.method public start()V
    .locals 7

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->itemDefinitions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->purchaseListener:Lcom/flexionmobile/fdk/PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->billingModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    iget-object v1, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/ModuleProvider;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/flexionmobile/fdk/BillingServiceInternal;

    iget-object v2, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->itemDefinitions:Ljava/util/List;

    iget-object v4, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->purchaseListener:Lcom/flexionmobile/fdk/PurchaseListener;

    iget-object v5, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v6, p0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-interface/range {v1 .. v6}, Lcom/flexionmobile/fdk/BillingServiceInternal;->initBillingServiceInternal(Landroid/app/Activity;Ljava/util/List;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GlobalPurchaseListener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetails cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
