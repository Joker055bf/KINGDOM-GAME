.class Lcom/openmediation/sdk/core/ListenerWrapper$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$19;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$19;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$400(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;->onInterstitialAdLoadSuccess()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$19;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
