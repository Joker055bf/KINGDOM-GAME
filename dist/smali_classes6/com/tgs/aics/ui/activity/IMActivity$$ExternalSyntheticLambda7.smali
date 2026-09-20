.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/ISendMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field public final synthetic f$2:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$2:Lcom/tgs/aics/bean/Message;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$2:Lcom/tgs/aics/bean/Message;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;->f$3:Landroid/app/Dialog;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initDialogView$38$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
