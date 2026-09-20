.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

.field public final synthetic f$2:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$2:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;->f$2:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$setPicItemClick$1$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;Landroid/view/View;)V

    return-void
.end method
