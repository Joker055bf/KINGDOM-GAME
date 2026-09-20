.class public final synthetic Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose;

.field public final synthetic f$1:Lcom/tgs/aics/diagnose/Result;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose;Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/Result;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/Result;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose$$ExternalSyntheticLambda0;->f$3:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/TcpUrlsDiagnose;->lambda$onExecute$0$com-tgs-aics-diagnose-impl-TcpUrlsDiagnose(Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
