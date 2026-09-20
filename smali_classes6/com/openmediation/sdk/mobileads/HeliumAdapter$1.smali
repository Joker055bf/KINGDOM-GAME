.class Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;
.super Ljava/lang/Object;
.source "HeliumAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/HeliumInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/HeliumAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    .line 110
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->access$100(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rewarded Video"

    .line 109
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->access$000(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)V

    return-void
.end method
