.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/CheckBox;Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$2:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;->f$2:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$updateEvaluationSystemConfig$40$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/CheckBox;Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
