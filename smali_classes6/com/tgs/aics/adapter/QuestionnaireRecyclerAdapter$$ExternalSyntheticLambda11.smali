.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/UploadResultBean;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field public final synthetic f$7:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/UploadResultBean;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$1:Lcom/tgs/aics/bean/UploadResultBean;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$3:I

    iput-object p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$4:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iput p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$5:I

    iput-object p7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$6:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iput-object p8, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$7:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$1:Lcom/tgs/aics/bean/UploadResultBean;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$3:I

    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$4:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$5:I

    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$6:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;->f$7:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$fileUpload$22$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/UploadResultBean;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    return-void
.end method
