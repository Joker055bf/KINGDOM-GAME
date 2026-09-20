.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Landroid/widget/PopupWindow;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

.field public final synthetic f$4:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

.field public final synthetic f$5:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$1:Landroid/widget/PopupWindow;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$2:F

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$3:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iput-object p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$4:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$5:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iput p7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$6:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$1:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$2:F

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$3:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$4:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$5:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    iget v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;->f$6:I

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$showPopupWindow$28$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILandroid/view/View;)V

    return-void
.end method
