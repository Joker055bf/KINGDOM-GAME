.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar$OnRatingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

.field public final synthetic f$2:Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$2:Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final onRatingChange(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$1:Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$2:Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    iget v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;->f$3:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$buildRegularScaleOther$27$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;ILcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V

    return-void
.end method
