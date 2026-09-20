.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$1:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$3:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    iput p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$4:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$1:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$3:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    iget v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$checkboxTypeInitView$38$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
