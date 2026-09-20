.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/nps/NpsRatingBar$OnRatingSeekBarChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/tgs/aics/bean/EvaluationSystemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/EvaluationSystemBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$4:Lcom/tgs/aics/bean/EvaluationSystemBean;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;I)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;->f$4:Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initDialogView$35$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/EvaluationSystemBean;Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;I)V

    return-void
.end method
