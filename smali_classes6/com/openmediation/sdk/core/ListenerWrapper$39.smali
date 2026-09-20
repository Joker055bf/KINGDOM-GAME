.class Lcom/openmediation/sdk/core/ListenerWrapper$39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/ListenerWrapper;->onSplashAdTick(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

.field final synthetic val$millisUntilFinished:J

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    iput-object p2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->val$placementId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->val$millisUntilFinished:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->val$placementId:Ljava/lang/String;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x25e

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->this$0:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-static {v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->access$600(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/splash/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->val$placementId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/openmediation/sdk/core/ListenerWrapper$39;->val$millisUntilFinished:J

    invoke-interface {v0, v1, v2, v3}, Lcom/openmediation/sdk/splash/SplashAdListener;->onSplashAdTick(Ljava/lang/String;J)V

    return-void
.end method
