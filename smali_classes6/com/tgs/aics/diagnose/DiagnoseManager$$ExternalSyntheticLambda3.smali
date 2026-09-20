.class public final synthetic Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

.field public final synthetic f$1:Lcom/tgs/aics/diagnose/IDiagnose;

.field public final synthetic f$10:Lcom/tgs/aics/diagnose/Config;

.field public final synthetic f$2:[I

.field public final synthetic f$3:[Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field public final synthetic f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

.field public final synthetic f$7:Landroid/content/Context;

.field public final synthetic f$8:Ljava/util/List;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/IDiagnose;[I[ZILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$1:Lcom/tgs/aics/diagnose/IDiagnose;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$2:[I

    iput-object p4, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$3:[Z

    iput p5, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iput-object p7, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    iput-object p8, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$7:Landroid/content/Context;

    iput-object p9, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$8:Ljava/util/List;

    iput p10, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$9:I

    iput-object p11, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$10:Lcom/tgs/aics/diagnose/Config;

    return-void
.end method


# virtual methods
.method public final onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V
    .locals 12

    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$1:Lcom/tgs/aics/diagnose/IDiagnose;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$2:[I

    iget-object v3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$3:[Z

    iget v4, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v6, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    iget-object v7, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$7:Landroid/content/Context;

    iget-object v8, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$8:Ljava/util/List;

    iget v9, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$9:I

    iget-object v10, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;->f$10:Lcom/tgs/aics/diagnose/Config;

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/tgs/aics/diagnose/DiagnoseManager;->lambda$execute$4$com-tgs-aics-diagnose-DiagnoseManager(Lcom/tgs/aics/diagnose/IDiagnose;[I[ZILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
