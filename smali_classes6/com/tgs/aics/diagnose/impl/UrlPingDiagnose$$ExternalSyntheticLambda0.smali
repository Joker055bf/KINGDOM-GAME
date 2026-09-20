.class public final synthetic Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;

.field public final synthetic f$1:Lcom/tgs/aics/diagnose/Result;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Lcom/tgs/aics/diagnose/KeyValue;

.field public final synthetic f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/diagnose/KeyValue;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/Result;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iput-object p6, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$5:Lcom/tgs/aics/diagnose/KeyValue;

    iput-object p7, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/Result;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/DiagnoseManager;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$5:Lcom/tgs/aics/diagnose/KeyValue;

    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->lambda$onExecute$0$com-tgs-aics-diagnose-impl-UrlPingDiagnose(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/diagnose/KeyValue;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
