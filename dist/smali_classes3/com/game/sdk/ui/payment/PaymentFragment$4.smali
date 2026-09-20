.class Lcom/game/sdk/ui/payment/PaymentFragment$4;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/js/JsPayment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->getJsHandler()Lcom/game/sdk/comon/js/JsBase;
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

    .line 260
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackToWindowns()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-virtual {v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->goBack()V

    return-void
.end method

.method public onCloseWindow()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-virtual {v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->dismiss()V

    return-void
.end method

.method public onOpenWindow()V
    .locals 0

    return-void
.end method

.method public onPaymentStartIAPV3(Ljava/lang/String;)V
    .locals 3

    .line 263
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPaymentStartIAPV3: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    new-instance v1, Lcom/game/sdk/comon/object/ProductObj;

    invoke-direct {v1, p1}, Lcom/game/sdk/comon/object/ProductObj;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->productObj:Lcom/game/sdk/comon/object/ProductObj;

    .line 266
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->productObj:Lcom/game/sdk/comon/object/ProductObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/ProductObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->productObj:Lcom/game/sdk/comon/object/ProductObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ProductObj;->getProduct_id()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$4;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/payment/PaymentFragment;->access$100(Lcom/game/sdk/ui/payment/PaymentFragment;)Lcom/android/billingclient/api/SkuDetailsResponseListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->querySkuDetails(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
