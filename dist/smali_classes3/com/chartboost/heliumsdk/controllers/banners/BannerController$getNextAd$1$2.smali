.class final Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BannerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->getNextAd(Z)V
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
    c = "com.chartboost.heliumsdk.controllers.banners.BannerController$getNextAd$1$2"
    f = "BannerController.kt"
    i = {
        0x0
    }
    l = {
        0x182
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
.field final synthetic $forceRefresh:Z

.field final synthetic $heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

.field final synthetic $loadId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/controllers/banners/BannerController;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$loadId:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    iput-boolean p4, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$forceRefresh:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$loadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    iget-boolean v4, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$forceRefresh:Z

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 381
    iget v2, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->L$0:Ljava/lang/Object;

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

    iget-object v2, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Set;

    .line 386
    sget-object v6, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getChartboostMediationInternal$Helium_release()Lcom/chartboost/heliumsdk/ChartboostMediationInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/ChartboostMediationInternal;->getAdController$Helium_release()Lcom/chartboost/heliumsdk/controllers/AdController;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 387
    iget-object v7, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "heliumBannerAd.context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    new-instance v8, Lcom/chartboost/heliumsdk/domain/AdLoadParams;

    .line 389
    new-instance v10, Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    iget-object v9, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {v9}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getAdType()I

    move-result v9

    iget-object v11, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {v11}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getPlacementName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;-><init>(ILjava/lang/String;)V

    .line 390
    iget-object v9, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {v9}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getKeywords()Lcom/chartboost/heliumsdk/domain/Keywords;

    move-result-object v11

    .line 391
    iget-object v12, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$loadId:Ljava/lang/String;

    const/4 v13, 0x0

    .line 392
    iget-object v9, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {v9}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v14

    .line 394
    new-instance v9, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$loadResult$1;

    iget-object v15, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    invoke-direct {v9, v15}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$loadResult$1;-><init>(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)V

    move-object v15, v9

    check-cast v15, Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v9, v8

    .line 388
    invoke-direct/range {v9 .. v17}, Lcom/chartboost/heliumsdk/domain/AdLoadParams;-><init>(Lcom/chartboost/heliumsdk/domain/AdIdentifier;Lcom/chartboost/heliumsdk/domain/Keywords;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 424
    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    .line 386
    iput-object v2, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->label:I

    invoke-virtual {v6, v7, v8, v5, v9}, Lcom/chartboost/heliumsdk/controllers/AdController;->load-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/AdLoadParams;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 426
    :goto_1
    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    invoke-static {v3, v4}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$setFetchAdJob$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlinx/coroutines/Job;)V

    .line 427
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 428
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_4
    if-eqz v2, :cond_9

    .line 430
    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$forceRefresh:Z

    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    iget-object v5, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$loadId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_8

    check-cast v1, Lcom/chartboost/heliumsdk/domain/CachedAd;

    .line 431
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getInlineView()Landroid/view/View;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    .line 434
    invoke-static {v3}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$getRefreshTimeMillis(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v3, v6, v7}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$setShownDurationMillis$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;J)V

    .line 436
    :cond_6
    invoke-static {v3, v1, v5}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$handleLoadSuccess(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lcom/chartboost/heliumsdk/domain/CachedAd;Ljava/lang/String;)V

    goto :goto_2

    .line 440
    :cond_7
    new-instance v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_NO_INLINE_VIEW:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {v1, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 438
    invoke-static {v3, v5, v1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$handleLoadFailure(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 444
    :cond_8
    invoke-static {v3, v5, v6}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$handleLoadFailure(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 445
    :cond_9
    iget-object v1, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    iget-object v2, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->$loadId:Ljava/lang/String;

    iget-object v3, v0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    .line 446
    sget-object v5, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v6, "Helium is not initialized."

    invoke-virtual {v5, v6}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v5, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlin/coroutines/Continuation;)V

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 464
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
