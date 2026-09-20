.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$1:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$setPicItemClick$0$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FileUploadBean;ILandroid/view/View;)V

    return-void
.end method
