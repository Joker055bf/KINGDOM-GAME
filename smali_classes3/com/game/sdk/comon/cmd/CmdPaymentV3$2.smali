.class Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;
.super Ljava/lang/Object;
.source "CmdPaymentV3.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPaymentNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V
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

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3;Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->this$0:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    iput-object p2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iput-object p4, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$productId:Ljava/lang/String;

    iput-object p5, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/game/sdk/comon/object/BaseObj;

    .line 299
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz v0, :cond_3

    .line 304
    check-cast p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    .line 305
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;

    invoke-direct {v2, p0, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;I)V

    invoke-static {v1, p1, v2}, Lcom/game/sdk/comon/utils/DialogUtils;->showPaymentRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$3;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;)V

    invoke-static {v0, p1, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    .line 277
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    if-eqz v0, :cond_2

    .line 278
    check-cast p1, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;

    .line 279
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->getLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/game/sdk/comon/utils/PurchaseUtils;->markPurchaseToken(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 281
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

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_verify_purchase:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$1;-><init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;)V

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Verify Success - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/game/sdk/comon/utils/PurchaseUtils;->removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;Landroid/app/Activity;)V

    .line 284
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/VerifyPurchaseObj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/IPaymentListener;->onPaymentSuccess(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)V

    :cond_2
    :goto_1
    return-void
.end method
