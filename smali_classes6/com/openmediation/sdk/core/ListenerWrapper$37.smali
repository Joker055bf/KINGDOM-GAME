.class Lcom/openmediation/sdk/core/ListenerWrapper$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
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

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->val$placementId:Ljava/lang/String;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x25a

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$600(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/splash/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$37;->val$error:Lcom/openmediation/sdk/utils/error/Error;

    invoke-interface {v0, v1, v2}, Lcom/openmediation/sdk/splash/SplashAdListener;->onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method
