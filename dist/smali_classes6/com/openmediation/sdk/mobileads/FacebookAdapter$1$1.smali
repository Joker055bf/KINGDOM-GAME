.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

.field final synthetic val$result:Lcom/facebook/ads/AudienceNetworkAds$InitResult;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->val$result:Lcom/facebook/ads/AudienceNetworkAds$InitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 504
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->val$result:Lcom/facebook/ads/AudienceNetworkAds$InitResult;

    invoke-interface {v0}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$002(Lcom/openmediation/sdk/mobileads/FacebookAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 506
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$100(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    .line 507
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$200(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    .line 510
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    goto :goto_1

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$300(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/BannerAdCallback;

    .line 514
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V

    goto :goto_2

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$400(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/NativeAdCallback;

    .line 517
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitSuccess()V

    goto :goto_3

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v0, v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$002(Lcom/openmediation/sdk/mobileads/FacebookAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Facebook init failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->val$result:Lcom/facebook/ads/AudienceNetworkAds$InitResult;

    invoke-interface {v1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v1, v1, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$100(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    .line 524
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v3, v3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    .line 525
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$500(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Interstitial"

    .line 524
    invoke-static {v4, v3, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_4

    .line 527
    :cond_4
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v1, v1, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$200(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    .line 528
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v3, v3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    .line 529
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$600(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Rewarded Video"

    .line 528
    invoke-static {v4, v3, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_5

    .line 532
    :cond_5
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v1, v1, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$300(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/mediation/BannerAdCallback;

    .line 533
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v3, v3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    .line 534
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$700(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Banner"

    .line 533
    invoke-static {v4, v3, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_6

    .line 536
    :cond_6
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v1, v1, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$400(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/mediation/NativeAdCallback;

    .line 537
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;->this$1:Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;

    iget-object v3, v3, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    .line 538
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/FacebookAdapter;->access$800(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Native"

    .line 537
    invoke-static {v4, v3, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    goto :goto_7

    :cond_7
    return-void
.end method
