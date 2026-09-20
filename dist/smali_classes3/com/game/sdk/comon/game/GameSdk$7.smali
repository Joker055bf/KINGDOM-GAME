.class Lcom/game/sdk/comon/game/GameSdk$7;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->paymentNative(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/listener/IPaymentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/IPaymentListener;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$7;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$7;->val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentSuccess(Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
    .locals 3

    .line 454
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/comon/game/GameSdk$7;->val$listener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPaymentNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    return-void
.end method
