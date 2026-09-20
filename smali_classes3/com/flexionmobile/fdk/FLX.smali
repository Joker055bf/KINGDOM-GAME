.class public abstract Lcom/flexionmobile/fdk/FLX;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBillingService(Landroid/app/Activity;)Lcom/flexionmobile/fdk/step/ItemDefinitionsStep;
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;

    new-instance v1, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flexionmobile/fdk/BillingServiceInitBuilder;-><init>(Landroid/app/Activity;Lcom/flexionmobile/fdk/ModuleProvider;)V

    return-object v0
.end method

.method public static getCurrentChannelInfo(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfo;
    .locals 1

    invoke-static {p0}, Lcom/flexionmobile/fdk/FlexionBridge;->createChannelInfoModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;->getCurrentChannelInfo(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static initApplication()Lcom/flexionmobile/fdk/step/InitContextStep;
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/InitBuilder;

    new-instance v1, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/InitBuilder;-><init>(Lcom/flexionmobile/fdk/ModuleProvider;)V

    return-object v0
.end method

.method public static initStartupFlow()Lcom/flexionmobile/fdk/step/InitStartupFlowContextStep;
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;

    new-instance v1, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/InitStartupFlowBuilder;-><init>(Lcom/flexionmobile/fdk/ModuleProvider;)V

    return-object v0
.end method
