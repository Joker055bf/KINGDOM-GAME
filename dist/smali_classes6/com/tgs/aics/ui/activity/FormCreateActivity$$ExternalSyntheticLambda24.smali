.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/ISendMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$submitFormData$15$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
