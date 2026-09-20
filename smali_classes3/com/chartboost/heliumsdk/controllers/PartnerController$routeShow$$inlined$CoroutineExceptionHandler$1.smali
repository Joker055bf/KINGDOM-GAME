.class public final Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeShow(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAd;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 PartnerController.kt\ncom/chartboost/heliumsdk/controllers/PartnerController\n*L\n1#1,110:1\n621#2,26:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core"
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
.field final synthetic $auctionIdentifier$inlined:Ljava/lang/String;

.field final synthetic $internalAdShowResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/chartboost/heliumsdk/domain/PartnerAd;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$auctionIdentifier$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$internalAdShowResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 18

    move-object/from16 v0, p0

    .line 111
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 112
    iget-object v2, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    .line 113
    sget-object v3, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 114
    iget-object v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$auctionIdentifier$inlined:Ljava/lang/String;

    .line 115
    sget-object v5, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 117
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 118
    sget-object v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 119
    iget-object v15, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;

    invoke-virtual {v15}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v15

    invoke-virtual {v15}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1fe0

    const/16 v17, 0x0

    .line 111
    invoke-static/range {v1 .. v17}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$internalAdShowResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    iget-object v2, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;

    .line 127
    new-instance v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    iget-object v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$partnerAd$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAd;

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-direct {v3, v4, v5}, Lcom/chartboost/heliumsdk/domain/Metrics;-><init>(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)V

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v3, v4}, Lcom/chartboost/heliumsdk/domain/Metrics;->setSuccess(Z)V

    .line 129
    iget-object v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeShow$$inlined$CoroutineExceptionHandler$1;->$auctionIdentifier$inlined:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/chartboost/heliumsdk/domain/Metrics;->setAuctionId(Ljava/lang/String;)V

    .line 130
    sget-object v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v3, v4}, Lcom/chartboost/heliumsdk/domain/Metrics;->setChartboostMediationError(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_1
    invoke-virtual {v3, v4}, Lcom/chartboost/heliumsdk/domain/Metrics;->setChartboostMediationErrorMessage(Ljava/lang/String;)V

    .line 133
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 123
    new-instance v4, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;

    invoke-direct {v4, v2, v3}, Lcom/chartboost/heliumsdk/controllers/PartnerController$PartnerShowResult;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAd;Ljava/util/Set;)V

    .line 122
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
