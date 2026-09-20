.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar$OnRatingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

.field public final synthetic f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$3:I

    iput-object p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$4:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onRatingChange(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V
    .locals 10

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$2:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    iget v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$3:I

    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$4:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;->f$5:Ljava/util/List;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$matrixScaleOtherTypeInitView$17$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V

    return-void
.end method
