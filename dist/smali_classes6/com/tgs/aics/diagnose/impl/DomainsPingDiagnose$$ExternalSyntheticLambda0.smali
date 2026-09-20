.class public final synthetic Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/Result;

.field public final synthetic f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/Result;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/diagnose/Result;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/tgs/aics/diagnose/impl/DomainsPingDiagnose;->lambda$onExecute$0(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Ljava/lang/String;Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
