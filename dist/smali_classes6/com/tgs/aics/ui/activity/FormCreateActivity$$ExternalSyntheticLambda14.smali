.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Landroid/app/Dialog;

.field public final synthetic f$2:Lcom/tgs/aics/bean/FormListBean$Item;

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$1:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$2:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$1:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$2:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;->f$3:[Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$multipleSelectLogic$23$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;[ZLandroid/view/View;)V

    return-void
.end method
