.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IBaseBeanListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/diagnose/Result;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/diagnose/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/diagnose/Result;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/diagnose/Result;

    invoke-static {v0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->lambda$silentNetDiagnose$2(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
