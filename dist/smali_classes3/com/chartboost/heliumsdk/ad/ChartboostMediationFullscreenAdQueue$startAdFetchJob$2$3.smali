.class final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChartboostMediationFullscreenAdQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.chartboost.heliumsdk.ad.ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3"
    f = "ChartboostMediationFullscreenAdQueue.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $loadResult:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->$loadResult:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->$loadResult:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;

    invoke-direct {v0, v1, v2, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 394
    iget v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 395
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getAdQueueListener()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 397
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->$loadResult:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;

    check-cast v1, Lcom/chartboost/heliumsdk/ad/AdLoadResult;

    .line 398
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getNumberOfAdsReady()I

    move-result v2

    .line 395
    invoke-interface {p1, v0, v1, v2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueListener;->onFullScreenAdQueueUpdated(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/AdLoadResult;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 399
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 400
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The fullscreen ad queue for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has its FullscreenAdQueueAdExpiredListener null."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 402
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 394
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
