.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$2:I

    return-void
.end method


# virtual methods
.method public final onDatePicked(III)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$1:Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;->f$2:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$showDatePickerDialog$33$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;IIII)V

    return-void
.end method
