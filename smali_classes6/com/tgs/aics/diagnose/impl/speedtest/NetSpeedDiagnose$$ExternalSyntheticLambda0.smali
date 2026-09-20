.class public final synthetic Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

.field public final synthetic f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->lambda$onExecute$0$com-tgs-aics-diagnose-impl-speedtest-NetSpeedDiagnose(Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
