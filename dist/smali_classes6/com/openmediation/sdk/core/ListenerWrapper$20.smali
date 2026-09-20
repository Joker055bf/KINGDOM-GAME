.class Lcom/openmediation/sdk/core/ListenerWrapper$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

.field final synthetic val$error:Lcom/openmediation/sdk/utils/error/Error;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$400(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/mediation/MediationInterstitialListener;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$20;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    const/16 v2, 0x259

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
