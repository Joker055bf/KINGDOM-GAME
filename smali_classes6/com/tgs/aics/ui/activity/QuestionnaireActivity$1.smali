.class Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "QuestionnaireActivity.java"


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
.method constructor <init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Z)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->releaseCountDownTimer()V

    .line 61
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$100(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->clearAllEditTextFocus()V

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getCurrentPageNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isCurrentPageAllNullCurrentValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->publicSaveCurrentPageData()Z

    .line 67
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAnsweredQuestionJsonData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$200(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-static {v3}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->access$300(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tgs/aics/utils/Utils;->saveQuestionnaireAnsweredQuestionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;->this$0:Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->finish()V

    return-void
.end method
