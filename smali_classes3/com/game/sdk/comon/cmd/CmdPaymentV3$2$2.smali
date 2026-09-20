.class Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;
.super Ljava/lang/Object;
.source "CmdPaymentV3.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->error(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

.field final synthetic val$count_time:I


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;I)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iput p2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->val$count_time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v0, v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->val$count_time:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "count_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    iget-object v0, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v0, v0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->this$0:Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    iget-object v1, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v1, v1, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v2, v2, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v3, v3, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$historyObj:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    iget-object v4, p0, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2$2;->this$1:Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;

    iget-object v4, v4, Lcom/game/sdk/comon/cmd/CmdPaymentV3$2;->val$iPaymentListener:Lcom/game/sdk/comon/listener/IPaymentListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->verifyPaymentNative(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Lcom/game/sdk/comon/listener/IPaymentListener;)V

    return-void
.end method
