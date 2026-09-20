.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showMatrixRadioPopupEditText(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$columnId:Ljava/lang/String;

.field final synthetic val$row:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3082
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$row:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$columnId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 3095
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$row:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$row:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    .line 3098
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$row:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;->val$columnId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
