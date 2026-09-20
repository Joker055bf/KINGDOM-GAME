.class final Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VisibilityTracker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->scheduleVisibilityCheck()V
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
    c = "com.chartboost.heliumsdk.controllers.banners.VisibilityTracker$scheduleVisibilityCheck$2"
    f = "VisibilityTracker.kt"
    i = {
        0x0
    }
    l = {
        0xa5
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-direct {v0, v1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 149
    :cond_2
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 150
    iget-object v3, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-static {v3}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$isVisibilityTracked$p(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    iget-object v3, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-static {v3}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$isViewVisible(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 157
    iget-object v3, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-static {v3}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$getStartTimeMs$p(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    :cond_4
    invoke-static {v3, v4}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$setStartTimeMs$p(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;Ljava/lang/Long;)V

    .line 159
    iget-object v3, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-static {v3}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$hasRequiredTimeElapsed(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 160
    iget-object v0, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->getVisibilityTrackerListener()Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$VisibilityTrackerListener;->onVisibilityThresholdMet()V

    .line 161
    :cond_5
    iget-object p1, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    invoke-static {p1, v2}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;->access$setVisibilityTracked$p(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;Z)V

    goto :goto_1

    .line 165
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2$1;

    iget-object v5, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcom/chartboost/heliumsdk/controllers/banners/VisibilityTracker$scheduleVisibilityCheck$2;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    .line 169
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
