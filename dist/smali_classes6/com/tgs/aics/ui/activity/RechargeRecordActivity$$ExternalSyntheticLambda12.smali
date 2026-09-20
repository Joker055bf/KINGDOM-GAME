.class public final synthetic Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;->f$1:Lcom/tgs/aics/bean/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;->f$1:Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->lambda$initGetMessageListener$4$com-tgs-aics-ui-activity-RechargeRecordActivity(Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
