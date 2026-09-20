.class public final synthetic Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field public final synthetic f$3:Lcom/tgs/aics/diagnose/DiagnoseManager;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;Landroid/content/Context;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/DiagnoseManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/DiagnoseManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/DiagnoseManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;->lambda$onExecute$0$com-tgs-aics-diagnose-impl-InnerMaintenanceDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/DiagnoseManager;)V

    return-void
.end method
