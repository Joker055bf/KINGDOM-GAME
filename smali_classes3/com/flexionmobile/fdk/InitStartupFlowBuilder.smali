.class Lcom/flexionmobile/fdk/InitStartupFlowBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/step/InitStartupFlowContextStep;
.implements Lcom/flexionmobile/fdk/step/InitStartupFlowErrorStep;
.implements Lcom/flexionmobile/fdk/step/InitStartupFlowSuccessStep;
.implements Lcom/flexionmobile/fdk/step/StartStep;


# instance fields
.field private activity:Landroid/app/Activity;

.field private errorHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleProvider:Lcom/flexionmobile/fdk/ModuleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ModuleProvider<",
            "Lcom/flexionmobile/fdk/CoreServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private successHandler:Lcom/flexionmobile/fdk/ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;",
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

    iput-object p1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->moduleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public activity(Landroid/app/Activity;)Lcom/flexionmobile/fdk/step/InitStartupFlowSuccessStep;
    .locals 0

    iput-object p1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/StartStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/InitStartupFlowBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/InitStartupFlowBuilder$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/InitStartupFlowErrorStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/InitStartupFlowErrorStep;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/flexionmobile/fdk/InitStartupFlowBuilder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/flexionmobile/fdk/InitStartupFlowBuilder$$ExternalSyntheticLambda1;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    return-object p0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->moduleProvider:Lcom/flexionmobile/fdk/ModuleProvider;

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/ModuleProvider;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/CoreServiceInternal;

    iget-object v1, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->successHandler:Lcom/flexionmobile/fdk/ResultHandler;

    iget-object v3, p0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;->errorHandler:Lcom/flexionmobile/fdk/ResultHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/flexionmobile/fdk/CoreServiceInternal;->initStartupFlow(Landroid/app/Activity;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
