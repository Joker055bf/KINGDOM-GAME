.class public final synthetic Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Lcom/tgs/aics/ui/dialog/TipsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->lambda$showDialog$5$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/view/View;)V

    return-void
.end method
