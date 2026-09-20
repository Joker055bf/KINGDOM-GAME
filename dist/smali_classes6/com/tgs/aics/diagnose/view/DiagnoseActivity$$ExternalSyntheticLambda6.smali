.class public final synthetic Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/BaseBean;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;->f$1:Lcom/tgs/aics/bean/BaseBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;->f$1:Lcom/tgs/aics/bean/BaseBean;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->lambda$initView$4$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
