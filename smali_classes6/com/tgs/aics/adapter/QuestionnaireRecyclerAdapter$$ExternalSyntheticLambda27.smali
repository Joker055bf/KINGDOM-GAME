.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

.field public final synthetic f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iget v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$addMatrixScaleRadioLayout$19$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILandroid/widget/RadioGroup;I)V

    return-void
.end method
