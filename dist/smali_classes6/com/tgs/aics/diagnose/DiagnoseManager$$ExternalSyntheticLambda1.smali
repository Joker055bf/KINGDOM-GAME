.class public final synthetic Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/json/JSONArray;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/util/List;Lorg/json/JSONArray;[ILcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$2:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$3:[I

    iput-object p5, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$4:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

    iput p6, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$2:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$3:[I

    iget-object v4, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$4:Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;

    iget v5, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;->f$5:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/DiagnoseManager;->lambda$startDiagnose$2$com-tgs-aics-diagnose-DiagnoseManager(Ljava/util/List;Lorg/json/JSONArray;[ILcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;ILcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
