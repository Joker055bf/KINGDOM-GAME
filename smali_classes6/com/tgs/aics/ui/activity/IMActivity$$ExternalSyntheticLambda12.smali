.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/ISendMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;->f$1:Lcom/tgs/aics/bean/Message;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;->f$1:Lcom/tgs/aics/bean/Message;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$uploadClientLogFile$42$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
