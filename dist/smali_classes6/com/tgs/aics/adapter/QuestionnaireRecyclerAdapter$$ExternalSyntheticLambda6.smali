.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/widget/RadioButton;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/List;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILandroid/widget/RadioButton;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$3:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    iput p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$4:I

    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$5:Landroid/widget/RadioButton;

    iput p7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$6:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$3:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    iget v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$4:I

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$5:Landroid/widget/RadioButton;

    iget v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;->f$6:I

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$addMatrixRadioOptionLayout$11$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/util/List;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILandroid/widget/RadioButton;ILandroid/view/View;)V

    return-void
.end method
