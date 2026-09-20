.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/BaseBean;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/BaseBean;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$1:Lcom/tgs/aics/bean/BaseBean;

    iput-boolean p3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$1:Lcom/tgs/aics/bean/BaseBean;

    iget-boolean v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$loadData$17$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/BaseBean;Z)V

    return-void
.end method
