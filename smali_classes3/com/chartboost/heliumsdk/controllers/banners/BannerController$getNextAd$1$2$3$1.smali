.class final Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BannerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.chartboost.heliumsdk.controllers.banners.BannerController$getNextAd$1$2$3$1"
    f = "BannerController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

.field final synthetic $loadId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/controllers/banners/BannerController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    iput-object p2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$loadId:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;

    iget-object v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$loadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;-><init>(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;Ljava/lang/String;Lcom/chartboost/heliumsdk/controllers/banners/BannerController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 447
    iget v0, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 448
    iget-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getHeliumBannerAdListener()Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 449
    iget-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$heliumBannerAd:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->$loadId:Ljava/lang/String;

    .line 451
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 452
    new-instance v4, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    .line 453
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_CHARTBOOST_MEDIATION_NOT_INITIALIZED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    .line 452
    invoke-direct {v4, p1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 455
    iget-object p1, p0, Lcom/chartboost/heliumsdk/controllers/banners/BannerController$getNextAd$1$2$3$1;->this$0:Lcom/chartboost/heliumsdk/controllers/banners/BannerController;

    invoke-static {p1}, Lcom/chartboost/heliumsdk/controllers/banners/BannerController;->access$getCurrentlyShowingAd$p(Lcom/chartboost/heliumsdk/controllers/banners/BannerController;)Lcom/chartboost/heliumsdk/domain/CachedAd;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/CachedAd;->getPartnerAd()Lcom/chartboost/heliumsdk/domain/PartnerAd;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 456
    sget-object v5, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;

    .line 458
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getSize()Landroid/util/Size;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->Companion:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;

    sget-object v7, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {v6, v7}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->asSize(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object v6

    .line 456
    :cond_0
    invoke-virtual {v5, p1, v6}, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->getCreativeSizeFromPartnerAdDetails(Lcom/chartboost/heliumsdk/domain/PartnerAd;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_2

    .line 460
    :cond_1
    sget-object p1, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->Companion:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;

    sget-object v5, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {p1, v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->asSize(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;

    move-result-object p1

    :cond_2
    move-object v5, p1

    .line 448
    invoke-interface/range {v0 .. v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;->onAdCached(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;Landroid/util/Size;)V

    .line 462
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 447
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
