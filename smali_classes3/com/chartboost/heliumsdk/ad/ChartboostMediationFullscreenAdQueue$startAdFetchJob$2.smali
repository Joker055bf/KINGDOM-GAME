.class final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChartboostMediationFullscreenAdQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->startAdFetchJob(Z)V
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
    c = "com.chartboost.heliumsdk.ad.ChartboostMediationFullscreenAdQueue$startAdFetchJob$2"
    f = "ChartboostMediationFullscreenAdQueue.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x167,
        0x16f
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $isDelayed:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;


# direct methods
.method constructor <init>(ZLcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->$isDelayed:Z

    iput-object p2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

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

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;

    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->$isDelayed:Z

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-direct {v0, v1, v2, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;-><init>(ZLcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 357
    iget v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->label:I

    const-string v2, "The fullscreen ad queue for: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 359
    iget-boolean p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->$isDelayed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$getDelayFetchRateMs(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)J

    move-result-wide v6

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 361
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$getFullscreenAdsQueued$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v6, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getQueueCapacity()I

    move-result v6

    if-lt p1, v6, :cond_4

    .line 362
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already reached capacity. Waiting until the next queue job."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {p1, v5}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$setFetchAdJob$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlinx/coroutines/Job;)V

    .line 364
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 367
    :cond_4
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->label:I

    invoke-static {p1, v6, v7}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$loadFullscreenAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v1

    .line 357
    :goto_1
    check-cast p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;

    .line 369
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {v1, v5}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$setFetchAdJob$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lkotlinx/coroutines/Job;)V

    .line 370
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 372
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;->getAd()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->invalidate()V

    .line 373
    :cond_6
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already has an active queue fetch job. Discarding previously loaded ad."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 376
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 379
    :cond_7
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;->getAd()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 381
    invoke-static {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$getFullscreenAdsQueued$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;

    invoke-direct {v2, v1, v0, v5}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;Lkotlin/coroutines/Continuation;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-nez v0, :cond_9

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 390
    invoke-static {v0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$handleAdFetchLoadResultNoAd(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;)V

    .line 389
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 394
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-direct {v0, v1, p1, v5}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$3;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 405
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdLoadResult;->getAd()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 408
    :goto_2
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {p1, v4}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$startAdFetchJob(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Z)V

    .line 409
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
