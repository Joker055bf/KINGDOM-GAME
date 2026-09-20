.class Lcom/game/sdk/ui/payment/PaymentFragment$1;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 83
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment$1;->this$0:Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 117
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBillingServiceDisconnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

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

    .line 89
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$1$1;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->queryHistory(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method
