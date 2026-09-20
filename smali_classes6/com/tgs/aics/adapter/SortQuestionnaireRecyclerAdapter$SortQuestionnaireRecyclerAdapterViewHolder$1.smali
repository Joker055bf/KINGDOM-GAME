.class Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;
.super Ljava/lang/Object;
.source "SortQuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->setData(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

.field final synthetic val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    iput-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;->val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;->val$optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    invoke-static {v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->access$300(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)Landroid/widget/EditText;

    move-result-object v0

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
