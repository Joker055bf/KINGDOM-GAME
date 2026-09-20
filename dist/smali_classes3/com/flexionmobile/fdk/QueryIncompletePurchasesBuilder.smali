.class public Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesErrorStep;
.implements Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesSuccessStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private final billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flexionmobile/fdk/BillingServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesErrorStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder$$ExternalSyntheticLambda1;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    iget-object v1, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v2, p0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-interface {v0, v1, v2}, Lcom/flexionmobile/fdk/BillingServiceInternal;->queryIncompletePurchasesInternal(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void
.end method
