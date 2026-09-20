.class Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;
.super Ljava/lang/Object;
.source "QuestionnaireActivity.java"

# interfaces
.implements Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNextPageClick$0$com-tgs-aics-ui-activity-QuestionnaireActivity$2()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method synthetic lambda$onSubmitClick$1$com-tgs-aics-ui-activity-QuestionnaireActivity$2(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    if-eqz p2, :cond_4

    .line 150
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->questionnaireSubmitListener:Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->questionnaireSubmitListener:Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;

    invoke-interface {p1, v0}, Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;->onResult(Z)V

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$900(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {p1, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$102(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Z)Z

    .line 157
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$200(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$300(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v1, p2, v0}, Lcom/tgs/aics/utils/Utils;->saveQuestionnaireAnsweredQuestionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p2}, Lcom/tgs/aics/bean/BaseBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "time is out"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    const-string p2, "tgs_aics_questionnaire_come_earlier_next_time"

    invoke-virtual {p1, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "tgs_aics_questionnaire_config_error_expired"

    invoke-static {p1, v0, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$1000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "player has commit questionnaire"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 164
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    const-string p2, "tgs_aics_questionnaire_each_role_only_one_reward"

    invoke-virtual {p1, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "tgs_aics_questionnaire_config_error_has_submit"

    invoke-static {p1, v0, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$1000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {p2, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    const-string p2, "Questionnaire submit fail, please try again later."

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onSubmitClick$2$com-tgs-aics-ui-activity-QuestionnaireActivity$2(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    new-instance v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNextPageClick()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onSmoothToPosition(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public onSubmitClick(Ljava/lang/String;)V
    .locals 13

    .line 142
    new-instance v0, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-direct {v0, v1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 145
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v3}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$300(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$200(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$400(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$500(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$600(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$700(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$800(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    move-object v11, p1

    invoke-virtual/range {v2 .. v12}, Lcom/tgs/aics/http/HttpApi;->submitQuestionnaireData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method
