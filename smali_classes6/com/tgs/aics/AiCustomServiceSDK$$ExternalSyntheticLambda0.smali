.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/AiCustomServiceSDK;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/AiCustomServiceSDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    return-void
.end method


# virtual methods
.method public final onDiagnoseProgressChanged(IILcom/tgs/aics/diagnose/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tgs/aics/AiCustomServiceSDK;->lambda$silentNetDiagnose$1$com-tgs-aics-AiCustomServiceSDK(IILcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
