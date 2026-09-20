.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;
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

.field final synthetic val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;JJLcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    .locals 0

    .line 2643
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 9

    .line 2651
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$500(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$500(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2653
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$502(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2658
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$600(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2659
    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v3, :cond_1

    .line 2660
    check-cast v2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2663
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2666
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    new-instance v6, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    .line 2667
    invoke-static {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8$1;

    invoke-direct {v8, p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8$1;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    .line 2666
    invoke-static/range {v2 .. v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$900(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    goto :goto_1

    .line 2684
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$700(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Z

    .line 2685
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-static {v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$800(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 2646
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_questionnaire_current_page_remaining_answer_time"

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

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
