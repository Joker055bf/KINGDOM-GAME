.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;
.super Landroid/os/CountDownTimer;
.source "QuestionnaireRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->paginatorOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$holder:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

.field final synthetic val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;JJLcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    .locals 0

    .line 2622
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->val$holder:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iput-object p7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 2630
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->val$holder:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$300(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 2625
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->val$holder:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_questionnaire_some_seconds_go_on"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
