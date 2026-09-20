.class Lcom/openmediation/sdk/unity/OmBridge$RvListener;
.super Ljava/lang/Object;
.source "OmBridge.java"

# interfaces
.implements Lcom/openmediation/sdk/video/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/OmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RvListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/OmBridge$RvListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoClicked"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoClosed"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoEnded"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoRewarded"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRewardedVideoShowFailed"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoShowed"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onRewardedVideoStarted"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 1

    const-string v0, "onRewardedVideoAvailabilityChanged"

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
