.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/AiCustomServiceSDK;

.field public final synthetic f$1:Lcom/tgs/aics/listener/INetDiagnoseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/AiCustomServiceSDK;Lcom/tgs/aics/listener/INetDiagnoseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    iput-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/listener/INetDiagnoseListener;

    return-void
.end method


# virtual methods
.method public final onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    iget-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/listener/INetDiagnoseListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tgs/aics/AiCustomServiceSDK;->lambda$silentNetDiagnose$3$com-tgs-aics-AiCustomServiceSDK(Lcom/tgs/aics/listener/INetDiagnoseListener;ZLcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
