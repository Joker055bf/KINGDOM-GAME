.class Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;
.super Ljava/lang/Object;
.source "ChartboostSingleTon.java"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/RewardedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerRewardedCallback"
.end annotation


# instance fields
.field mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

.field mAdUnitId:Ljava/lang/String;

.field mRewarded:Lcom/chartboost/sdk/ads/Rewarded;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;


# direct methods
.method public constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V
    .locals 2

    .line 184
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onAdClicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ClickError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClicked()V

    :cond_1
    return-void
.end method

.method public onAdDismiss(Lcom/chartboost/sdk/events/DismissEvent;)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onAdDismiss: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdEnded()V

    .line 242
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdClosed()V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onAdLoaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CacheError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 197
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    const-string v0, "ChartboostAdapter"

    .line 199
    invoke-virtual {p2}, Lcom/chartboost/sdk/events/CacheError;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Rewarded Video"

    .line 198
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mRewarded:Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mRewarded:Lcom/chartboost/sdk/ads/Rewarded;

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_3

    .line 207
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_3
    return-void
.end method

.method public onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V
    .locals 2

    .line 213
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onAdRequestedToShow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V
    .locals 2

    .line 218
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onAdShown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ShowError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 220
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    const-string v0, "ChartboostAdapter"

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Rewarded Video"

    .line 221
    invoke-static {v1, v0, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_2

    .line 227
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowSuccess()V

    .line 228
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdStarted()V

    :cond_2
    return-void
.end method

.method public onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardedAd onImpressionRecorded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {p1, v1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardEarned(Lcom/chartboost/sdk/events/RewardEvent;)V
    .locals 3

    .line 249
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedAd onRewardEarned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rewardEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/RewardEvent;->getReward()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChartboostSingleTon "

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method

.method public setRewardedAd(Ljava/lang/String;Lcom/chartboost/sdk/ads/Rewarded;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdUnitId:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mRewarded:Lcom/chartboost/sdk/ads/Rewarded;

    .line 179
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InnerRewardedCallback;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    return-void
.end method
