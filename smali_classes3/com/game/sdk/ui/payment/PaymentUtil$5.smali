.class Lcom/game/sdk/ui/payment/PaymentUtil$5;
.super Ljava/lang/Object;
.source "PaymentUtil.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/payment/PaymentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentUtil;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentUtil;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 292
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const-string v2, "onSkuDetailsResponse: "

    packed-switch v0, :pswitch_data_0

    .line 321
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    :pswitch_0
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iput-object p2, p1, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetails:Ljava/util/List;

    .line 299
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {p2}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget-object v0, v0, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetails:Ljava/util/List;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    iget-object v1, v1, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1, p2, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)I

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil$5;->this$0:Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-static {p2}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;

    move-result-object p2

    sget v0, Lcom/mobgame/R$string;->error_transaction:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentUtil;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
