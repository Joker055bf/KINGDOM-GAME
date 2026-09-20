.class public interface abstract Lcom/flexionmobile/fdk/BillingServiceInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/BillingService;


# virtual methods
.method public abstract finishTransaction(Ljava/lang/String;)V
.end method

.method public abstract initBillingServiceInternal(Landroid/app/Activity;Ljava/util/List;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;",
            "Lcom/flexionmobile/fdk/PurchaseListener;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract purchaseInternal(Landroid/app/Activity;Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            "Ljava/lang/String;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseErrorResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryIncompletePurchasesInternal(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshItemDefinitionsInternal(Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;",
            ">;)V"
        }
    .end annotation
.end method
