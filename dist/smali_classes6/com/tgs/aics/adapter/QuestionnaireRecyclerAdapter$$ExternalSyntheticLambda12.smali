.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$2:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;->f$2:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$fileUpload$23$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(ILcom/tgs/aics/ui/dialog/LoadingDialog;)V

    return-void
.end method
