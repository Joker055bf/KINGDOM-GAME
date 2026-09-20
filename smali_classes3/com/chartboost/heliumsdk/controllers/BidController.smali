.class public final Lcom/chartboost/heliumsdk/controllers/BidController;
.super Ljava/lang/Object;
.source "BidController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002JR\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/controllers/BidController;",
        "",
        "partnerController",
        "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
        "(Lcom/chartboost/heliumsdk/controllers/PartnerController;)V",
        "constructAdLoadRequest",
        "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
        "bid",
        "Lcom/chartboost/heliumsdk/domain/Bid;",
        "bannerSize",
        "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;",
        "adInteractionListener",
        "Lcom/chartboost/heliumsdk/domain/AdInteractionListener;",
        "getAdMarkup",
        "",
        "loadBids",
        "Lkotlin/Result;",
        "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
        "context",
        "Landroid/content/Context;",
        "bids",
        "Lcom/chartboost/heliumsdk/domain/Bids;",
        "loadMetricsSet",
        "",
        "Lcom/chartboost/heliumsdk/domain/Metrics;",
        "loadBids-hUnOzRk",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldForceReference",
        "",
        "placementName",
        "Helium_release"
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
.field private final partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;


# direct methods
.method public constructor <init>(Lcom/chartboost/heliumsdk/controllers/PartnerController;)V
    .locals 1

    const-string v0, "partnerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/chartboost/heliumsdk/controllers/BidController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    return-void
.end method

.method private final constructAdLoadRequest(Lcom/chartboost/heliumsdk/domain/Bid;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;)Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;
    .locals 12

    .line 107
    new-instance v11, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    .line 109
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/heliumsdk/controllers/BidController;->shouldForceReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reference"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 110
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 113
    new-instance v4, Landroid/util/Size;

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    .line 115
    :cond_2
    sget-object p2, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->STANDARD:Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    :goto_2
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result p2

    .line 113
    invoke-direct {v4, v0, p2}, Landroid/util/Size;-><init>(II)V

    .line 117
    sget-object p2, Lcom/chartboost/heliumsdk/controllers/AdController;->Companion:Lcom/chartboost/heliumsdk/controllers/AdController$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getAdType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/chartboost/heliumsdk/controllers/AdController$Companion;->adTypeToAdFormat$Helium_release(I)Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object v5

    .line 118
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/controllers/BidController;->getAdMarkup(Lcom/chartboost/heliumsdk/domain/Bid;)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getLoadRequestId()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerSettings()Ljava/util/Map;

    move-result-object v8

    .line 122
    sget-object p2, Lcom/chartboost/heliumsdk/controllers/AdController;->Companion:Lcom/chartboost/heliumsdk/controllers/AdController$Companion;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getAdType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/chartboost/heliumsdk/controllers/AdController$Companion;->adTypeToAdFormat$Helium_release(I)Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p1

    sget-object p2, Lcom/chartboost/heliumsdk/domain/AdFormat;->ADAPTIVE_BANNER:Lcom/chartboost/heliumsdk/domain/AdFormat;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    move v10, p1

    move-object v0, v11

    move-object v9, p3

    .line 107
    invoke-direct/range {v0 .. v10}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/chartboost/heliumsdk/domain/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Z)V

    return-object v11
.end method

.method private final getAdMarkup(Lcom/chartboost/heliumsdk/domain/Bid;)Ljava/lang/String;
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->isMediation()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdm()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final shouldForceReference(Ljava/lang/String;)Z
    .locals 5

    .line 149
    sget-object v0, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getTestMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    const/4 v3, 0x0

    const-string v4, "REF"

    invoke-static {p1, v4, v1, v0, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final loadBids-hUnOzRk(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/Bids;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/Bids;",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;",
            "Lcom/chartboost/heliumsdk/domain/AdInteractionListener;",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;

    iget v2, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;-><init>(Lcom/chartboost/heliumsdk/controllers/BidController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 32
    iget v4, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/chartboost/heliumsdk/domain/Bid;

    iget-object v6, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcom/chartboost/heliumsdk/domain/AdInteractionListener;

    iget-object v8, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    iget-object v9, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/chartboost/heliumsdk/domain/Bids;

    iget-object v10, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    iget-object v11, v1, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/chartboost/heliumsdk/controllers/BidController;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v1

    move-object v13, v3

    move-object v12, v4

    move-object v15, v6

    move-object v4, v7

    move-object v3, v8

    move-object v1, v9

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/heliumsdk/domain/Bids;->getActiveBid()Lcom/chartboost/heliumsdk/domain/Bid;

    move-result-object v0

    move-object/from16 v4, p4

    move-object/from16 v15, p5

    move-object v12, v0

    move-object v14, v1

    move-object v11, v2

    move-object v13, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    :goto_1
    if-eqz v12, :cond_f

    .line 41
    sget-object v6, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Loading bid for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with placement name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 43
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getPartnerPlacementName()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " on Chartboost placement "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 43
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 46
    iget-object v6, v11, Lcom/chartboost/heliumsdk/controllers/BidController;->partnerController:Lcom/chartboost/heliumsdk/controllers/PartnerController;

    .line 48
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getAuctionId()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getLineItemId()Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->isMediation()Z

    move-result v10

    .line 51
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getSize()Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object v7

    invoke-direct {v11, v12, v7, v4}, Lcom/chartboost/heliumsdk/controllers/BidController;->constructAdLoadRequest(Lcom/chartboost/heliumsdk/domain/Bid;Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;Lcom/chartboost/heliumsdk/domain/AdInteractionListener;)Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v16

    .line 53
    invoke-virtual {v12}, Lcom/chartboost/heliumsdk/domain/Bid;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/chartboost/heliumsdk/domain/AdIdentifier;->getPlacementType()Ljava/lang/String;

    move-result-object v17

    .line 46
    iput-object v11, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$0:Ljava/lang/Object;

    iput-object v0, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$1:Ljava/lang/Object;

    iput-object v1, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$2:Ljava/lang/Object;

    iput-object v3, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$3:Ljava/lang/Object;

    iput-object v4, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$4:Ljava/lang/Object;

    iput-object v15, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$5:Ljava/lang/Object;

    iput-object v12, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->L$6:Ljava/lang/Object;

    iput v5, v14, Lcom/chartboost/heliumsdk/controllers/BidController$loadBids$1;->label:I

    move-object v7, v0

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object v12, v15

    move-object v5, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    invoke-virtual/range {v6 .. v14}, Lcom/chartboost/heliumsdk/controllers/PartnerController;->routeLoad-eH_QyT8$Helium_release(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Ljava/util/Set;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v0

    move-object v13, v5

    move-object v0, v6

    move-object/from16 v12, v16

    move-object/from16 v14, v17

    move-object/from16 v11, v18

    .line 56
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 57
    sget-object v5, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loading bid FAILED for Chartboost placement "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v5, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->incrementActiveBid()I

    .line 62
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getActiveBid()Lcom/chartboost/heliumsdk/domain/Bid;

    move-result-object v12

    :cond_4
    :goto_3
    move-object v0, v10

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 63
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->isAdaptive()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    move v5, v7

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    :cond_7
    :goto_4
    if-eqz v5, :cond_e

    sget-object v5, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->isDiscardOversizedAdsEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 64
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    move-object v0, v6

    :cond_8
    check-cast v0, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getDetails()Ljava/util/Map;

    move-result-object v6

    .line 66
    :cond_9
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v0

    .line 67
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result v5

    const/4 v8, -0x1

    if-eqz v6, :cond_a

    const-string v9, "banner_width_dips"

    .line 69
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_5

    :cond_a
    move v9, v8

    :goto_5
    if-eqz v6, :cond_b

    const-string v7, "banner_height_dips"

    .line 70
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_b

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_b
    if-lez v9, :cond_c

    if-gt v9, v0, :cond_d

    :cond_c
    if-lez v8, :cond_4

    if-le v8, v5, :cond_4

    .line 75
    :cond_d
    sget-object v6, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "\n                        Loading bid FAILED for Chartboost placement "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getAdIdentifier()Lcom/chartboost/heliumsdk/domain/AdIdentifier;

    move-result-object v12

    .line 76
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " due to oversized ad\n                        Requested size: ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")\n                        Returned size: ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")\n                        "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v6, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->incrementActiveBid()I

    .line 84
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Bids;->getActiveBid()Lcom/chartboost/heliumsdk/domain/Bid;

    move-result-object v12

    goto/16 :goto_3

    :cond_e
    return-object v0

    .line 90
    :cond_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_WATERFALL_EXHAUSTED_NO_FILL:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
