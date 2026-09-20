.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

.field public final synthetic f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$1:Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$1:Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;->f$2:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$titleOnBindViewHolder$10$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    return-void
.end method
