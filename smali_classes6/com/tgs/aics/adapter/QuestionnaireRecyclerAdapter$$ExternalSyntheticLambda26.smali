.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$3:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iput p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$4:I

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;I)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$1:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$3:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iget v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$matrixScaleNpsTypeInitView$18$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;I)V

    return-void
.end method
