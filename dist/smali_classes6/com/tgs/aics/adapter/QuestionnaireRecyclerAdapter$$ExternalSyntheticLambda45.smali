.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

.field public final synthetic f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iget v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$fillBlankOnBindViewHolder$16$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;ILandroid/view/View;)V

    return-void
.end method
