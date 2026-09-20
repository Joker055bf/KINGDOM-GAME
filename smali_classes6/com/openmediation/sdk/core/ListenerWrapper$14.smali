.class Lcom/openmediation/sdk/core/ListenerWrapper$14;
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

.field final synthetic val$scene:Lcom/openmediation/sdk/utils/model/Scene;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$14;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$14;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$14;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$000(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/video/RewardedVideoListener;

    iget-object v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$14;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/video/RewardedVideoListener;->onRewardedVideoAdEnded(Lcom/openmediation/sdk/utils/model/Scene;)V

    goto :goto_0

    :cond_0
    return-void
.end method
