.class Lcom/openmediation/sdk/core/ListenerWrapper$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdEnded(Lcom/openmediation/sdk/utils/model/Scene;)V
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

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$15;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$15;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$200(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;->onRewardedVideoAdEnded()V

    return-void
.end method
