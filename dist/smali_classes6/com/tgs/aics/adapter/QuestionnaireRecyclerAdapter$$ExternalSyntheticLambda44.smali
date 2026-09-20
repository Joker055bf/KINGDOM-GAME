.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

.field public final synthetic f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$fillBlankOnBindViewHolder$15$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Landroid/view/View;Z)V

    return-void
.end method
