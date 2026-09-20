.class public final synthetic Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/Result;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/json/JSONArray;

.field public final synthetic f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;JLorg/json/JSONArray;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/diagnose/Result;

    iput-wide p4, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$4:Lorg/json/JSONArray;

    iput-object p7, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    return-void
.end method


# virtual methods
.method public final onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V
    .locals 9

    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/diagnose/Result;

    iget-wide v3, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$3:J

    iget-object v5, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$4:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;->f$5:Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/tgs/aics/diagnose/DiagnoseManager;->lambda$startDiagnose$3$com-tgs-aics-diagnose-DiagnoseManager(Ljava/util/List;Lcom/tgs/aics/diagnose/Result;JLorg/json/JSONArray;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;ZLcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
