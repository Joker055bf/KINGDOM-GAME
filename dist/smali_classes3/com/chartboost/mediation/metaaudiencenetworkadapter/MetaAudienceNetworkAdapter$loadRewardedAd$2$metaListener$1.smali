.class public final Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;
.super Ljava/lang/Object;
.source "MetaAudienceNetworkAdapter.kt"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadRewardedAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1",
        "Lcom/facebook/ads/RewardedVideoAdListener;",
        "onAdClicked",
        "",
        "ad",
        "Lcom/facebook/ads/Ad;",
        "onAdLoaded",
        "onError",
        "adError",
        "Lcom/facebook/ads/AdError;",
        "onLoggingImpression",
        "onRewardedVideoClosed",
        "onRewardedVideoCompleted",
        "MetaAudienceNetworkAdapter_remoteRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

.field final synthetic $request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

.field final synthetic $rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

.field final synthetic this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/facebook/ads/RewardedVideoAd;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            "Lcom/facebook/ads/RewardedVideoAd;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;",
            "Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iput-object p2, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    iput-object p3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iput-object p4, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p5, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_CLICK:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 575
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 577
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 575
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 574
    invoke-interface {v0, v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdClicked(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 562
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 563
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 563
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 562
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 561
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adError.errorMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 555
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    iget-object v1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-static {v1, p2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$getChartboostMediationError(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;I)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p2

    .line 554
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_TRACK_IMPRESSION:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 533
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 533
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 532
    invoke-interface {v0, v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdImpression(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 6

    .line 542
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_DISMISS:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 544
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 545
    iget-object v2, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 546
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "emptyMap()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object v5, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 544
    invoke-direct {v1, v2, v4, v5}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 543
    invoke-interface {v0, v1, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdDismissed(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 5

    .line 520
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_REWARD:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 522
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 523
    iget-object v2, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 524
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "emptyMap()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 522
    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 521
    invoke-interface {v0, v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdRewarded(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    return-void
.end method
