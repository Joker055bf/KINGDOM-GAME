.class public final Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeLoad-eH_QyT8$Helium_release(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Ljava/util/Set;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 PartnerController.kt\ncom/chartboost/heliumsdk/controllers/PartnerController\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n453#2,11:111\n464#2,7:123\n1#3:122\n*E\n"
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
.field final synthetic $auctionId$inlined:Ljava/lang/String;

.field final synthetic $isMediation$inlined:Z

.field final synthetic $lineItemId$inlined:Ljava/lang/String;

.field final synthetic $placementType$inlined:Ljava/lang/String;

.field final synthetic $request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

.field final synthetic $result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iput-boolean p3, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$isMediation$inlined:Z

    iput-object p4, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$auctionId$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$placementType$inlined:Ljava/lang/String;

    iput-object p6, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$lineItemId$inlined:Ljava/lang/String;

    iput-object p7, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 111
    sget-object v2, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 112
    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v3

    .line 113
    sget-object v5, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 116
    instance-of v4, v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 117
    :cond_1
    sget-object v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :cond_2
    move-object v8, v4

    .line 118
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 119
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v18

    .line 121
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$placementType$inlined:Ljava/lang/String;

    const-string v7, "adaptive_banner"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v19, v1

    goto :goto_1

    :cond_3
    move-object/from16 v19, v6

    .line 123
    :goto_1
    sget-object v1, Lcom/chartboost/heliumsdk/domain/Metrics$NetworkType;->Companion:Lcom/chartboost/heliumsdk/domain/Metrics$NetworkType$Companion;

    iget-boolean v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$isMediation$inlined:Z

    invoke-virtual {v1, v4}, Lcom/chartboost/heliumsdk/domain/Metrics$NetworkType$Companion;->getType(Z)Ljava/lang/String;

    move-result-object v13

    .line 125
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v15

    .line 114
    iget-object v4, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$auctionId$inlined:Ljava/lang/String;

    .line 120
    iget-object v7, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$placementType$inlined:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 124
    iget-object v14, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$lineItemId$inlined:Ljava/lang/String;

    const/16 v16, 0x580

    const/16 v17, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v8

    move-object v6, v11

    move-object/from16 v8, v19

    move-object/from16 v11, v18

    .line 111
    invoke-static/range {v1 .. v17}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeLoad-eH_QyT8$$inlined$CoroutineExceptionHandler$1;->$result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 128
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {v2, v3}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
