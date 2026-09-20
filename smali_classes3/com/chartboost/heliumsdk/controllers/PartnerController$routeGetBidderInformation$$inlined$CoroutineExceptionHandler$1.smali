.class public final Lcom/chartboost/heliumsdk/controllers/PartnerController$routeGetBidderInformation$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeGetBidderInformation(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PreBidRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 PartnerController.kt\ncom/chartboost/heliumsdk/controllers/PartnerController\n*L\n1#1,110:1\n352#2,11:111\n*E\n"
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
.field final synthetic $request$inlined:Lcom/chartboost/heliumsdk/domain/PreBidRequest;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/chartboost/heliumsdk/domain/PreBidRequest;)V
    .locals 0

    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeGetBidderInformation$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PreBidRequest;

    .line 49
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 18

    move-object/from16 v0, p2

    .line 111
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    const/4 v2, 0x0

    .line 113
    sget-object v3, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->PREBID:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v4, 0x0

    .line 116
    instance-of v5, v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;->getChartboostMediationError()Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object v5

    if-nez v5, :cond_2

    .line 117
    :cond_1
    sget-object v5, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_PREBID_FAILURE_EXCEPTION:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :cond_2
    move-object/from16 v17, v5

    .line 118
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    .line 119
    iget-object v10, v0, Lcom/chartboost/heliumsdk/controllers/PartnerController$routeGetBidderInformation$$inlined$CoroutineExceptionHandler$1;->$request$inlined:Lcom/chartboost/heliumsdk/domain/PreBidRequest;

    invoke-virtual {v10}, Lcom/chartboost/heliumsdk/domain/PreBidRequest;->getLoadId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3de0

    const/16 v16, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v17

    .line 111
    invoke-static/range {v0 .. v16}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
