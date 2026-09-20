.class public final Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;
.super Ljava/lang/Object;
.source "MetaAudienceNetworkAdapter.kt"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1",
        "Lcom/facebook/ads/AdListener;",
        "onAdClicked",
        "",
        "ad",
        "Lcom/facebook/ads/Ad;",
        "onAdLoaded",
        "onError",
        "adError",
        "Lcom/facebook/ads/AdError;",
        "onLoggingImpression",
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

.field final synthetic this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;",
            "Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    iput-object p3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iput-object p4, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_CLICK:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 377
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 377
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 376
    invoke-interface {v0, v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdClicked(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 364
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 365
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 365
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 364
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 363
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

    .line 355
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adError.errorMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 357
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    iget-object v1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->this$0:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

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

    .line 356
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

    .line 386
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->DID_TRACK_IMPRESSION:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$partnerAdListener:Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    .line 388
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "emptyMap()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;->$request:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 388
    invoke-direct {v1, p1, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerAd;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;)V

    .line 387
    invoke-interface {v0, v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;->onPartnerAdImpression(Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    return-void
.end method
