.class Lcom/openmediation/sdk/core/ListenerWrapper$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onRewardedVideoAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
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

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

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

    iget-object v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/video/RewardedVideoListener;->onRewardedVideoAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$8;->val$scene:Lcom/openmediation/sdk/utils/model/Scene;

    const/16 v2, 0x25b

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
