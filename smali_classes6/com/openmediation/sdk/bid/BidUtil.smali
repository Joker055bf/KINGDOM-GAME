.class public final Lcom/openmediation/sdk/bid/BidUtil;
.super Ljava/lang/Object;


# static fields
.field private static final AUCTION_LOSE:Ljava/lang/String; = "${AUCTION_LOSS}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeBidInitInfo(Lcom/openmediation/sdk/utils/model/Configurations;I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/Configurations;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Configurations;->getMs()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/model/Mediation;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Mediation;->getK()Ljava/lang/String;

    move-result-object p0

    const-string p1, "app_key"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static makeBidRequestInfo(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;ILcom/openmediation/sdk/banner/AdSize;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            "I",
            "Lcom/openmediation/sdk/banner/AdSize;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "om_placement_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getAppKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "app_key"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "placement_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ad_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p0, "banner_size"

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 3

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->isBid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x2717

    const-string v0, "Notify lose failed: instance response is null"

    invoke-static {p0, p1, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/openmediation/sdk/bid/BidResponse;->getLurl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/bid/BidResponse;->setNotified(Z)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/bid/BidManager;->notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_0

    :cond_2
    const-string v0, "${AUCTION_LOSS}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/openmediation/sdk/bid/BidManager;->notifyLose(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidResponse(Lcom/openmediation/sdk/bid/BidResponse;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static notifyWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->isBid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getBidResponse()Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x2716

    const-string v1, "Notify win failed: instance response is null"

    invoke-static {p0, v0, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/openmediation/sdk/bid/BidResponse;->getNurl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/bid/BidResponse;->setNotified(Z)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/bid/BidManager;->notifyWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager;->getInstance()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/bid/BidManager;->notifyWin(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    :cond_3
    :goto_0
    return-void
.end method
