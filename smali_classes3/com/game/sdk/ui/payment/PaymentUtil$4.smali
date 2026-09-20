.class Lcom/game/sdk/ui/payment/PaymentUtil$4;
.super Ljava/lang/Object;
.source "PaymentUtil.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentUtil;->retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

.field final synthetic val$pr:Lcom/android/billingclient/api/PurchaseHistoryRecord;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentUtil;Lcom/android/billingclient/api/PurchaseHistoryRecord;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->val$pr:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 271
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;

    if-eqz v0, :cond_1

    .line 272
    check-cast p1, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;

    .line 273
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;->getStatus()I

    move-result v0

    const/16 v2, 0x7ec

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/RetryPaymentErrObj;->getStatus()I

    move-result p1

    const/16 v0, 0x7eb

    if-ne p1, v0, :cond_1

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->val$pr:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->markPurchaseToken(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public hideProgress()V
    .locals 0

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    .line 261
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;

    if-eqz v0, :cond_0

    .line 262
    check-cast p1, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;

    .line 263
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry Success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {v0}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/ToastUtils;->showLengthInfoToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$4;->val$pr:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->markPurchaseToken(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
