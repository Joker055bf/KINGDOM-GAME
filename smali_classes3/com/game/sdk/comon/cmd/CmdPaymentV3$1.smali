.class Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;
.super Ljava/lang/Object;
.source "CmdPaymentV3.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPayment(Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

.field final synthetic val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

.field final synthetic val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3;Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->this$0:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    iput-object p2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iput-object p4, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/game/sdk/comon/object/BaseObj;

    .line 220
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz v0, :cond_3

    .line 225
    check-cast p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    .line 226
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;

    invoke-direct {v2, p0, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;I)V

    invoke-static {v1, p1, v2}, Lcom/game/sdk/comon/utils/DialogUtils;->showPaymentRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$3;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;)V

    invoke-static {v0, p1, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    .line 198
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    if-eqz v0, :cond_2

    .line 199
    check-cast p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    .line 200
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->getLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/game/sdk/comon/utils/PurchaseUtils;->markPurchaseToken(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 202
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/VerifyPurchaseObj;->getStatus()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_verify_purchase:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$1;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;)V

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    goto :goto_1

    .line 203
    :cond_1
    :goto_0
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Verify Success - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Landroid/app/Activity;)V

    .line 205
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/IPaymentListener;->onPaymentSuccess(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)V

    :cond_2
    :goto_1
    return-void
.end method
