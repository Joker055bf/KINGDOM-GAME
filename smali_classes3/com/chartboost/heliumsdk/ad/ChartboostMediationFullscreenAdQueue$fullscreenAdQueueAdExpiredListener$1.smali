.class public final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;
.super Ljava/lang/Object;
.source "ChartboostMediationFullscreenAdQueue.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueAdExpiredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueAdExpiredListener;",
        "onAdExpired",
        "",
        "ad",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdExpired(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;)V
    .locals 12

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 106
    new-instance v0, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 107
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->getCachedAd()Lcom/chartboost/heliumsdk/domain/CachedAd;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v10

    .line 108
    :goto_0
    sget-object v3, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->EXPIRATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 106
    invoke-direct {v0, v2, v3}, Lcom/chartboost/heliumsdk/domain/Metrics;-><init>(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)V

    .line 110
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->getCachedAd()Lcom/chartboost/heliumsdk/domain/CachedAd;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v10

    :goto_1
    invoke-virtual {v0, v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->setAuctionId(Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 112
    invoke-virtual {v0, v11}, Lcom/chartboost/heliumsdk/domain/Metrics;->setSuccess(Z)V

    .line 105
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 104
    invoke-static/range {v1 .. v9}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The fullscreen ad queue for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->getRequest()Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdLoadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationAdLoadRequest;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has an expired ad. Will be removed from the queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->invalidate()V

    .line 127
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {v0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$getFullscreenAdsQueued$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1$onAdExpired$2;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-direct {p1, v3, v10}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1$onAdExpired$2;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 144
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$fullscreenAdQueueAdExpiredListener$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    const/4 v0, 0x0

    invoke-static {p1, v0, v11, v10}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob$default(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;ZILjava/lang/Object;)V

    return-void
.end method
