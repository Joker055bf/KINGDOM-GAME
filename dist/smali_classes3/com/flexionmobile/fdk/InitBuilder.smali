.class Lcom/flexionmobile/fdk/InitBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/InitContextStep;
.implements Lcom/flexionmobile/fdk/step/InitErrorStep;
.implements Lcom/flexionmobile/fdk/step/InitSuccessStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private context:Landroid/content/Context;

.field private final coreModuleModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ModuleProvider<",
            "Lcom/flexionmobile/fdk/CoreServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitSuccessResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/flexionmobile/fdk/ModuleProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ModuleProvider<",
            "Lcom/flexionmobile/fdk/CoreServiceInternal;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/InitBuilder;->coreModuleModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/flexionmobile/fdk/InitErrorResult;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/flexionmobile/fdk/InitSuccessResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public context(Landroid/content/Context;)Lcom/flexionmobile/fdk/step/InitSuccessStep;
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/InitBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/InitBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/InitBuilder$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/InitBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/InitErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/InitErrorStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/InitBuilder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/InitBuilder$$ExternalSyntheticLambda1;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/InitBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/flexionmobile/fdk/InitBuilder;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexionmobile/fdk/InitBuilder;->coreModuleModuleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/ModuleProvider;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/CoreServiceInternal;

    iget-object v1, p0, Lcom/flexionmobile/fdk/InitBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/flexionmobile/fdk/InitBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v3, p0, Lcom/flexionmobile/fdk/InitBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/flexionmobile/fdk/CoreServiceInternal;->initApplication(Landroid/content/Context;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
