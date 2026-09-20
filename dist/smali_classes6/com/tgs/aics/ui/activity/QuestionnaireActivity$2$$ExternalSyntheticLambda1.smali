.class public final synthetic Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IBaseBeanListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

.field public final synthetic f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->lambda$onSubmitClick$2$com-tgs-aics-ui-activity-QuestionnaireActivity$2(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
