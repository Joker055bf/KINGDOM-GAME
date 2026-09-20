.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;


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

.field final synthetic val$fileUploadBeanList:Ljava/util/ArrayList;

.field final synthetic val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/ArrayList;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2709
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$fileUploadBeanList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileUploadComplete(I)V
    .locals 8

    .line 2712
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$fileUploadBeanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2714
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/utils/FileProviderUtils;->deleteUploadDirectory(Landroid/content/Context;)V

    .line 2716
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$700(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2717
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$paginationQuestionBean:Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-static {p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$800(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    goto :goto_0

    .line 2720
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$fileUploadBeanList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->val$fileUploadBeanList:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, p1

    move-object v7, p0

    .line 2720
    invoke-static/range {v1 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$900(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    :cond_1
    :goto_0
    return-void
.end method
