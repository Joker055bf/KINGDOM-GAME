.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IGetMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    return-void
.end method


# virtual methods
.method public final onReceiveMessage(Lcom/tgs/aics/bean/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$initGetMessageListener$9$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
