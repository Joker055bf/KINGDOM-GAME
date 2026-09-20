.class Lcom/openmediation/sdk/core/ListenerWrapper$29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onPromotionAdAvailabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-boolean p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$500(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/promotion/PromotionAdListener;

    iget-boolean v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->val$available:Z

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/promotion/PromotionAdListener;->onPromotionAdAvailabilityChanged(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->val$available:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x258

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$29;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x259

    :goto_1
    invoke-static {v2, v0, v1, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
