.class public Lcom/flexionmobile/sdk/FDKTestBillingService$Default;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/sdk/FDKTestBillingService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public consumePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getBuyIntent(Ljava/lang/String;Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemDetails(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPurchases(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initStartupFlow(Ljava/lang/String;)Lcom/flexionmobile/sdk/parcel/StartupData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
