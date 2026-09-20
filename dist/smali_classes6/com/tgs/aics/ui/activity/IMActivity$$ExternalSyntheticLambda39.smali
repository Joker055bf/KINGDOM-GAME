.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;ILcom/tgs/aics/bean/Message;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$1:I

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$2:Lcom/tgs/aics/bean/Message;

    iput-boolean p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$1:I

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$2:Lcom/tgs/aics/bean/Message;

    iget-boolean v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$dealImagePickComplete$21$com-tgs-aics-ui-activity-IMActivity(ILcom/tgs/aics/bean/Message;Z)V

    return-void
.end method
