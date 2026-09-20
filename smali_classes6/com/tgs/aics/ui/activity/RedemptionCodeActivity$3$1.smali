.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;->onResult(Lcom/tgs/aics/bean/RedemptionCodePageBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;

.field final synthetic val$data:Lcom/tgs/aics/bean/RedemptionCodePageBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;Lcom/tgs/aics/bean/RedemptionCodePageBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;->this$1:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;->val$data:Lcom/tgs/aics/bean/RedemptionCodePageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;->this$1:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;->val$data:Lcom/tgs/aics/bean/RedemptionCodePageBean;

    invoke-static {v0, v1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$200(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean;)V

    return-void
.end method
