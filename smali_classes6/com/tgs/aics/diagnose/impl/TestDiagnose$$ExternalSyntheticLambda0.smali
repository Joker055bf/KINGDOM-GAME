.class public final synthetic Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/TestDiagnose;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/TestDiagnose;IILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/TestDiagnose;

    iput p2, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/TestDiagnose;

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/TestDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/TestDiagnose;->lambda$onExecute$0$com-tgs-aics-diagnose-impl-TestDiagnose(IILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
