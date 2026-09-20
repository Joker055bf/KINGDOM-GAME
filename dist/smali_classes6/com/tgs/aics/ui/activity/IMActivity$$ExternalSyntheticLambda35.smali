.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$3:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-boolean p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$1:Z

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$2:Lcom/tgs/aics/bean/Message;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$3:Lcom/tgs/aics/bean/Message;

    iput p5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$4:I

    iput-object p6, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-boolean v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$1:Z

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$2:Lcom/tgs/aics/bean/Message;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$3:Lcom/tgs/aics/bean/Message;

    iget v4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$4:I

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$uploadClientLogFile$41$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;ILjava/lang/String;)V

    return-void
.end method
