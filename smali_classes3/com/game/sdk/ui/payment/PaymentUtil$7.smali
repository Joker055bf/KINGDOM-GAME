.class Lcom/game/sdk/ui/payment/PaymentUtil$7;
.super Ljava/lang/Object;
.source "PaymentUtil.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentUtil;->sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

.field final synthetic val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentUtil;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iput-object p3, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 4

    .line 435
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz v0, :cond_0

    .line 436
    move-object v0, p1

    check-cast v0, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    .line 437
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Verify failed - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v3}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/payment/PaymentUtil;->checkPurchaseHistory(Ljava/lang/String;)V

    .line 440
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/BaseObj;

    if-eqz v0, :cond_1

    .line 441
    check-cast p1, Lcom/game/sdk/comon/object/BaseObj;

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
    .locals 2

    .line 422
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    .line 424
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->getStatus()I

    .line 425
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentUtil;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->setAccount_id(Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$productId:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {v1}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;Landroid/app/Activity;)V

    .line 427
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget v0, p1, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    .line 428
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/game/sdk/ui/payment/PaymentUtil;->checkPurchaseHistory(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Verify Success - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$7;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
