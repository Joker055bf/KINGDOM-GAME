.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FbRvListener"
.end annotation


# instance fields
.field private mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 1

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    .line 573
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 601
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 602
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 594
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 595
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 586
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Rewarded Video"

    const-string v2, "FacebookAdapter"

    .line 587
    invoke-static {v1, v2, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 608
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 609
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 610
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    .line 611
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoActivityDestroyed()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->mDidRvCloseCallbacked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 619
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V

    .line 580
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$FbRvListener;->rvCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    :cond_0
    return-void
.end method
