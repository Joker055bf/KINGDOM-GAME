.class public interface abstract Lcom/flexionmobile/fdk/BillingService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract purchase(Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/step/PurchaseDeveloperPayloadStep;
.end method

.method public abstract queryIncompletePurchases()Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesSuccessStep;
.end method

.method public abstract refreshItemDefinitions(Ljava/util/List;)Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;"
        }
    .end annotation
.end method
