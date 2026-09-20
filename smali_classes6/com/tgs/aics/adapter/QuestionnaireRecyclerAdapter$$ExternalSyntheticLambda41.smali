.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$1:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$3:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$1:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;->f$3:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$commonDealWith$5$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    return-void
.end method
