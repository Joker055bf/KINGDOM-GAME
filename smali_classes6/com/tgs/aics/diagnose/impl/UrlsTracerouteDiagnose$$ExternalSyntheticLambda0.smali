.class public final synthetic Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    return-void
.end method


# virtual methods
.method public final onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V
    .locals 4

    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tgs/aics/diagnose/impl/UrlsTracerouteDiagnose;->lambda$onExecute$0(JLjava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
