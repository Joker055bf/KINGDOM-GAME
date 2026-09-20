.class Lcom/game/sdk/ui/payment/PaymentFragment$3;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

.field final synthetic val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentFragment;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 4

    .line 216
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz v0, :cond_0

    .line 217
    move-object v0, p1

    check-cast v0, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    .line 218
    sget-object v1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Verify failed - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

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

    .line 219
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-virtual {v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->checkPurchaseHistory()V

    .line 221
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/BaseObj;

    if-eqz v0, :cond_1

    .line 222
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

    .line 203
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    .line 206
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/PurchaseUtils;->removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Landroid/app/Activity;)V

    .line 207
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget v0, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    .line 208
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-virtual {p1}, Lcom/game/sdk/ui/payment/PaymentFragment;->checkPurchaseHistory()V

    .line 209
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Verify Success - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$3;->val$obj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

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
