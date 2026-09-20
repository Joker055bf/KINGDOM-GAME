.class public interface abstract Lcom/flexionmobile/sdk/FDKTestBillingService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract consumePurchase(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBuyIntent(Ljava/lang/String;Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getItemDetails(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/sdk/parcel/ItemType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation
.end method

.method public abstract getPurchases(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract initStartupFlow(Ljava/lang/String;)Lcom/flexionmobile/sdk/parcel/StartupData;
.end method
