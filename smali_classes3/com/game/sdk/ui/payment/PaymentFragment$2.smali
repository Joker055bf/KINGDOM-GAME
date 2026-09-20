.class Lcom/game/sdk/ui/payment/PaymentFragment$2;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$2;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 124
    sget-object v1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPurchasesUpdated:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const/4 p2, 0x1

    if-eq v0, p2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    .line 151
    sget-object p2, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "onPurchasesUpdated: The user already owns this item"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "onPurchasesUpdated: Developer error means that Google Play does not recognize the configuration. If you are just getting started, make sure you have configured the application correctly in the Google Play Console. The SKU product ID must match and the APK you are using must be signed with release keys."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_2
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "onPurchasesUpdated: This item is unavailable"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_3
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "onPurchasesUpdated: User canceled the purchase"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$2;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->skuDetails:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$2;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-static {p1, p2}, Lcom/game/sdk/ui/payment/PaymentFragment;->access$000(Lcom/game/sdk/ui/payment/PaymentFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method
