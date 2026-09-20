.class public final synthetic Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field public final synthetic f$2:Lcom/tgs/aics/bean/BaseBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/bean/BaseBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/bean/BaseBean;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->lambda$onSubmitClick$1$com-tgs-aics-ui-activity-QuestionnaireActivity$2(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
