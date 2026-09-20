.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$4:Lcom/tgs/aics/bean/Message;

.field public final synthetic f$5:Landroid/app/Dialog;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iput-boolean p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$2:Z

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$3:Lcom/tgs/aics/bean/Message;

    iput-object p5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$4:Lcom/tgs/aics/bean/Message;

    iput-object p6, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$5:Landroid/app/Dialog;

    iput p7, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-boolean v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$2:Z

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$3:Lcom/tgs/aics/bean/Message;

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$4:Lcom/tgs/aics/bean/Message;

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$5:Landroid/app/Dialog;

    iget v6, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initDialogView$37$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;I)V

    return-void
.end method
