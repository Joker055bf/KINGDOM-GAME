.class Lcom/openmediation/sdk/core/ListenerWrapper$42;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

.field final synthetic val$error:Lcom/openmediation/sdk/utils/error/Error;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$700(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/banner/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-interface {v0, v1, v2}, Lcom/openmediation/sdk/banner/BannerAdListener;->onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$42;->val$placementId:Ljava/lang/String;

    const/16 v1, 0x259

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
