.class Lcom/openmediation/sdk/core/ListenerWrapper$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onNativeAdLoaded(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

.field final synthetic val$info:Lcom/openmediation/sdk/nativead/AdInfo;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->val$info:Lcom/openmediation/sdk/nativead/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$800(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/nativead/NativeAdListener;

    iget-object v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->val$info:Lcom/openmediation/sdk/nativead/AdInfo;

    invoke-interface {v1, v2, v3}, Lcom/openmediation/sdk/nativead/NativeAdListener;->onNativeAdLoaded(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$44;->val$placementId:Ljava/lang/String;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
