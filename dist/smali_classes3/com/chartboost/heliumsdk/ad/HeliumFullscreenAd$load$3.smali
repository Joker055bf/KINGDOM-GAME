.class final Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HeliumFullscreenAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->load()V
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
    c = "com.chartboost.heliumsdk.ad.HeliumFullscreenAd$load$3"
    f = "HeliumFullscreenAd.kt"
    i = {
        0x0
    }
    l = {
        0x50
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $loadId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$loadId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$loadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;-><init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    sget-object v5, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAdController$Helium_release()Lcom/chartboost/heliumsdk/controllers/AdController;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 81
    iget-object v6, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$context:Landroid/content/Context;

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v7, Lcom/chartboost/heliumsdk/domain/AdLoadParams;

    .line 83
    new-instance v9, Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    iget-object v8, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->getAdType()I

    move-result v8

    iget-object v10, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-virtual {v10}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;-><init>(ILjava/lang/String;)V

    .line 84
    iget-object v8, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-virtual {v8}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->getKeywords()Lcom/chartboost/heliumsdk/domain/Keywords;

    move-result-object v10

    .line 85
    iget-object v11, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$loadId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 88
    new-instance v8, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$loadResult$1;

    iget-object v14, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-direct {v8, v14}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$loadResult$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;)V

    move-object v14, v8

    check-cast v14, Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v8, v7

    .line 82
    invoke-direct/range {v8 .. v16}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;-><init>(Lcom/chartboost/heliumsdk/domain/AdIdentifier;Lcom/chartboost/heliumsdk/domain/Keywords;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v8, Ljava/util/Set;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    .line 80
    iput-object v2, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->label:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/chartboost/heliumsdk/controllers/AdController;->load-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v2

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    move-object v2, v4

    .line 118
    :goto_1
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 119
    iget-object v1, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-static {v1, v4}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->access$setInflightRequest$p(Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Lkotlinx/coroutines/Job;)V

    .line 120
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_4
    if-eqz v2, :cond_6

    .line 122
    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$loadId:Ljava/lang/String;

    iget-object v3, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_5

    check-cast v1, Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 123
    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/domain/CachedAd;->setLoadId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v1}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;->setCachedAd(Lcom/chartboost/heliumsdk/domain/CachedAd;)V

    .line 125
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v5, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$1$1;

    invoke-direct {v5, v3, v2, v1, v4}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$1$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/CachedAd;Lkotlin/coroutines/Continuation;)V

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    goto :goto_2

    .line 130
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v1, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$2$1;

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$2$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    .line 145
    :cond_6
    iget-object v1, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->this$0:Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3;->$loadId:Ljava/lang/String;

    .line 146
    sget-object v3, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v5, "Helium is not initialized."

    invoke-virtual {v3, v5}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v3, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$3$1;

    invoke-direct {v3, v1, v2, v4}, Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd$load$3$3$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumFullscreenAd;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 157
    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
