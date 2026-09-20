.class Lcom/game/sdk/ui/payment/PaymentNativeFragment$3;
.super Ljava/lang/Object;
.source "PaymentNativeFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initIAP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$3;->this$0:Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBillingServiceDisconnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 235
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 236
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBillingSetupFinished: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$3$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$3$1;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment$3;)V

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->queryHistory(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method
