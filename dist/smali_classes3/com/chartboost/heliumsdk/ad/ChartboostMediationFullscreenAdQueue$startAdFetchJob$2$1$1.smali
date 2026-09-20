.class final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;
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
    c = "com.chartboost.heliumsdk.ad.ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1"
    f = "ChartboostMediationFullscreenAdQueue.kt"
    i = {
        0x0
    }
    l = {
        0x180
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $ad:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->$ad:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

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

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->$ad:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    invoke-direct {v0, v1, v2, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;-><init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 383
    iget v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-static {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->access$getQueuedAdTtlMs$p(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)J

    move-result-wide v3

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 385
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->$ad:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;->getListener()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->$ad:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;

    invoke-interface {p1, v0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;->onAdExpired(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$startAdFetchJob$2$1$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 386
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The fullscreen ad queue for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has ad listener is null. Cannot expire ad."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 388
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
