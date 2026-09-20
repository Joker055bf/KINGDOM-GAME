.class public final synthetic Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/tgs/aics/diagnose/Result;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;ILjava/lang/String;ILcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    iput p2, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$4:Lcom/tgs/aics/diagnose/Result;

    iput-object p6, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$4:Lcom/tgs/aics/diagnose/Result;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler$$ExternalSyntheticLambda0;->f$6:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->lambda$startTrace$0$com-tgs-aics-diagnose-impl-traceroute-TraceHandler(ILjava/lang/String;ILcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
