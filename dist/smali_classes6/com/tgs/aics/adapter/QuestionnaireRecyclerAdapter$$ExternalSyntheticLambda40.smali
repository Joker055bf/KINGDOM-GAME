.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$3:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iput p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$3:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$setPicItemClick$2$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILandroid/view/View;)V

    return-void
.end method
