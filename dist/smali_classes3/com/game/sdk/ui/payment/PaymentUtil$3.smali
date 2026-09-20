.class Lcom/game/sdk/ui/payment/PaymentUtil$3;
.super Ljava/lang/Object;
.source "PaymentUtil.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentUtil;->initIAP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentUtil;Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$3;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil$3;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 228
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 232
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/PurchaseUtils;->convertJsonToObject(Ljava/lang/String;)Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;->getProductId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$3;->val$productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$3;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/payment/PaymentUtil;->retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 229
    :cond_2
    :goto_1
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Item empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
