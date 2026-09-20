.class public final synthetic Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field public final synthetic f$2:Lcom/tgs/aics/bean/BaseDataBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/bean/BaseDataBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/bean/BaseDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->lambda$onResult$0$com-tgs-aics-ui-activity-RedemptionCodeActivity$7(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseDataBean;)V

    return-void
.end method
