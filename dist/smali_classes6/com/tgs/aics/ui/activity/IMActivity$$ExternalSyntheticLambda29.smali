.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-boolean p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$1:Z

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$2:Lcom/tgs/aics/bean/Message;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-boolean v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$1:Z

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$2:Lcom/tgs/aics/bean/Message;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initView$0$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Ljava/util/ArrayList;)V

    return-void
.end method
