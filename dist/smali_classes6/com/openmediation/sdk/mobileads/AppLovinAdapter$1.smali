.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    .line 123
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$000(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rewarded Video"

    .line 122
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    :cond_0
    return-void
.end method
