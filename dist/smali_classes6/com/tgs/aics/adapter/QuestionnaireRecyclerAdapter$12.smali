.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3643
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;->val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 3654
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;->val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

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
