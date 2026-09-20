.class public final synthetic Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->lambda$feedbackToDeveloper$7(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    return-void
.end method
