.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/tgs/aics/bean/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-boolean p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$1:Z

    iput p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$4:Lcom/tgs/aics/bean/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-boolean v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$1:Z

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;->f$4:Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$sendDiagnoseLogFile$47$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
