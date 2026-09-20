.class public final synthetic Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    return-void
.end method


# virtual methods
.method public final onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->lambda$startCheck$6$com-tgs-aics-diagnose-view-DiagnoseActivity(ZLcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
