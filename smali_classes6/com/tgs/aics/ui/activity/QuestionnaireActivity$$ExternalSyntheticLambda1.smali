.class public final synthetic Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Lcom/tgs/aics/ui/dialog/TipsDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/ui/dialog/TipsDialog;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->lambda$showDialog$6$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/ui/dialog/TipsDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
