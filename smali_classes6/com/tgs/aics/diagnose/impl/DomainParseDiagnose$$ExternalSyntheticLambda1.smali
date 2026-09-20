.class public final synthetic Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

.field public final synthetic f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose$$ExternalSyntheticLambda1;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-static {v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/DomainParseDiagnose;->lambda$onExecute$1(ILjava/util/List;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
