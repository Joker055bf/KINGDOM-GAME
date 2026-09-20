.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/EvaluationSystemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/EvaluationSystemBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;->f$1:Lcom/tgs/aics/bean/EvaluationSystemBean;

    return-void
.end method


# virtual methods
.method public final onRatingChange(Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;FZ)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;->f$1:Lcom/tgs/aics/bean/EvaluationSystemBean;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initDialogView$34$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/EvaluationSystemBean;Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;FZ)V

    return-void
.end method
