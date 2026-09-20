.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    iput p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initDialogView$36$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/TextView;I)V

    return-void
.end method
