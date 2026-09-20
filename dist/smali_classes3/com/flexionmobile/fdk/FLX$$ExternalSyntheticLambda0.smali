.class public final synthetic Lcom/flexionmobile/fdk/FLX$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/flexionmobile/fdk/ModuleProvider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/flexionmobile/fdk/FlexionBridge;->createBillingModule(Landroid/content/Context;)Lcom/flexionmobile/fdk/BillingServiceInternal;

    move-result-object p1

    return-object p1
.end method
