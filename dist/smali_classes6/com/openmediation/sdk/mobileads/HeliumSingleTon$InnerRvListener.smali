.class Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;
.super Ljava/lang/Object;
.source "HeliumSingleTon.java"

# interfaces
.implements Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerRvListener"
.end annotation


# instance fields
.field private final mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

.field private final mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

.field private mHeliumRewardedAd:Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    .line 192
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Lcom/openmediation/sdk/mediation/BidCallback;)V

    return-void
.end method


# virtual methods
.method public onAdCached(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;",
            ")V"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Helium RewardVideo onAdCached, placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    if-nez p4, :cond_1

    .line 204
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$400(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mHeliumRewardedAd:Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0, p3, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    .line 208
    :cond_0
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    if-eqz p2, :cond_1

    .line 209
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0, p3, p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$500(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BidCallback;)V

    :cond_1
    if-eqz p4, :cond_4

    .line 214
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Helium RewardedAd onAdCached failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_2

    .line 216
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V

    .line 217
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    const-string p2, "HeliumAdapter"

    .line 218
    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Rewarded Video"

    .line 217
    invoke-static {v0, p2, p3}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    if-eqz p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mBidCallback:Lcom/openmediation/sdk/mediation/BidCallback;

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$600(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BidCallback;)V

    :cond_3
    return-void

    .line 225
    :cond_4
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Helium HeliumRewardedAd onAdCached load success: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mAdCallback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_5

    .line 227
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    :cond_5
    return-void
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 3

    .line 233
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium RewardVideo onAdClicked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;->didRewardedClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 3

    .line 241
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium RewardVideo onAdClosed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;->didRewardedClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdImpressionRecorded(Ljava/lang/String;)V
    .locals 3

    .line 249
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium RewardVideo onAdImpressionRecorded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 3

    .line 254
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium RewardVideo onAdRewarded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;->didRewardedRewarded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdShown(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 266
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helium RewardedAd onAdShown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;->didRewardedShowFailed(Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V

    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Helium RewardVideo onAdShown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 271
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->this$0:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    invoke-static {p2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;->access$700(Lcom/openmediation/sdk/mobileads/HeliumSingleTon;)Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/openmediation/sdk/mobileads/HeliumVideoCallback;->didRewardedShowed(Ljava/lang/String;)V

    return-void
.end method

.method public setHeliumAd(Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InnerRvListener;->mHeliumRewardedAd:Lcom/chartboost/heliumsdk/ad/HeliumRewardedAd;

    return-void
.end method
