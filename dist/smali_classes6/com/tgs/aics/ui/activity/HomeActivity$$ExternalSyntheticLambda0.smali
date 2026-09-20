.class public final synthetic Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/BaseBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/bean/BaseBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/bean/BaseBean;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->lambda$getUnreadMessageCount$9$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
