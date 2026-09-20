.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->commonDealWith(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$bean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 880
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->val$bean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 2

    .line 883
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->val$bean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    instance-of v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v0, :cond_0

    .line 884
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 885
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    const-string v1, ""

    .line 886
    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    goto :goto_0

    .line 888
    :cond_0
    instance-of v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v0, :cond_1

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    .line 890
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->val$bean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 891
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    goto :goto_2

    .line 892
    :cond_1
    instance-of v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 893
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 894
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 895
    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    .line 896
    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    goto :goto_1

    .line 901
    :cond_2
    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    .line 903
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->val$position:I

    invoke-static {p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$1400(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;I)V

    return-void
.end method

.method public onViewImage(Ljava/lang/String;)V
    .locals 5

    .line 908
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    const/4 v3, 0x0

    const-string v4, "3000"

    .line 909
    invoke-static {v2, v4, p1, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$1300(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, "aics_media_info_list"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "aics_current_media_unique_id"

    .line 910
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 908
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
