.class public Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsErrorStep;
.implements Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private final billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private final itemDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flexionmobile/fdk/BillingServiceInternal;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/BillingServiceInternal;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    iput-object p2, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->itemDefinitions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsErrorStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->billingModule:Lcom/flexionmobile/fdk/BillingServiceInternal;

    iget-object v3, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;->itemDefinitions:Ljava/util/List;

    invoke-interface {v2, v3, v0, v1}, Lcom/flexionmobile/fdk/BillingServiceInternal;->refreshItemDefinitionsInternal(Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ErrorHandler cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuccessHandler cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
