.class Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;
.super Ljava/lang/Object;
.source "PaymentNativeFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentNativeFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    .line 373
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->skuDetails:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 374
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    new-instance p2, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-direct {p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;-><init>()V

    iput-object p2, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    .line 377
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "MOB_ROLE_ID"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MOB_AREA_ID"

    invoke-static {p2, v1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 379
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setArea_id(Ljava/lang/String;)V

    .line 380
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setCharactor_id(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getOrder_no()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setOrder_no(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "currentPurchase: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    new-instance p2, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    invoke-direct {p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;-><init>()V

    .line 387
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setData(Ljava/lang/String;)V

    const-string p1, "inapp"

    .line 388
    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setItemType(Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;->setSignature(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Err Purchase"

    .line 392
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setIs_send(Z)V

    .line 395
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->account_id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setAccount_id(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RECEIPT 1"

    invoke-static {v1, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->listPresenter:Ljava/util/ArrayList;

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

    .line 399
    invoke-interface {v1, v2}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->cancelRequest([Ljava/lang/String;)V

    goto :goto_1

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->account_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-static {p1, p2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveUsePurchaseHistory(Landroid/content/Context;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    .line 402
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->account_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->saveLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentSuccess:Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;

    if-eqz p1, :cond_2

    .line 406
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-virtual {p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->dismiss()V

    .line 408
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentSuccess:Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    iget-object p2, p2, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-interface {p1, p2}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;->onIapPaymentSuccess(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    :cond_2
    return-void
.end method
