.class Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;
.super Ljava/lang/Object;
.source "CmdPaymentV3.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->error(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

.field final synthetic val$count_time:I


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;I)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iput p2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->val$count_time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iget-object v0, v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->val$count_time:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "count_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iget-object v0, v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->this$0:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iget-object v1, v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iget-object v2, v2, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v3, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;

    iget-object v3, v3, Lcom/game/sdk/comon/cmd/CmdPaymentV3$1;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPayment(Landroid/app/Activity;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    return-void
.end method
