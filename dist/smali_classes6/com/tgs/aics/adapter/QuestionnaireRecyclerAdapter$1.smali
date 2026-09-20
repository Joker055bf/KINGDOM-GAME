.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->sortTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$adapter:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

.field final synthetic val$options:Ljava/util/List;

.field final synthetic val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Ljava/util/List;Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 784
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$options:Ljava/util/List;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$adapter:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDismiss(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 791
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 792
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 795
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 796
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 797
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 798
    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 803
    :cond_1
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$options:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$options:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 804
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$options:Ljava/util/List;

    invoke-static {v3, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 805
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$options:Ljava/util/List;

    iput-object v4, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    .line 806
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$adapter:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->notifyItemMoved(II)V

    .line 809
    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 810
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    iput-object v2, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    .line 811
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;->val$adapter:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-virtual {v3, v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->refreshCurrentValue(Ljava/util/List;)V

    .line 814
    instance-of v2, p1, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    instance-of v2, p2, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    if-eqz v2, :cond_2

    .line 816
    check-cast p1, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->refreshCheckboxNumber(I)V

    .line 817
    check-cast p2, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    add-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->refreshCheckboxNumber(I)V

    :cond_2
    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
