.class Lcom/game/sdk/comon/game/GameSdk$6$1;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/comon/game/GameSdk$6;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk$6;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$6$1;->this$1:Lcom/game/sdk/comon/game/GameSdk$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIapPaymentSuccess(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
    .locals 3

    .line 415
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$6$1;->this$1:Lcom/game/sdk/comon/game/GameSdk$6;

    iget-object v1, v1, Lcom/game/sdk/comon/game/GameSdk$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$6$1;->this$1:Lcom/game/sdk/comon/game/GameSdk$6;

    iget-object v2, v2, Lcom/game/sdk/comon/game/GameSdk$6;->val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPayment(Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    return-void
.end method

.method public onLocalPaymentSuccess(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$6$1;->this$1:Lcom/game/sdk/comon/game/GameSdk$6;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$6;->val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/IPaymentListener;->onPaymentSuccess(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)V

    return-void
.end method
