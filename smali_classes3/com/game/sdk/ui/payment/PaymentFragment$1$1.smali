.class Lcom/game/sdk/ui/payment/PaymentFragment$1$1;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment$1;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/payment/PaymentFragment$1;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentFragment$1;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;->this$1:Lcom/game/sdk/ui/payment/PaymentFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 96
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "Item empty "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 98
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;->this$1:Lcom/game/sdk/ui/payment/PaymentFragment$1;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p1, v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    .line 99
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Item  : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p2}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 101
    :cond_2
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item 1 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item 2 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;->this$1:Lcom/game/sdk/ui/payment/PaymentFragment$1;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p1, p2}, Lcom/game/sdk/ui/payment/PaymentFragment;->retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    .line 105
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "Purchase Item 1  "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;->this$1:Lcom/game/sdk/ui/payment/PaymentFragment$1;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {p1, p2}, Lcom/game/sdk/ui/payment/PaymentFragment;->retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    .line 108
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string p2, "Purchase Item 2 "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
