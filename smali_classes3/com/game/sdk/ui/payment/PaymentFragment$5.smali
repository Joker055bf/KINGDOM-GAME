.class Lcom/game/sdk/ui/payment/PaymentFragment$5;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentFragment;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    .line 320
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->skuDetails:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 321
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    new-instance p2, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-direct {p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;-><init>()V

    iput-object p2, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    .line 323
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "MOB_ROLE_ID"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MOB_AREA_ID"

    invoke-static {p2, v1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 325
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setArea_id(Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setCharactor_id(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->productObj:Lcom/game/sdk/comon/object/ProductObj;

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ProductObj;->getOrder_no()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setOrder_no(Ljava/lang/String;)V

    .line 328
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "currentPurchase: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance p2, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    invoke-direct {p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;-><init>()V

    .line 333
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setData(Ljava/lang/String;)V

    const-string p1, "inapp"

    .line 334
    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setItemType(Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setSignature(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Err Purchase"

    .line 338
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setIs_send(Z)V

    .line 341
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentFragment;->account_id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setAccount_id(Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RECEIPT 1"

    invoke-static {v1, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->listPresenter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/ui/payment/IPaymentPresenter;

    if-eqz v1, :cond_0

    new-array v2, p2, [Ljava/lang/String;

    .line 345
    invoke-interface {v1, v2}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->cancelRequest([Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->account_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->saveLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->account_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-static {p1, p2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveUsePurchaseHistory(Landroid/content/Context;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    .line 349
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->paymentGGSuccess:Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;

    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-virtual {p1}, Lcom/game/sdk/ui/payment/PaymentFragment;->dismiss()V

    .line 352
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->paymentGGSuccess:Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$5;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-interface {p1, p2}, Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;->onPaymentGGSuccess(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    :cond_2
    return-void
.end method
